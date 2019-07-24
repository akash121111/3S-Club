document.addEventListener("turbolinks:load",function(){
    //Password Validation
    $('#user_password').focusout(function(){
        var element=$('#user_password');
        var txtElement=$('#span_password_error');
        var regex= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$/;
        var msg="Password expresion that requires one lower case letter, one upper case letter, one digit, 6-13 length, and no spaces.";
        validate(element,txtElement,regex,msg);
    });
    $('#user_password_confirmation').focusout(function(){
        if ($('#user_password').val() !== $('user_password_confirmation').val()){
            $('#span_password_confirmation_error').html("Password Not Matched!!!");
        } 
    });


    //Personal Details Validation

    $('#user_detail_first_name').focusout(function(){
        var element=$('#user_detail_first_name');
        var txtElement=$('#span_first_name_error');
        var regex= /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
        var msg="First name seems Incorrect";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_last_name').focusout(function(){
        var element=$('#user_detail_last_name');
        var txtElement=$('#span_last_name_error');
        var regex= /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
        var msg="Last Name seems Incorrect";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_about_owner').focusout(function(){
        var element=$('#user_detail_about_owner');
        var txtElement=$('#span_about_owner_error');
        var regex= /^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/;
        var msg="Wrong Input information.";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_phone_number').focusout(function(){
        var element=$('#user_detail_phone_number');
        var txtElement=$('#span_phone_number_error');
        var regex= /[\+]{0,1}(\d{10,13}|[\(][\+]{0,1}\d{2,}[\13)]*\d{5,13}|\d{2,6}[\-]{1}\d{2,13}[\-]*\d{3,13})/;
        var msg="Phone Number seems Incorrect.";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_mobile_number').focusout(function(){
        var element=$('#user_detail_mobile_number');
        var txtElement=$('#span_mobile_number_error');
        var regex= /^((\+)?(\d{2}[-]))?(\d{10}){1}?$/;
        var msg="Mobile Number seems Incorrect.";
        validate(element,txtElement,regex,msg);
    });

    //User Address Validations
    $('#user_address_Permanent_Address_address_line_1').focusout(function(){
        var element=$('#user_address_Permanent_Address_address_line_1');
        var txtElement=$('#span_address_line_1_error_1');
        var regex= /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
        var msg="Inappropriate City Name";
        validate(element,txtElement,regex,msg);
    });
    $('#user_address_Permanent_Address_address-line-2').focusout(function(){
        var element=$('#user_address_Permanent_Address_address-line-2');
        var txtElement=$('#span_address_line_2_error__1');
        var regex= /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
        var msg="Inappropriate City Name";
        validate(element,txtElement,regex,msg);
    });
    
    $('#user_address_Permanent_Address_city').focusout(function(){
        var element=$('#user_address_Permanent_Address_city');
        var txtElement=$('#span_city_error_1');
        var regex= /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
        var msg="Inappropriate City Name";
        validate(element,txtElement,regex,msg);
    });
    $('#user_address_Permanent_Address_pincode').focusout(function(){
        var element=$('#user_address_Permanent_Address_pincode');
        var txtElement=$('#span_pincode_error_1');
        var regex= /^[0-9]*$/;
        var msg="Space name must not contain only Letters and Spaces";
        validate(element,txtElement,regex,msg);
    });
    $('#user_address_Permanent_Address_state').focusout(function(){
        var element=$('#user_address_Permanent_Address_state');
        var txtElement=$('#span_state_error_1'); 
        var regex= /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
        var msg="Inappropriate State Name";
        validate(element,txtElement,regex,msg);
    });
    $('#user_address_Permanent_Address_country').focusout(function(){
        var element=$('#user_address_Permanent_Address_country');
        var txtElement=$('#span_country_error_1'); 
        var regex= /^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/;
        var msg="Inappropriate State Name";
        validate(element,txtElement,regex,msg);
    });
});
function validate(element,txtElement,regex,msg){
    var value=element.val();
    if(!regex.test(value)){
        
        element.focus();
        txtElement.html(msg);
        return false;
    }
    else{
        txtElement.html("");
        return true;
    }
}
