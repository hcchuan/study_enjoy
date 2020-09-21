<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('article/get_list', 'ArticleController@get_list');
Route::get('article/{uid}', 'ArticleController@get_detail');
Route::post('article/add', 'ArticleController@add');
Route::post('article/update', 'ArticleController@update');
Route::get('article/delete/{uid}', 'ArticleController@delete');
