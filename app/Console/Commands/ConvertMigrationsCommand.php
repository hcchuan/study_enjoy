<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputArgument;

class ConvertMigrationsCommand2 extends Command {

    /**
     * The console command name.
     *
     * @var string
     */
    protected $signature = 'convert:migrations {database} {--ignore=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Converts an existing MySQL database to migrations.';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $ignoreInput = str_replace(' ', '', $this->option('ignore'));
        $ignoreInput = explode(',', $ignoreInput);
        $migrate = new SqlMigrations;
        $migrate->ignore($ignoreInput);
        $migrate->convert($this->argument('database'));
        $migrate->write();
        $this->info('Migration Created Successfully');
    }
}

//------------------------------------ConvertMigrationsServiceProvider------------------------------
use Illuminate\Support\ServiceProvider;

class ConvertMigrationsServiceProvider extends ServiceProvider {

    /**
     * Indicates if loading of the provider is deferred.
     *
     * @var bool
     */
    protected $defer = false;

    /**
     * Boot the service provider.
     *
     * @return void
     */
    public function boot()
    {
    }

    /**
     * Register the service provider.
     *
     * @return void
     */
    public function register()
    {
        $this->app['artisan.convert.migrations'] = $this->app->share(function($app) {
            return new ConvertMigrationsCommand;
        });

        $this->commands('artisan.convert.migrations');
    }

    /**
     * Get the services provided by the provider.
     *
     * @return array
     */
    public function provides()
    {
        return array();
    }

}

//------------------------------------SqlMigrations------------------------------
use DB;
use Illuminate\Support\Str;

class SqlMigrations
{
    private static $ignore = array('migrations');
    private static $database = "";
    private static $migrations = false;
    private static $schema = array();
    private static $selects = array('column_name as Field', 'column_type as Type', 'is_nullable as Null', 'column_key as Key', 'column_default as Default', 'extra as Extra', 'data_type as Data_Type');
    private static $instance;
    private static $up = "";
    private static $down = "";

    private static function getTables()
    {
        return DB::select('SELECT table_name FROM information_schema.tables WHERE Table_Type="'."BASE TABLE".'" and table_schema="' . self::$database . '"');
    }

    private static function getTableDescribes($table)
    {
        return DB::table('information_schema.columns')
            ->where('table_schema', '=', self::$database)
            ->where('table_name', '=', $table)
            ->get(self::$selects);
    }

    private static function getForeignTables()
    {
        return DB::table('information_schema.KEY_COLUMN_USAGE')
            ->where('CONSTRAINT_SCHEMA', '=', self::$database)
            ->where('REFERENCED_TABLE_SCHEMA', '=', self::$database)
            ->select('TABLE_NAME')->distinct()
            ->get();
    }

    private static function getForeigns($table)
    {
        return DB::table('information_schema.KEY_COLUMN_USAGE')
            ->where('CONSTRAINT_SCHEMA', '=', self::$database)
            ->where('REFERENCED_TABLE_SCHEMA', '=', self::$database)
            ->where('TABLE_NAME', '=', $table)
            ->select('COLUMN_NAME', 'REFERENCED_TABLE_NAME', 'REFERENCED_COLUMN_NAME')
            ->get();
    }

    private static function compileSchema()
    {
        $upSchema = "";
        $downSchema = "";
        $newSchema = "";
        foreach (self::$schema as $name => $values) {
            if (in_array($name, self::$ignore)) {
                continue;
            }
            $upSchema .= "
//
// NOTE -- {$name}
// --------------------------------------------------
 
{$values['up']}";
            if ( $values['down'] !== "" ) {
                $downSchema .= "
{$values['down']}";
            }
        }

        $schema = "<?php
 
//
// NOTE Migration Created: " . date("Y-m-d H:i:s") . "
// --------------------------------------------------
 
class Create" . str_replace('_', '', Str::title(self::$database)) . "Database {
//
// NOTE - Make changes to the database.
// --------------------------------------------------
 
public function up()
{
" . $upSchema . "
" . self::$up . "
}
 
//
// NOTE - Revert the changes to the database.
// --------------------------------------------------
 
public function down()
{
" . $downSchema . "
" . self::$down . "
}
}";

        return $schema;
    }

    public function up($up)
    {
        self::$up = $up;
        return self::$instance;
    }

    public function down($down)
    {
        self::$down = $down;
        return self::$instance;
    }

    public function ignore($tables)
    {
        self::$ignore = array_merge($tables, self::$ignore);
        return self::$instance;
    }

    public function migrations()
    {
        self::$migrations = true;
        return self::$instance;
    }

    public function write()
    {
        $schema = self::compileSchema();
        $filename = date('Y_m_d_His') . "_create_" . self::$database . "_database.php";
        $path = app()->databasePath().'/migrations/';
        file_put_contents($path.$filename, $schema);
    }

    public function get()
    {
        return self::compileSchema();
    }

    public function convert($database)
    {
        $downStack = array();
        self::$instance = new self();
        self::$database = $database;
        $table_headers = array('Field', 'Type', 'Null', 'Key', 'Default', 'Extra');
        $tables = self::getTables();
        foreach ($tables as $key => $value) {
            if(isset($value->table_name))
            {
                $table_name=$value->table_name;
            }
            else if(isset($value->TABLE_NAME))
            {
                $table_name=$value->TABLE_NAME;
            }
            if (in_array($table_name, self::$ignore)) {
                continue;
            }

            $downStack[] = $table_name;
            $down = "Schema::drop('{$table_name}');";
            $up = "Schema::create('{$table_name}', function($" . "table) {\n";
            $tableDescribes = self::getTableDescribes($table_name);
            foreach ($tableDescribes as $values) {
                $method = "";
                $para = strpos($values->Type, '(');
                $type = $para > -1 ? substr($values->Type, 0, $para) : $values->Type;
                $numbers = "";
                $nullable = $values->Null == "NO" ? "" : "->nullable()";
                $default = empty($values->Default) ? "" : "->default(\"{$values->Default}\")";
                $unsigned = strpos($values->Type, "unsigned") === false ? '' : '->unsigned()';
                $unique = $values->Key == 'UNI' ? "->unique()" : "";
                $choices = '';
                switch ($type) {
                    case 'enum':
                        $method = 'enum';
                        $choices = preg_replace('/enum/', 'array', $values->Type);
                        $choices = ", $choices";
                        break;
                    case 'int' :
                        $method = 'unsignedInteger';
                        break;
                    case 'bigint' :
                        $method = 'bigInteger';
                        break;
                    case 'samllint' :
                        $method = 'smallInteger';
                        break;
                    case 'char' :
                    case 'varchar' :
                        $para = strpos($values->Type, '(');
                        $numbers = ", " . substr($values->Type, $para + 1, -1);
                        $method = 'string';
                        break;
                    case 'float' :
                        $method = 'float';
                        break;
                    case 'decimal' :
                        $para = strpos($values->Type, '(');
                        $numbers = ", " . substr($values->Type, $para + 1, -1);
                        $method = 'decimal';
                        break;
                    case 'tinyint' :
                        if ($values->Type == 'tinyint(1)') {
                            $method = 'boolean';
                        } else {
                            $method = 'tinyInteger';
                        }
                        break;
                    case 'date':
                        $method = 'date';
                        break;
                    case 'timestamp' :
                        $method = 'timestamp';
                        break;
                    case 'datetime' :
                        $method = 'dateTime';
                        break;
                    case 'mediumtext' :
                        $method = 'mediumtext';
                        break;
                    case 'text' :
                        $method = 'text';
                        break;
                }
                if ($values->Key == 'PRI') {
                    $method = 'increments';
                }
                $up .= " $" . "table->{$method}('{$values->Field}'{$choices}{$numbers}){$nullable}{$default}{$unsigned}{$unique};\n";
            }

            $up .= " });\n\n";
            self::$schema[$table_name] = array(
                'up' => $up,
                'down' => $down
            );
        }


        // add foreign constraints, if any
        $tableForeigns = self::getForeignTables();
        if (sizeof($tableForeigns) !== 0) {
            foreach ($tableForeigns as $key => $value) {
                $up = "Schema::table('{$value->TABLE_NAME}', function($" . "table) {\n";
                $foreign = self::getForeigns($value->TABLE_NAME);
                foreach ($foreign as $k => $v) {
                    $up .= " $" . "table->foreign('{$v->COLUMN_NAME}')->references('{$v->REFERENCED_COLUMN_NAME}')->on('{$v->REFERENCED_TABLE_NAME}');\n";
                }
                $up .= " });\n\n";
                self::$schema[$value->TABLE_NAME . '_foreign'] = array(
                    'up' => $up,
                    'down' => ( ! in_array($value->TABLE_NAME, $downStack) ) ? $down : "",
                );
            }
        }

        return self::$instance;
    }
}