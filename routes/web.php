<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/', [HomeController::class, 'index'])->name('homepage');
Route::get('/ex', [HomeController::class, 'exchange'])->name('ex');
Route::get('/update', [HomeController::class, 'update'])->middleware('auth')->name('update');

Route::get('/login', function () {
    if (Auth::check()) {
        return redirect('/');
    } else {
        // Redirect to login page if user is not logged in
        // return view('auth.login');
        return redirect('/admin');
    }
})->name('login');