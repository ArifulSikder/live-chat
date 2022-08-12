<div class="chat-history">
    <ul class="m-b-0">
        @foreach ($messages as $message)
            @if ($message->from == Auth::id())
                <li class="clearfix">
                    <div class="message-data text-right float-right">
                        <div class="message-data-time">{{ date('d M y, h:i a', strtotime($message->created_at)) }}</div>
                        <div class="message other-message ">{{ $message->message }}</div>
                        <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="avatar">
                    </div>
                </li>
            @else
                <li class="clearfix">
                    <div class="message-data">
                        <span
                            class="message-data-time">{{ date('d M y, h:i a', strtotime($message->created_at)) }}</span>
                    </div>
                    <div class="message my-message">{{ $message->message }}</div>
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
