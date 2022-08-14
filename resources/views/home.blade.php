@extends('layouts.app')

@section('content')
    <style>
        /* width */
        ::-webkit-scrollbar {
            width: 7px;
        }

        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #a7a7a7;
        }

        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #929292;
        }

        div#plist {
            height: 590px;
            overflow: scroll;
        }

        .chat-history {
            height: 442px;
            overflow: scroll;
        }
    </style>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card" style="height: 600px">
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
                            rel="stylesheet" />

                        <div class="container">
                            <div class="row clearfix">
                                <div class="col-lg-12">
                                    <div class=" chat-app">
                                        <div id="plist" class="people-list">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fa fa-search"></i></span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="Search...">
                                            </div>
                                            <ul class="list-unstyled chat-list mt-2 mb-0">
                                                @foreach ($users as $user)
                                                    <li class="clearfix user" id="{{ $user->id }}">
                                                        <img src="{{ $user->avatar }}" alt="avatar">
                                                        <div class="about">
                                                            <div class="name">{{ $user->name }}</div>
                                                            @if ($user->isOnline())
                                                                <div class="status"> <i class="fa fa-circle online"></i>
                                                                    Active Now</div>
                                                            @else
                                                                <div class="status"> <i class="fa fa-circle offline"></i>
                                                                    left
                                                                    {{ Carbon\Carbon::parse($user->last_seen)->diffForHumans() }}
                                                                </div>
                                                            @endif
                                                        </div>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                        <div class="chat" id="messages">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('script')
    <script>
        var recever_id = '';
        var my_id = '{{ Auth::id() }}';
        $(document).ready(function() {

            $('.user').click(function(e) {
                e.preventDefault();
                $('.user').removeClass('active');
                $(this).addClass('active');
                recever_id = $(this).attr('id');
                $.ajax({
                    type: "GET",
                    url: "{{ url('message') }}/" + recever_id,
                    data: "",
                    cache: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        $('#messages').html(response);
                        scrollToBottom();
                    }
                });
            });
            window.Echo.channel('chat').listen('.message', function(e) {
                console.log(e.from)
                if (my_id == e.from) {
                    $('#' + e.to).click();
                } else if (my_id == e.to) {
                    if (recever_id == e.from) {
                        $('#' + e.from).click();
                    } else {

                    }
                }
            });

            $(document).on('keyup', '.write_message', function(e) {
                var message = $(this).val();
                if (e.keyCode == 13 && message != '' && recever_id != '') {
                    $(this).val('');
                    $.ajax({
                        type: "post",
                        url: "{{ url('message') }}",
                        cache: false,
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        data: {
                            recever_id: recever_id,
                            message: message
                        },
                        success: function(response) {},
                        error: function(error) {},
                        complete: function(done) {
                            scrollToBottom();
                        }
                    });
                }
            });
        });

        function scrollToBottom() {
            $('.chat-history').animate({
                scrollTop: $('.chat-history').get(0).scrollHeight
            }, 50)
        }

        function sendMessage() {
            let user_id = $('#user_id').val();
            let messeges = $('#messeges').val();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            let url = '{{ url('/send-message') }}';
            let data = {
                user_id: user_id,
                messeges: messeges
            }
            axios.post(url, data)
                .then(function(success) {
                    console.log(success)
                })
                .catch(function(error) {
                    console.log(error)
                });
        }
    </script>
@endsection
