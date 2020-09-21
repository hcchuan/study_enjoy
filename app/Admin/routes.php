<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->get('/clear_cache', 'HomeController@clear_cache')->name('admin.home');
    $router->get('/lesson/district', 'LessonController@district');
    $router->get('/lesson/district?q={id}', 'LessonController@district');


    $router->resource('/lesson',LessonController::class);
    $router->resource('lesson_type', LessonTypeController::class);

});
