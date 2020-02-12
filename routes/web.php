<?php

Route::group([
    'prefix' => '{segment}',
    'where' => [
        'segment' => '^((?!api$).)*$'
    ]
], function(){

    Route::get('/', 'IntepreterController@index');
    Route::get('/{segment2}', 'IntepreterController@index');
    Route::get('/{segment2}/{segment3}', 'IntepreterController@index');
    Route::get('/{segment2}/{segment3}/{segment4}', 'IntepreterController@index');
    Route::get('/{segment2}/{segment3}/{segment4}/{segment5}', 'IntepreterController@index');
    
});

Route::get('/administrator/content-management', 'Administrator\ContentManagementController@index');
Route::get('/administrator/content-management/project/new', 'Administrator\ContentManagement\ProjectController@new');
Route::post('/administrator/content-management/project/new', 'Administrator\ContentManagement\ProjectController@create');
Route::get('/administrator/content-management/project/{i}', 'Administrator\ContentManagement\ProjectController@view');
Route::get('/administrator/content-management/publics/{i}/view/{j}', 'Administrator\ContentManagement\PublicController@view');
Route::get('/administrator/content-management/publics/{i}/page/{j}/add', 'Administrator\ContentManagement\PageController@add');

Route::get('/administrator/content-management/publics/{i}/add', 'Administrator\ContentManagement\PublicController@add');

Route::get('/administrator/content-management/groups/add', 'Administrator\ContentManagement\GroupsController@add');


Auth::routes();