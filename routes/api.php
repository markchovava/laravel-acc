<?php


use App\Http\Controllers\CountryController;
use App\Http\Controllers\CountryOpportunityController;
use App\Http\Controllers\OpportunityController;
use App\Http\Controllers\OpportunityImageController;
use App\Http\Controllers\OpportunitySectorController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SectorController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['middleware' => ['auth:sanctum']], function() {
 
    /* COUNTRY */
    Route::prefix('country')->group(function() {
        Route::get('/', [CountryController::class, 'index']);
        Route::post('/', [CountryController::class, 'store']);
        Route::get('/{id}', [CountryController::class, 'view']);
        Route::post('/{id}', [CountryController::class, 'update']);
        Route::delete('/{id}', [CountryController::class, 'delete']);
    });
    Route::get('/country-view-by-slug', [CountryController::class, 'viewBySlug']);
    Route::get('/country-all', [CountryController::class, 'indexAll']);

    Route::get('/country-opportunity', [CountryOpportunityController::class, 'indexOpportunityByCountry']);
    Route::get('/country-opportunity-sector', [CountryOpportunityController::class, 'indexOpportunityByCountrySector']);
    
    /* USER */
    Route::prefix('user')->group(function() {
        Route::get('/', [UserController::class, 'index']);
        Route::post('/', [UserController::class, 'store']);
        Route::get('/{id}', [UserController::class, 'view']);
        Route::post('/{id}', [UserController::class, 'update']);
        Route::delete('/{id}', [UserController::class, 'delete']);
    });
    
    /* OPPORTUNITY */
    Route::prefix('opportunity')->group(function() {
        Route::get('/', [OpportunityController::class, 'index']);
        Route::post('/', [OpportunityController::class, 'store']);
        Route::get('/{id}', [OpportunityController::class, 'view']);
        Route::post('/{id}', [OpportunityController::class, 'update']);
        Route::delete('/{id}', [OpportunityController::class, 'delete']);
    });
    Route::get('/opportunity-view-by-slug', [OpportunityController::class, 'viewBySlug']);
    Route::post('/opportunity-status', [OpportunityController::class, 'statusUpdate']);
    
    /* OPPORTUNITY IMAGES */
    Route::prefix('opportunity-image')->group(function() {
        Route::delete('/{id}', [OpportunityImageController::class, 'delete']);
    });
    
    /* OPPORTUNITY SECTOR */
    Route::prefix('opportunity-sector')->group(function() {
        Route::get('/', [OpportunitySectorController::class, 'index']);
        Route::post('/', [OpportunitySectorController::class, 'store']);
        Route::get('/{id}', [OpportunitySectorController::class, 'view']);
        Route::delete('/{id}', [OpportunitySectorController::class, 'delete']);
    });
    Route::get('/opportunity-sector-all-by-opportunity-id/{id}', [OpportunitySectorController::class, 'indexByOpportunityId']);

    /* ROLE */
    Route::prefix('role')->group(function() {
        Route::get('/', [RoleController::class, 'index']);
        Route::post('/', [RoleController::class, 'store']);
        Route::get('/{id}', [RoleController::class, 'view']);
        Route::post('/{id}', [RoleController::class, 'update']);
        Route::delete('/{id}', [RoleController::class, 'delete']);
    });
    Route::get('/role-view-by-slug', [RoleController::class, 'viewBySlug']);
    Route::get('/role-all', [RoleController::class, 'indexAll']);

    /* SECTOR */
    Route::prefix('sector')->group(function() {
        Route::get('/', [SectorController::class, 'index']);
        Route::post('/', [SectorController::class, 'store']);
        Route::get('/{id}', [SectorController::class, 'view']);
        Route::post('/{id}', [SectorController::class, 'update']);
        Route::delete('/{id}', [SectorController::class, 'delete']);
    });
    Route::get('/sector-view-by-slug', [SectorController::class, 'viewBySlug']);
    Route::get('/sector-all', [SectorController::class, 'indexAll']);
    




});
