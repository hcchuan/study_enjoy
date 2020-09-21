<?php

use Illuminate\Database\Seeder;
use App\Models\Article;
class ArticlesTableSeeder extends Seeder
{
    public function run()
    {
        // Let's truncate our existing records to start from scratch.
        Article::truncate();
        $faker = \Faker\Factory::create();
        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 50; $i++) {
            Article::create([
                'username' => $faker->name.\Str::random(5),
                'email' =>  \Str::random(10).'@baidu.com',
                'ipAddress' => '127.0.0.1',
            ]);
        }
    }
}
