<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\ArticlesController;
use App\Http\Controllers\AuteursController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\CoursController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PublicationsController;
use App\Http\Controllers\ResponseController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\SondageController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;

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

Route::group(['as' => 'elearning.'], function(){

    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/a-propos', [AboutController::class, 'index'])->name('about');
    Route::get('/sondage', [SondageController::class, 'index']);
    Route::get('recherche', [SearchController::class, 'search']);
    Route::resources([
        'contact' => ContactController::class,
        'cours' => CoursController::class
    ]);

});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/clear', function(){
         Artisan::call('cache:clear');
        Artisan::call('route:clear');
        Artisan::call('config:clear');
        Artisan::call('view:clear');
        dd('cleared');
});
