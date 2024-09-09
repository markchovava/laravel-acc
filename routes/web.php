<?php


use App\Http\Controllers\AuthController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\CountryOpportunityController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\MembershipController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\OpportunityController;
use App\Http\Controllers\OpportunitySectorController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SectorController;
use App\Http\Controllers\UserController;
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

Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

/* COUNTRY */
Route::prefix('country')->group(function() {
    Route::get('/', [CountryController::class, 'index']);
    Route::get('/{id}', [CountryController::class, 'view']);
});
Route::get('/country-view-by-slug', [CountryController::class, 'viewBySlug']);
Route::get('/country-all', [CountryController::class, 'indexAll']);

/* COUNTRY OPPORTUNITY */
Route::get('/country-opportunity', [CountryOpportunityController::class, 'indexOpportunityByCountry']);
Route::get('/country-sector-opportunity', [CountryOpportunityController::class, 'indexOpportunityByCountrySector']);


/* EVENT */
Route::prefix('event')->group(function() {
    Route::get('/', [EventController::class, 'index']);
    Route::get('/{id}', [EventController::class, 'view']);
});
Route::get('/event-by-num', [EventController::class, 'indexByNum']);


/* MEMBERSHIP */
Route::prefix('membership')->group(function() {
    Route::get('/', [MembershipController::class, 'index']);
    Route::get('/{id}', [MembershipController::class, 'view']);
});
Route::get('/membership-all', [MembershipController::class, 'indexAll']);
Route::get('/membership-by-slug', [MembershipController::class, 'viewBySlug']);
Route::get('/membership-by-num', [MembershipController::class, 'indexByNum']);


/* MEMBER ORDER */
Route::prefix('member-order')->group(function() {
    Route::post('/', [MembershipController::class, 'store']);
    Route::get('/{id}', [MembershipController::class, 'view']);
});

/* NEWS */
Route::prefix('news')->group(function() {
    Route::get('/', [NewsController::class, 'index']);
    Route::get('/{id}', [NewsController::class, 'view']);
});
Route::get('/news-by-num', [NewsController::class, 'indexByNum']);


/* OPPORTUNITY */
Route::prefix('opportunity')->group(function() {
    Route::get('/', [OpportunityController::class, 'index']);
    Route::get('/{id}', [OpportunityController::class, 'view']);
});
Route::get('/opportunity-view-by-slug', [OpportunityController::class, 'viewBySlug']);


/* OPPORTUNITY SECTOR */
Route::prefix('opportunity-sector')->group(function() {
    Route::get('/', [OpportunitySectorController::class, 'index']);
    Route::get('/{id}', [OpportunitySectorController::class, 'view']);
});    
Route::get('/opportunity-by-sector-slug', [OpportunitySectorController::class, 'indexOpportunityBySectorSlug']);


/* ROLE */
Route::prefix('role')->group(function() {
    Route::get('/', [RoleController::class, 'index']);
    Route::get('/{id}', [RoleController::class, 'view']);
});
Route::get('/role-view-by-slug', [RoleController::class, 'viewBySlug']);
Route::get('/role-all', [RoleController::class, 'indexAll']);


/* SECTOR */
Route::prefix('sector')->group(function() {
    Route::get('/', [SectorController::class, 'index']);
    Route::get('/{id}', [SectorController::class, 'view']);
});
Route::get('/sector-all', [SectorController::class, 'indexAll']);


/* USER */
Route::prefix('user')->group(function() {
    Route::get('/', [UserController::class, 'index']);
    Route::get('/{id}', [UserController::class, 'view']);
});
