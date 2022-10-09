<?php
use think\facade\Route;


Route::group('sysKeyworlds', function(){
    Route::get('list','SysKeyworlds/getPageList');
    Route::get('detail','SysKeyworlds/detail');
    Route::post('add','SysKeyworlds/add');
    Route::put('edit','SysKeyworlds/edit');
    Route::delete('delete','SysKeyworlds/delete');
})->allowCrossDomain();
