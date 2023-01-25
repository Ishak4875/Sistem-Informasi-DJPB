<?php

use App\Http\Controllers\AnalisaController;
use App\Http\Controllers\BPSController;
use App\Http\Controllers\InstansiController;
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

Route::get('/', [InstansiController::class, 'index'])->name('instansi');
Route::get('/instansi/edit/{id_instansi}', [InstansiController::class, 'edit']);
Route::post('/instansi/update/{id_instansi}', [InstansiController::class, 'update']);
Route::get('/instansi/delete/{id_instansi}', [InstansiController::class, 'delete']);
Route::get('/instansi/search', [InstansiController::class, 'getKodeSatker']);
Route::get('/instansi/{id_instansi}',[BPSController::class,'getAllDataInstansi']);
Route::post('/instansi/lk/update/{id_instansi}',[BPSController::class,'updateLk']);
Route::get("/instansi/detail/{id_instansi}",[PegawaiController::class,'getDetailPegawai']);
Route::get("/instansi/pegawai/edit/{id_instansi}",[PegawaiController::class,'getDetailPegawai2']);
Route::post("/instansi/pegawai/update/{id_instansi}",[PegawaiController::class,'update']);
Route::get("/instansi/detail/analisisLK/{id_instansi}",[AnalisaController::class,'getSubSubAnalisaPertanyaan']);
Route::get("/instansi/detail/analisisLK/subpertanyaan/{id_instansi}/{id_sub_sub}",[AnalisaController::class,'getSubAnalisaPertanyaan']);
Route::get("/instansi/detail/analisisLK/pertanyaan/{id_instansi}/{id_sub}",[AnalisaController::class,'getAnalisaPertanyaan']);
Route::post("/instansi/update/analisisLK/{id_instansi}/{id_sub}/{id_jawaban}",[AnalisaController::class,'updateKondisiLK']);