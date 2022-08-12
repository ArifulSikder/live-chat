import './bootstrap';
import 'axios';

window.Echo.channel('chat').listen('.message', function (e) {
    if (e.user_id) {
        $('#showMessageLeft').append(`
        <div>
        <strong>${e.username}</strong>
        <p>${e.messeges}</p>
    </div>`)
    }else if(e.user_id){
        $('#showMessageRight').append(`
        <div>
        <strong>${e.username}</strong>
        <p>${e.messeges}</p>
    </div>`)
    }
  ;
});
