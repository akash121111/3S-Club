function validation() {
    var first_name = $("#firstname").val();
    var last_name = $("#lastname").val();
    var education_details = $("#educationdetails").val();
    var about_user = $("#aboutuser").val();
    var city = $("#city").val();
    var college = $("#college").val();
    var phone_number = $("#phno").val();
    var mobile_number = $("#mobno").val();

    if (first_name.match(/^[a-zA-Z]+$/)) {
        if (last_name.match(/^[a-zA-Z]+$/)) {
            if (education_details.match(/^[a-zA-Z]+$/)) {
                if (about_user.match(/^[a-zA-Z]+$/)) {
                    if (city.match(/^[a-zA-Z]+$/)) {
                        if (college.match(/^[a-zA-Z]+$/)) {
                            if (phone_number.match(/^[789]\d{9}$/)) {
                                if (mobile_number.match(/^[789]\d{9}$/)) {



                                    //window.location.assign("http://localhost:3000/membership?p="+p+"&user_id="+user_id+
                                    //  "&space_id="+space_id+"_self");
                                    window.location.assign("http://localhost:3000/memberdetail?first_name=" + first_name + "&last_name=" + last_name + "&education_details=" + education_details + "&about_user=" + about_user + "&city=" + city + "&college=" + college + "&phone_number=" + phone_number + " &mobile_number=" + mobile_number);
                                }


                                else {
                                    $("#mobilenumber").text("please enter a valid mobile number").css("color", "red");
                                    $("#mobilenumber").show().delay(3000).fadeOut();
                                }

                            }
                            else {
                                $("#phonenumber").text("please enter a valid phone number").css("color", "red");
                                $("#phonenumber").show().delay(3000).fadeOut();
                            }

                        }
                        else {
                            $("#collegetext").text("Please enter college name").css("color", "red");
                            $("#collegetext").show().delay(3000).fadeOut();
                        }
                    }
                    else {
                        $("#citytext").text("Please enter city name").css("color", "red");
                        $("#citytext").show().delay(3000).fadeOut();
                    }
                }
                else {
                    $("#aboutusertext").text("please enter aboutuser").css("color", "red");
                    $("#aboutusertext").show().delay(3000).fadeOut();
                }
            }
            else {
                $("#educationdetailstext").text("*Please enter educationdetails").css("color", "red");
                $("#educationdetailstext").show().delay(3000).fadeOut();
            }
        }
        else {
            $("#lastnametext").text("*Please enter a valid last name").css("color", "red");
            $("#lastnametext").show().delay(3000).fadeOut();
        }
    }
    else {
        $("#firstnametext").text("*Please enter a valid first name").css("color", "red");
        $("#firstnametext").show().delay(3000).fadeOut();
    }
}
$(document).ready(function () {
    $('#save').click(function () {
        validation();
        return;
    });
});