<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\LevelController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    //Category Routes
    Route::get('/admin/categories', [CategoryController::class, 'index'])->name('category.index');
    Route::get('/admin/category/create', [CategoryController::class, 'create'])->name('category.create');
    Route::post('/admin/category/store', [CategoryController::class, 'store'])->name('category.store');

    Route::get('/admin/category/{id}', [CategoryController::class, 'show'])->name('category.view');

    Route::get('/admin/category/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::post('/admin/category/update/{id}', [CategoryController::class, 'update'])->name('category.update');

    Route::delete('/admin/category/delete/{id}', [CategoryController::class, 'destroy'])->name('category.destroy');


    //Image Routes
    Route::get('/admin/levels', [LevelController::class, 'index'])->name('level.index');
    Route::get('/admin/level/create', [LevelController::class, 'create'])->name('level.create');
    Route::post('/admin/level/store', [LevelController::class, 'store'])->name('level.store');
    Route::get('/admin/level/{id}', [LevelController::class, 'show'])->name('level.view');
    Route::get('/admin/level/edit/{id}', [LevelController::class, 'edit'])->name('level.edit');
    Route::post('/admin/level/update/{id}', [LevelController::class, 'update'])->name('level.update');
    Route::delete('/admin/level/delete/{id}', [LevelController::class, 'destroy'])->name('level.destroy');
});


require __DIR__.'/auth.php';
