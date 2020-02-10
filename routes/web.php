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

Route::get('/{segment}', 'IntepreterController@index')->name('home');
Route::get('/{segment}/{segment2}', 'IntepreterController@index')->name('home');
Route::get('/{segment}/{segment2}/{segment3}', 'IntepreterController@index')->name('home');
Route::get('/{segment}/{segment2}/{segment3}/{segment4}', 'IntepreterController@index')->name('home');
Route::get('/{segment}/{segment2}/{segment3}/{segment4}/{segment5}', 'IntepreterController@index')->name('home');

Route::get('/administrator/content-management', 'Administrator\ContentManagementController@index');
Route::get('/administrator/content-management/project/new', 'Administrator\ContentManagement\ProjectController@new');
Route::post('/administrator/content-management/project/new', 'Administrator\ContentManagement\ProjectController@create');
Route::get('/administrator/content-management/project/{i}', 'Administrator\ContentManagement\ProjectController@view');
Route::get('/administrator/content-management/publics/{i}/view/{j}', 'Administrator\ContentManagement\PublicController@view');
Route::get('/administrator/content-management/publics/{i}/page/{j}/add', 'Administrator\ContentManagement\PageController@add');

Route::get('/administrator/content-management/publics/{i}/add', 'Administrator\ContentManagement\PublicController@add');

Route::get('/administrator/content-management/groups/add', 'Administrator\ContentManagement\GroupsController@add');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/api/projects', 'Api\ProjectsController@index');
Route::get('/api/projects/get/{id}', 'Api\ProjectsController@get');
Route::post('/api/projects/create', 'Api\ProjectsController@create');
Route::post('/api/projects/update', 'Api\ProjectsController@update');
Route::post('/api/projects/delete', 'Api\ProjectsController@delete');

Route::get('/api/publics', 'Api\PublicsController@index');
Route::get('/api/publics/get/{id}', 'Api\PublicsController@get');
Route::post('/api/publics/create', 'Api\PublicsController@create');
Route::post('/api/publics/update', 'Api\PublicsController@update');
Route::post('/api/publics/delete', 'Api\PublicsController@delete');

Route::get('/api/pages', 'Api\PagesController@index');
Route::get('/api/pages/get/{id}', 'Api\PagesController@get');
Route::post('/api/pages/create', 'Api\PagesController@create');
Route::post('/api/pages/update', 'Api\PagesController@update');
Route::post('/api/pages/delete', 'Api\PagesController@delete');

Route::get('/api/group', 'Api\GroupController@index');
Route::get('/api/group/get/{id}', 'Api\GroupController@get');
Route::post('/api/group/create', 'Api\GroupController@create');
Route::post('/api/group/update', 'Api\GroupController@update');
Route::post('/api/group/delete', 'Api\GroupController@delete');

Route::get('/api/section', 'Api\SectionController@index');
Route::get('/api/section/get/{id}', 'Api\SectionController@get');
Route::post('/api/section/create', 'Api\SectionController@create');
Route::post('/api/section/update', 'Api\SectionController@update');
Route::post('/api/section/delete', 'Api\SectionController@delete');
Route::post('/api/section/update-sequence', 'Api\SectionController@updateSequence');

Route::get('/api/grid', 'Api\GridController@index');
Route::get('/api/grid/get/{id}', 'Api\GridController@get');
Route::post('/api/grid/create', 'Api\GridController@create');
Route::post('/api/grid/update', 'Api\GridController@update');
Route::post('/api/grid/delete', 'Api\GridController@delete');
Route::post('/api/grid/update-sequence', 'Api\GridController@updateSequence');

Route::get('/api/component', 'Api\ComponentController@index');
Route::get('/api/component/get/{id}', 'Api\ComponentController@get');
Route::post('/api/component/create', 'Api\ComponentController@create');
Route::post('/api/component/update', 'Api\ComponentController@update');
Route::post('/api/component/delete', 'Api\ComponentController@delete');
Route::post('/api/component/update-sequence', 'Api\ComponentController@updateSequence');

