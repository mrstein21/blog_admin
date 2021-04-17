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
    return view('auth.login');
});

Auth::routes([
    "register"=>false,
    'reset'=>false
]);


Route::group(['middleware' => ['auth']], function() {



Route::get('/home', 'HomeController@index')->name('home');


Route::get('/article/add', 'ArticleController@ViewFormAddArticle')->name('article.view_add');
Route::post('/article/add', 'ArticleController@PostAddArticle')->name('article.add');
Route::get('/article', 'ArticleController@ViewListArticle')->name('article.list');
Route::get('/datatable/article', 'ArticleController@ArticleDataTable')->name('article.datatable');
Route::get('/article/{id}', 'ArticleController@ViewFormEditArticle')->name('article.view_edit');
Route::patch('/article/{id}', 'ArticleController@PostEditArticle')->name('article.edit');
Route::delete('/article/delete/{id}', 'ArticleController@PostDeleteArticle')->name('article.delete');


Route::get('/video/add', 'VideoController@ViewFormAddVideo')->name('video.view_add');
Route::post('/video/add', 'VideoController@PostAddVideo')->name('video.add');
Route::get('/video', 'VideoController@ViewListVideo')->name('video.list');
Route::get('/datatable/video', 'VideoController@VideoDataTable')->name('video.datatable');
Route::get('/video/{id}', 'VideoController@ViewFormEditVideo')->name('video.view_edit');
Route::patch('/video/{id}', 'VideoController@PostEditVideo')->name('video.edit');
Route::delete('/video/delete/{id}', 'VideoController@PostDeleteVideo')->name('video.delete');

Route::get('/datatable/category', 'CategoryController@CategoryDataTable')->name('category.datatable');
Route::get('/category', 'CategoryController@ViewListCategory')->name('category.list');
Route::get('/category/add', 'CategoryController@ViewFormAddCategory')->name('category.view_add');
Route::post('/category/add', 'CategoryController@PostAddCategory')->name('category.add');
Route::get('/category/{id}', 'CategoryController@ViewFormEditCategory')->name('category.view_edit');
Route::patch('/category/{id}', 'CategoryController@PostEditCategory')->name('category.edit');
Route::delete('/category/delete/{id}', 'CategoryController@PostDeleteCategory')->name('category.delete');


Route::get('/datatable/table', 'TableController@TableDataTable')->name('table.datatable');
Route::get('/table', 'TableController@ViewListTable')->name('table.list');
Route::get('/table/add', 'TableController@ViewFormAddTable')->name('table.view_add');
Route::post('/table/add', 'TableController@PostAddTable')->name('table.add');
Route::get('/table/{id}', 'TableController@ViewFormEditTable')->name('table.view_edit');
Route::patch('/table/{id}', 'TableController@PostEditTable')->name('table.edit');
Route::delete('/table/delete/{id}', 'TableController@PostDeleteTable')->name('table.delete');

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




    //...













