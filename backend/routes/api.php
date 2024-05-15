<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiCategoryController;
use App\Http\Controllers\ApiProductController;
use App\Http\Controllers\ApiBrandController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/categories', [ApiCategoryController::class, 'get']);
Route::post('/upload/image', [ApiCategoryController::class, 'uploadImage']);
Route::post('/categories/properties/{id}', [ApiCategoryController::class, 'getProperties']);
Route::prefix('products')->group(function () {
    Route::post('/', [ApiProductController::class, 'store']);
});

Route::prefix('brands')->group(function () {
    Route::get('/', [ApiBrandController::class, 'get']);
    Route::post('/', [ApiBrandController::class, 'store']);
});
