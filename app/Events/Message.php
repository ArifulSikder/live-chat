<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class Message implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $username;
    public $messeges;
    public $user_id;
    public $admin;
    public function __construct($username, $messeges, $user_id, $admin)
    {
        $this->username = $username;
        $this->messeges = $messeges;
        $this->user_id = $user_id;
        $this->admin = $admin;
    }

    public function broadcastOn()
    {
        return new Channel('chat');
    }
    public function broadcastAs()
    {
        return 'message';
    }
}
