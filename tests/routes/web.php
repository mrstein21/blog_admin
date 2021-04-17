<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::group(['middleware' => ['auth']], function() {

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/artikel/add', 'ArtikelController@view_add')->name('artikel.view_add');
Route::post('/artikel/add', 'ArtikelController@add')->name('artikel.add');
Route::get('/artikel/{id}/preview', 'ArtikelController@preview')->name('artikel.preview');
Route::get('/artikel', 'ArtikelController@loadArtikel')->name('artikel.list');
Route::get('/datatable/artikel', 'ArtikelController@ApiArtikelDataTable')->name('artikel.datatable');
Route::get('/artikel/{id}', 'ArtikelController@ViewEdit')->name('artikel.view_edit');
Route::patch('/artikel/{id}', 'ArtikelController@edit')->name('artikel.edit');
Route::delete('/artikel/delete/{id}', 'ArtikelController@delete')->name('artikel.delete');


Route::get('/datatable/topic', 'TopicController@ApiTopicDataTable')->name('topic.datatable');
Route::get('/topic', 'TopicController@View')->name('topic.list');
Route::get('/topic/add', 'TopicController@view_add')->name('topic.view_add');
Route::post('/topic/add', 'TopicController@add')->name('topic.add');
Route::get('/topic/{id}', 'TopicController@view_edit')->name('topic.view_edit');
Route::patch('/topic/{id}', 'TopicController@edit')->name('topic.edit');
Route::delete('/topic/delete/{id}', 'TopicController@delete')->name('topic.delete');

Route::get('/datatable/user', 'UserController@ApiUserDataTable')->name('user.datatable');
Route::get('/user', 'UserController@View')->name('user.list');
Route::get('/user/add', 'UserController@view_add')->name('user.view_add');
Route::post('/user/add', 'UserController@add')->name('user.add');
Route::get('/user/{id}', 'UserController@view_edit')->name('user.view_edit');
Route::patch('/user/{id}', 'UserController@edit')->name('user.edit');
Route::delete('/user/delete/{id}', 'UserController@delete')->name('user.delete');

Route::get('/datatable/role', 'RoleController@ApiRoleDataTable')->name('role.datatable');
Route::get('/role', 'RoleController@View')->name('role.list');
Route::get('/role/add', 'RoleController@view_add')->name('role.view_add');
Route::post('/role/add', 'RoleController@add')->name('role.add');
Route::get('/role/{id}', 'RoleController@view_edit')->name('role.view_edit');
Route::patch('/role/{id}', 'RoleController@edit')->name('role.edit');
Route::delete('/role/delete/{id}', 'RoleController@delete')->name('role.delete');

Route::get('/profile', 'ProfileController@view_update')->name('profile.view_update');
Route::patch('/profile/{id}', 'ProfileController@update')->name('profile.update');

});

Route::middleware('cors')->group(function(){
    Route::get('/api/artikel', 'ApiArtikelController@ApiLoadArtikel');
    Route::get('/api/artikel/all', 'ApiArtikelController@ApiLoadAllArtikel');
    Route::get('/api/artikel/filter/{tags}', 'ApiArtikelController@ApiSearchArtikelByTags');
    Route::get('/api/artikel/search/{keyword}', 'ApiArtikelController@ApiSearchArtikel');
    Route::get('/api/artikel/detail/{id}', 'ApiArtikelController@ApiDetailArtikel');
    Route::get('/api/topic', 'ApiTopicController@ApiLoadTopic');
});












