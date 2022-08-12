<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = User::where('id', '!=', Auth::id())->get();
        return view('home', compact('users'));
    }

    public function getMessage(int $user_id)
    {

        $my_id = Auth::id();
        // dd($user_id, $my_id);
        // Get all message from selected user
        $messages = Message::where(function ($query) use ($user_id, $my_id) {
            $query->where('from', $user_id)->where('to', $my_id);
        })->orWhere(function ($query) use ($user_id, $my_id) {
            $query->where('from', $my_id)->where('to', $user_id);
        })->get();


        // $messages = Message::where('from', $user_id)->where('to', $my_id)
        //     ->orWhere('to', $user_id)->where('from', $my_id)
        //     ->get();
        // dd($messages);
        return view('messages.index', ['messages' => $messages]);
    }
}
