<?php

use Illuminate\Http\Request;

Route::get('/posts', 'PostsController@index');
Route::get('/posts/get/{id}', 'PostsController@get');
Route::post('/posts/create', 'PostsController@create');
Route::post('/posts/update', 'PostsController@update');
Route::post('/posts/soft-delete', 'PostsController@softDelete');
Route::post('/posts/restore', 'PostsController@restore');
Route::post('/posts/force-delete', 'PostsController@forceDelete');
Route::post('/posts/publish', 'PostsController@publish');

Route::get('/category', 'CategoryController@index');
Route::get('/category/get/{id}', 'CategoryController@get');
Route::post('/category/create', 'CategoryController@create');
Route::post('/category/update', 'CategoryController@update');
Route::post('/category/soft-delete', 'CategoryController@softDelete');
Route::post('/category/restore', 'CategoryController@restore');
Route::post('/category/force-delete', 'CategoryController@forceDelete');

Route::get('/posts-group', 'PostsGroupController@index');
Route::get('/posts-group/get/{id}', 'PostsGroupController@get');
Route::post('/posts-group/create', 'PostsGroupController@create');
Route::post('/posts-group/update', 'PostsGroupController@update');
Route::post('/posts-group/soft-delete', 'PostsGroupController@softDelete');
Route::post('/posts-group/restore', 'PostsGroupController@restore');
Route::post('/posts-group/force-delete', 'PostsGroupController@forceDelete');

Route::get('/projects', 'ProjectsController@index');
Route::get('/projects/get/{id}', 'ProjectsController@get');
Route::post('/projects/create', 'ProjectsController@create');
Route::post('/projects/update', 'ProjectsController@update');
Route::post('/projects/delete', 'ProjectsController@delete');

Route::get('/publics', 'PublicsController@index');
Route::get('/publics/get/{id}', 'PublicsController@get');
Route::post('/publics/create', 'PublicsController@create');
Route::post('/publics/update', 'PublicsController@update');
Route::post('/publics/delete', 'PublicsController@delete');

Route::get('/pages', 'PagesController@index');
Route::get('/pages/get/{id}', 'PagesController@get');
Route::post('/pages/create', 'PagesController@create');
Route::post('/pages/update', 'PagesController@update');
Route::post('/pages/delete', 'PagesController@delete');

Route::get('/group', 'GroupController@index');
Route::get('/group/get/{id}', 'GroupController@get');
Route::post('/group/create', 'GroupController@create');
Route::post('/group/update', 'GroupController@update');
Route::post('/group/delete', 'GroupController@delete');

Route::get('/section', 'SectionController@index');
Route::get('/section/get/{id}', 'SectionController@get');
Route::get('/section/get-by-page/{id}', 'SectionController@getByPage');
Route::post('/section/create', 'SectionController@create');
Route::post('/section/update', 'SectionController@update');
Route::post('/section/delete', 'SectionController@delete');
Route::post('/section/update-sequence', 'SectionController@updateSequence');

Route::get('/grid', 'GridController@index');
Route::get('/grid/get/{id}', 'GridController@get');
Route::get('/grid/get-by-section/{id}', 'GridController@getBySection');
Route::post('/grid/create', 'GridController@create');
Route::post('/grid/update', 'GridController@update');
Route::post('/grid/delete', 'GridController@delete');
Route::post('/grid/update-sequence', 'GridController@updateSequence');

Route::get('/component', 'ComponentController@index');
Route::get('/component/get/{id}', 'ComponentController@get');
Route::get('/component/get-by-grid/{id}', 'ComponentController@getByGrid');
Route::post('/component/create', 'ComponentController@create');
Route::post('/component/update', 'ComponentController@update');
Route::post('/component/delete', 'ComponentController@delete');
Route::post('/component/update-sequence', 'ComponentController@updateSequence');

Route::post('/css/update', 'CssController@update');

Route::middleware('auth:api')->get('/user', function (Request $request) {
    // return $request->user();
});
