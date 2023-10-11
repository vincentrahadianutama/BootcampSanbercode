<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [HomeController::class, 'page']);

Route::get('/form', [HomeController::class, 'form']);

//Route::post('/sent', [HomeController::class, 'sent']);

Route::get('/index', [HomeController::class, 'layout.index']);

Route::post('/welcome', [HomeController::class, 'welcome']);