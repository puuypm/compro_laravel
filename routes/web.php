<?php

use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/', [\App\Http\Controllers\HomeController::class, 'index']);

// Route::resource() : get, post, update, delete
Route::resource('latihan', \App\Http\Controllers\LatihanController::class);
Route::get('Penjumlahan', [\App\Http\Controllers\LatihanController::class, 'Penjumlahan'])->name('Penjumlahan');
Route::get('Pengurangan', [\App\Http\Controllers\LatihanController::class, 'Pengurangan'])->name('Pengurangan');
Route::get('Perkalian', [\App\Http\Controllers\LatihanController::class, 'Perkalian'])->name('Perkalian');
Route::get('Pembagian', [\App\Http\Controllers\LatihanController::class, 'Pembagian'])->name('Pembagian');
Route::post('store_penjumlahan', [\App\Http\Controllers\LatihanController::class, 'storePenjumlahan'])->name('store_penjumlahan');
Route::post('store_pengurangan', [\App\Http\Controllers\LatihanController::class, 'storePengurangan'])->name('store_pengurangan');
Route::post('store_perkalian', [\App\Http\Controllers\LatihanController::class, 'storePerkalian'])->name('store_perkalian');
Route::post('store_pembagian', [\App\Http\Controllers\LatihanController::class, 'storePembagian'])->name('store_pembagian');

Route::resource('home', \App\Http\Controllers\HomeController::class);

// admin disini
Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {
    Route::get('/', [\App\Http\Controllers\LoginController::class, 'index'])->name("login");
    Route::post('/', [LoginController::class, "loginPost"])->name("login.post");

    Route::middleware('auth')->group(function () {

        Route::resource('dashboard', \App\Http\Controllers\DashboardController::class);
        Route::resource('user', \App\Http\Controllers\UserController::class);
        Route::resource('profile', \App\Http\Controllers\ProfileController::class);
        Route::resource('experience', \App\Http\Controllers\ExperienceController::class);
        Route::resource('pendidikan', \App\Http\Controllers\PendidikanController::class);
        Route::resource('setting', \App\Http\Controllers\SettingController::class);

        Route::post('/logout', [LoginController::class, 'logout'])->name("logout");
    });
});
