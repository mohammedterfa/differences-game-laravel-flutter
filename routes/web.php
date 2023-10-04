<?php

use App\Http\Controllers\Admin\CategoryController;
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

    Route::get('/admin/categories', [CategoryController::class, 'index'])->name('category.index');
    Route::get('/admin/category/create', [CategoryController::class, 'create'])->name('category.create');
    Route::post('/admin/category/store', [CategoryController::class, 'store'])->name('category.store');

    Route::get('/admin/category/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::post('/admin/category/update/{id}', [CategoryController::class, 'update'])->name('category.update');

});


require __DIR__.'/auth.php';
