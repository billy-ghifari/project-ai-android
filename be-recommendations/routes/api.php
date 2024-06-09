<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\McrsController;
use App\Http\Controllers\Api\PlatformController;
use App\Models\User;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);


Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/user', function (Request $request) {
        return User::select('uuid')->get();
    });

    Route::get('/platforms', [PlatformController::class, 'index']);
    Route::get('/platforms/{uuid}', [PlatformController::class, 'show']);
    
    Route::get('/get-data', [McrsController::class, 'index']);
    Route::post('/add-rating', [McrsController::class, 'store']);
});
