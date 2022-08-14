<div class="chat-header clearfix">
    <div class="row">
        <div class="col-lg-6">
            <a href="javascript:void(0);" data-toggle="modal" data-target="#view_info">
                <img src="{{ $user->avatar }}" alt="avatar">
            </a>
            <div class="chat-about">
                <h6 class="m-b-0">{{ $user->name }}</h6>
                @if ($user->isOnline())
                    <small>Active Now</small>
                @else
                    <small>Last seen: {{ Carbon\Carbon::parse($user->last_seen)->diffForHumans() }}</small>
                @endif
            </div>
        </div>
        {{-- <div class="col-lg-6 hidden-sm text-right">
            <a href="javascript:void(0);" class="btn btn-outline-secondary"><i
                    class="fa fa-camera"></i></a>
            <a href="javascript:void(0);" class="btn btn-outline-primary"><i
                    class="fa fa-image"></i></a>
            <a href="javascript:void(0);" class="btn btn-outline-info"><i
                    class="fa fa-cogs"></i></a>
            <a href="javascript:void(0);" class="btn btn-outline-warning"><i
                    class="fa fa-question"></i></a>
        </div> --}}
    </div>
</div>
<div>
    <div class="chat-history">
        <ul class="m-b-0">
            @foreach ($messages as $message)
                @if ($message->from == Auth::id())
                    <li class="clearfix">
                        <div class="message-data text-right float-right">
                            <div class="message-data-time">
                                {{ date('d M y, h:i a', strtotime($message->created_at)) }}
                            </div>
                            <div class="message other-message ">
                                {{ $message->message }}</div>
                            <img src="{{ $myId->avatar }}" alt="avatar">
                        </div>
                    </li>
                @else
                    <li class="clearfix">
                        <div class="message-data">
                            <span
                                class="message-data-time">{{ date('d M y, h:i a', strtotime($message->created_at)) }}</span>
                        </div>
                        <div class="message my-message">{{ $message->message }}
                        </div>
                    </li>
                @endif
            @endforeach
        </ul>
    </div>
    <div class="chat-message clearfix">
        <div class="input-group mb-0">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="fa fa-send"></i></span>
            </div>
            <input type="text" class="form-control write_message" placeholder="Enter text here...">
        </div>
    </div>
</div>
