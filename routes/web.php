<?php

use App\Http\Controllers\BarangController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\KeluarController;
use App\Http\Controllers\LokasiController;
use App\Http\Controllers\MasukController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('login');
});

Route::get('/dashboard', function () {
    return view('dashboard.dashboard');
})->middleware('auth');

Route::resource('/dashboard-kategori', KategoriController::class)->middleware('auth');
Route::resource('/dashboard-lokasi', LokasiController::class)->middleware('auth');
Route::resource('/dashboard-supplier', SupplierController::class)->middleware('auth');
Route::resource('/dashboard-masuk', MasukController::class)->middleware('auth');
Route::resource('/dashboard-keluar', KeluarController::class)->middleware('auth');
Route::resource('/dashboard-barang', BarangController::class)->middleware('auth');
Route::resource('/dashboard-user', UserController::class)->middleware('auth');

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');
Route::get('/register', [RegisterController::class, 'index']);
Route::post('/register', [RegisterController::class, 'store'])->name('register.store');
