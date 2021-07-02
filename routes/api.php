<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\ArticlesController;

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

Route::get("article/list", [ArticlesController::class, "list"]);
Route::resource("article", ArticlesController::class);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});