document.addEventListener("turbolinks:load",function(){

    $('#user_email').prop('disabled','disabled');
     //regex for address
     var passwordRegex=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$/is;
     var nameRegex=/^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/is;
     var sentenceRegex=/^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$/is;
     var phoneRegex= /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}$/is;
     var addressRegex=/^[a-zA-Z0-9,. ]*$/is;
     var cityRegex=/^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/is;
     var pincodeRegex= /^[1-9][0-9]{5}$/is;
     var stateRegex=/^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/is;
     var countryRegex=/^[a-zA-Z]+(?:[\s-][a-zA-Z]+)*$/is;

    //Password Validation
    $('#user_password').focusout(function(){
        var element=$('#user_password');
        var txtElement=$('#span_password_error');
        var regex= passwordRegex;
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
        var regex= nameRegex;
        var msg="First name seems Incorrect";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_last_name').focusout(function(){
        var element=$('#user_detail_last_name');
        var txtElement=$('#span_last_name_error');
        var regex= nameRegex;
        var msg="Last Name seems Incorrect";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_about_owner').focusout(function(){
        var element=$('#user_detail_about_owner');
        var txtElement=$('#span_about_owner_error');
        var regex= sentenceRegex;
        var msg="Wrong Input information.";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_phone_number').focusout(function(){
        var element=$('#user_detail_phone_number');
        var txtElement=$('#span_phone_number_error');
        var regex=phoneRegex;
        var msg="Phone Number seems Incorrect.";
        validate(element,txtElement,regex,msg);
    });
    $('#user_detail_mobile_number').focusout(function(){
        var element=$('#user_detail_mobile_number');
        var txtElement=$('#span_phone_number_error');
        var regex= phoneRegex;
        var msg="Phone Number seems Incorrect.";
        validate(element,txtElement,regex,msg);
    });

   

    //User Permanent Address Validations
    $('.address-line-1').eq(0).focusout(function(){
        var element=$('.address-line-1').eq(0);
        var txtElement=$('#span_address_line_1_error_1');
        var regex= addressRegex;
        var msg="Inappropriate Address";
        validate(element,txtElement,regex,msg);
    });
    $('.address-line-2').eq(0).focusout(function(){
        var element=$('.address-line-2').eq(0);
        var txtElement=$('#span_address_line_2_error_1');
        var regex= addressRegex;
        var msg="Inappropriate Address";
        validate(element,txtElement,regex,msg);
    });
    $('.city').eq(0).focusout(function(){
        var element=$('.city').eq(0);
        var txtElement=$('#span_city_error_1');
        var regex= cityRegex;
        var msg="Inappropriate City Name";
        validate(element,txtElement,regex,msg);
    });
    $('.pincode').eq(0).focusout(function(){
        var element=$('.pincode').eq(0);
        var txtElement=$('#span_pincode_error_1');
        var regex=pincodeRegex;
        var msg="Invalid Pincode";
        validate(element,txtElement,regex,msg);
    });
    $('.state').eq(0).focusout(function(){
        var element=$('.state').eq(0);
        var txtElement=$('#span_state_error_1'); 
        var regex= stateRegex;
        var msg="Inappropriate State Name";
        validate(element,txtElement,regex,msg);
    });
    $('.country').eq(0).focusout(function(){
        var element=$('.country').eq(0);
        var txtElement=$('#span_country_error_1'); 
        var regex= countryRegex;
        var msg="Inappropriate Country Name";
        validate(element,txtElement,regex,msg);
    });

    //User Correspondence Address Validation

    $('.address-line-1').eq(1).focusout(function(){
        var element=$('.address-line-1').eq(1);
        var txtElement=$('#span_address_line_1_error_2');
        var regex= addressRegex;
        var msg="Inappropriate Address";
        validate(element,txtElement,regex,msg);
    });
    $('.address-line-2').eq(1).focusout(function(){
        var element=$('.address-line-2').eq(1);
        var txtElement=$('#span_address_line_2_error_2');
        var regex= addressRegex;
        var msg="Inappropriate Address";
        validate(element,txtElement,regex,msg);
    });
    $('.city').eq(1).focusout(function(){
        var element=$('.city').eq(1);
        var txtElement=$('#span_city_error_2');
        var regex= cityRegex;
        var msg="Inappropriate City Name";
        validate(element,txtElement,regex,msg);
    });
    $('.pincode').eq(1).focusout(function(){
        var element=$('.pincode').eq(1);
        var txtElement=$('#span_pincode_error_2');
        var regex= pincodeRegex;
        var msg="Invalid Pincode";
        validate(element,txtElement,regex,msg);
    });
    $('.state').eq(1).focusout(function(){
        var element=$('.state').eq(1);
        var txtElement=$('#span_state_error_2'); 
        var regex= stateRegex;
        var msg="Inappropriate State Name";
        validate(element,txtElement,regex,msg);
    });
    $('.country').eq(1).focusout(function(){
        var element=$('.country').eq(1);
        var txtElement=$('#span_country_error_2'); 
        var regex= countryRegex;
        var msg="Inappropriate Country Name";
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
