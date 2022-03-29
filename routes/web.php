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

Route::get('/test', function () {
    return "ITVDN Laravel test :)";
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/roles', function() {
    $user = \Illuminate\Support\Facades\Auth::user();

    return response()->json([
        'roles' => $user->roles
    ]);
});

Route::get('/admin', function() {
    return view('admin');
})->name('admin.post')/*->middleware('can:edit-posts')*/;

Route::resource('post', 'PostController');

Route::get('test-provider', 'TestController@testProvider');
Route::get('test-contract', 'TestController@testContract');
Route::get('test-package', 'TestController@testPackage');