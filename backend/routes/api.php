<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiCategoryController;
use App\Http\Controllers\ApiProductController;
use App\Http\Controllers\ApiBrandController;
use App\Http\Controllers\ApiSizeController;
use App\Http\Controllers\ApiMenuController;

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
Route::prefix('menus')->group(function () {
    Route::get('/', [ApiMenuController::class, 'getMenu']);
});

Route::prefix('products')->group(function () {
    Route::post('/', [ApiProductController::class, 'store']);
});

Route::prefix('brands')->group(function () {
    Route::get('/', [ApiBrandController::class, 'get']);
    Route::post('/', [ApiBrandController::class, 'store']);
});

Route::prefix('sizes')->group(function () {
    Route::get('/', [ApiSizeController::class, 'get']);
    Route::post('/', [ApiSizeController::class, 'store']);
});
