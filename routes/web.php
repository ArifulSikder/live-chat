<?php

use App\Events\Message;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/message/{id}', [App\Http\Controllers\HomeController::class, 'getMessage'])->name('message');
Route::post('/message', [App\Http\Controllers\HomeController::class, 'sendMessage'])->name('message');
Route::post('send-message', function (Request $request) {
    $admin = '';
    $user_id = '';
    if (Auth::id() == $request->user_id) {
        $admin = $request->user_id;
    } else {
        $user_id = $request->user_id;
    }
    $user = User::findOrFail($request->user_id);
    event(new Message($user->name, $request->messeges, $user_id, $admin));
    return ['success' => true];
});
