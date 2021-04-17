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

    ///api article
    Route::get("/article",'Api\ApiArticleController@LoadArticle');
    Route::get("/article/{id}",'Api\ApiArticleController@DetailArticle');
    Route::get("/article/tags/{tags}",'Api\ApiArticleController@SearchArticleByTags');
    Route::get("/article/search/{keyword}",'Api\ApiArticleController@SearchArticle');
    Route::post("/article/related",'Api\ApiArticleController@RelatedArticle');

    //...

     ///api video
     Route::get("/video",'Api\ApiVideoController@LoadVideo');
     Route::get("/video/{id}",'Api\ApiVideoController@DetailVideo');
     Route::get("/video/tags/{tags}",'Api\ApiVideoController@SearchVideoByTags');
     Route::get("/video/search/{keyword}",'Api\ApiVideoController@SearchVideo');
     Route::post("/video/related",'Api\ApiVideoController@RelatedVideo');
 
     //...

    ///api topic
    Route::get("/topic",'Api\ApiTopicController@LoadTopic');
    ///



