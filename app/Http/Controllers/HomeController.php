<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Events\MessageEvent;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Builder;

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
        // $users = DB::select("select users.id, users.name, users.avatar, users.email, count(is_read) as unread
        // from users LEFT  JOIN  messages ON users.id = messages.from and is_read = 0 and messages.to = " . Auth::id() . "
        // where users.id != " . Auth::id() . "
        // group by users.id, users.name, users.avatar, users.email");

        // $users = User::select('users.*', DB::raw('count(is_read) as unread'))
        // ->leftJoin('messages', 'messages.from', '=', 'users.id')
        // ->where('messages.is_read', 0)
        // ->where('messages.to', Auth::id())
        // ->where('users.id', '!=', Auth::id())
        // ->groupBy('users.id', 'users.name', 'users.avatar', 'users.email','users.last_seen')
        // ->get();


        // $users = User::leftJoin('messages', 'messages.from', 'users.id')
        //     ->select("messages.from","users.name","users.avatar","users.email","users.id")
        //     ->distinct()
        //     ->where('users.id','!=', Auth::id())
        //     ->get();

        // ->whereDoesntHave('donorInfo', function (Builder $query) use($ToDate, $fromDate){
        //     $query->whereBetween('donate_date', [ $ToDate, $fromDate]);
        // });
        $auth = Auth::id();

        $users = User::select('users.id', 'users.name') // Select required fields
        ->where('users.id', '!=', $auth)
        ->with(['messages' => function ($query) use ($auth) {
            $query->select('from', 'to', 'created_at')
                  ->where('to', $auth); // Filter messages where the authenticated user is the recipient
        }])
        ->join(DB::raw('(SELECT `from` as user_id, MAX(created_at) as latest_message
                          FROM messages
                          WHERE `to` = '.$auth.'
                          GROUP BY `from`) as latest_messages'),
               'users.id', '=', 'latest_messages.user_id')
        ->orderBy(DB::raw('CASE WHEN `users`.`id` = `latest_messages`.`user_id` THEN 0 ELSE 1 END'), 'asc')
        ->orderBy('latest_messages.latest_message', 'desc') // Order by the most recent message timestamp
        ->get();
        // dd($users);
        return view('home', compact('users'));
    }

    public function getMessage(int $user_id)
    {

        $my_id = Auth::id();

        // Make read all unread message
        Message::where(['from' => $user_id, 'to' => $my_id])->update(['is_read' => 1]);

        // Get all message from selected user
        $messages = Message::where(function ($query) use ($user_id, $my_id) {
            $query->where('from', $user_id)->where('to', $my_id);
        })->orWhere(function ($query) use ($user_id, $my_id) {
            $query->where('from', $my_id)->where('to', $user_id);
        })->get();

        $user = User::findOrFail($user_id);
        $myId = User::findOrFail($my_id);

        return view('messages.index', ['messages' => $messages, 'user' => $user, 'myId' => $myId]);
    }

    public function sendMessage(Request $request)
    {
        $from = Auth::id();
        $to = $request->recever_id;

        $data = new Message();
        $data->from = $from;
        $data->to = $request->recever_id;
        $data->message = $request->message;
        $data->is_read = 0;
        $data->save();


        event(new MessageEvent($from, $to));
        return ['success' => true];
    }
}
