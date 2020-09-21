<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('articles', function (Blueprint $table) {
            $table->/*字段类型 主键，默认11*/increments('uid')->comment('用户id');//字段和备注
            $table->/*字段类型 varchar 30*/string('username','60')->/*唯一索引*/unique()->comment('用户名称');
            $table->/*字段类型 varchar 30*/string('email','30')->unique()->comment('用户邮箱');
            $table->ipAddress('ipAddress')->comment('ip地址');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('articles');
    }
}
