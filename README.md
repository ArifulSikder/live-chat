<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Documentation

If you plan to broadcast your events using Pusher Channels, you should install the Pusher Channels PHP SDK using the Composer package manager:

    {
       composer require pusher/pusher-php-server.
    }

After That Run the following command:

    {
       npm install --save-dev laravel-echo pusher-js
    }

Next, you should configure your Pusher Channels credentials in the **config/broadcasting.php** configuration file. An example Pusher Channels configuration is already included in this file, allowing you to quickly specify your key, secret, and application ID. Typically, these values should be set via the PUSHER_APP_KEY, PUSHER_APP_SECRET, and PUSHER_APP_ID environment variables:

## Environment variables

-   PUSHER_APP_ID=your-pusher-app-id
-   PUSHER_APP_KEY=your-pusher-key
-   PUSHER_APP_SECRET=your-pusher-secret
-   PUSHER_APP_CLUSTER=mt1

The **config/broadcasting.php** file's pusher configuration also allows you to specify additional options that are supported by Channels, such as the cluster.

Next, you will need to change your broadcast driver to pusher in your **.env** file:

-   BROADCAST_DRIVER=pusher

## Event

**Then make a event by using the following command**

-   php artisan make:event EventName

**Then pass data in the database and event**

        {
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

**After that configure the event**

class MessageEvent implements ShouldBroadcast

    {
       use Dispatchable, InteractsWithSockets, SerializesModels;

        public $from;
        public $to;
        public function __construct($from, $to)
        {
            $this->from = $from;
            $this->to = $to;
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

**Then go to the resources/js/bootstrap.js file and write the below code**

    {
      import Echo from 'laravel-echo';
        import Pusher from 'pusher-js';

        window.Pusher = Pusher;

        window.Echo = new Echo({
            broadcaster: 'pusher',
            key: import.meta.env.VITE_PUSHER_APP_KEY,
            cluster: import.meta.env.VITE_PUSHER_APP_CLUSTER,
            forceTLS: true
        });
    }
