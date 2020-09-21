<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models;

class ArticleController extends Controller
{
    //查询列表
    public function get_list()
    {
        return \App\Models\Article::all();
    }

   //根据uid查询详情
    public function get_detail($uid)
    {
        return \App\Models\Article::where('uid',$uid)->first();
        //或
        //return \App\Models\Article::where(['uid'=>$uid])->first();
    }

    //添加
    public function add()
    {
        //客户端用post传输username、email、ipAddress 三个参数
        //exit(json_encode($_POST));//{"username":"aaa","email":"aaa@baidu.com","ipAddress":"127.0.0.2"}

        $article = new \App\Models\Article;

        $article->username = $_POST['username'];
        $article->email = $_POST['email'];
        $article->ipAddress = $_POST['ipAddress'];

        $result=$article->save();
        //$result为bool型，而laravel要求响应值必须是string，故要做处理
        //$article->id是新插入的主键id（不管主键名是否是id，例如主键名是uid时，仍然用$article->id获取）
        return $result?'成功'.$article->id:'失败';
    }

    /**修改
     * http://la.local.com/api/article/update
     */
    public function update()
    {
        $article = new \App\Models\Article;
        $result=$article::where('uid', $_POST['uid'])
            //->where('email',$_POST['email'])//多条件
            ->update(['username' => $_POST['username']]);

        return $result?'成功':'失败';
    }

    /**删除
     * http://la.local.com/api/article/delete/56
     */
    public function delete($uid)
    {
        $article = new \App\Models\Article;
        //$result=$article::destroy($uid);//按主键删除(主键名必须是id)
        //$article::destroy([1, 2, 3]);//按主键批量删除(主键名必须是id)
        $result=$article::where('uid',$uid)->delete();//自定义条件批量删除

        return $result?'成功':'失败';
    }

    /**http://la.local.com/login/test
     */
    public function test()
    {
        exit(bcrypt('admin'));
    }
}
