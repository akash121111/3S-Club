$(document).ready(function(){
    $('#user_email').prop('readonly','true');
    $('#user_old_password').focusout(function(){
        $.ajax({
                type : "get",
                data : { data_value: $('#user_old_password').val() }
        });
    });

}); 