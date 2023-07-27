<?php

use App\Http\Controllers\admin\AdminLoginController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CardController;
use App\Http\Controllers\admin\HomeController;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

use App\Http\Controllers\user\AuthController;
use App\Http\Controllers\user\userHomeController;;

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


Route::group(['middleware' => 'guest'], function () {
    Route::get('/register', [AuthController::class, 'register'])->name('user.register');
    Route::post('/register', [AuthController::class, 'registerPost'])->name('user.register');
    Route::get('/login', [AuthController::class, 'login'])->name('user.login');
    Route::post('/login', [AuthController::class, 'loginPost'])->name('user.login');
});
Route::group(['middleware' => 'auth'], function () {
    Route::get('/home', [userHomeController::class, 'index'])->name('user.home');
    Route::get('/logout', [AuthController::class, 'logout'])->name('user.logout');
    Route::get('/user/products', [ProductController::class, 'index'])->name('userproducts.index');
    Route::get('/cards/index', [CardController::class, 'userindex'])->name('usercards.index');

    Route::post('/cards/add', [CardController::class, 'add'])->name('cards.add');
    
});

Route::group(['prefix' => 'admin'], function () {
    Route::group(['middleware' => 'admin.guest'], function () {
        Route::get('/login', [AdminLoginController::class, 'index'])->name('admin.login');
        Route::post('/authenticate', [AdminLoginController::class, 'authenticate'])->name('admin.authenticate');
    });

    Route::group(['middleware' => 'admin.auth'], function () {
        Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.dashboard');
        

        // product routes
        Route::get('/products/index', [ProductController::class, 'index'])->name('products.index');
        Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');
        Route::post('/products/store', [ProductController::class, 'store'])->name('products.store');
        Route::get('/products/{product}/edit', [ProductController::class, 'edit'])->name('products.edit');
        Route::put('/products/{product}', [ProductController::class, 'update'])->name('products.update');
        Route::delete('/products/{product}', [ProductController::class, 'delete'])->name('products.delete');


        Route::get('/cards/index', [CardController::class, 'index'])->name('cards.index');


        Route::get('/logout', [HomeController::class, 'logout'])->name('admin.logout');


        Route::get('/getSlug', function (Request $request) {
            if (!empty($request->title)) {
                $slug = Str::slug($request->title);
            }
            return response()->json([
                'status' => true,
                'slug' => $slug
            ]);
        })->name('getSlug');
    });
});
