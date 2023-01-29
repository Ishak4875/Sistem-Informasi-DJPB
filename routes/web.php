<?php

use App\Http\Controllers\AnalisaController;
use App\Http\Controllers\BPSController;
use App\Http\Controllers\InstansiController;
use App\Http\Controllers\PasswordController;
use App\Http\Controllers\PegawaiController;
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

Auth::routes();


Route::get('/', [InstansiController::class, 'index'])->name('instansi');
Route::get('/instansi/edit/{kode_satker}', [InstansiController::class, 'edit']);
Route::post('/instansi/update/{kode_satker}', [InstansiController::class, 'update']);
Route::get('/instansi/delete/{kode_satker}', [InstansiController::class, 'delete']);
Route::get('/instansi/search', [InstansiController::class, 'getKodeSatker']);
Route::get('/instansi/{kode_satker}',[BPSController::class,'getAllDataInstansi']);
Route::post('/instansi/lk/update/{kode_satker}',[BPSController::class,'updateLk']);
Route::get("/instansi/detail/{kode_satker}",[PegawaiController::class,'getDetailPegawai']);
Route::get("/instansi/pegawai/edit/{kode_satker}",[PegawaiController::class,'getDetailPegawai2']);
Route::post("/instansi/pegawai/update/{kode_satker}",[PegawaiController::class,'update']);
Route::get("/instansi/detail/analisisLK/{kode_satker}",[AnalisaController::class,'getSubSubAnalisaPertanyaan']);
Route::get("/instansi/detail/analisisLK/subpertanyaan/{kode_satker}/{id_sub_sub}",[AnalisaController::class,'getSubAnalisaPertanyaan']);
Route::get("/instansi/detail/analisisLK/pertanyaan/{kode_satker}/{id_sub}",[AnalisaController::class,'getAnalisaPertanyaan']);
Route::post("/instansi/update/analisisLK/{kode_satker}/{id_sub}/{id_jawaban}",[AnalisaController::class,'updateKondisiLK']);
Route::get("/changePassword",[PasswordController::class,'getView']);
Route::post("/changePassword/update",[PasswordController::class,'updatePasswrod']);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
