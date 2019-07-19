function userdetail()                                    
{ 
    var firstname = document.form["form-horizontal"]["fist_name"];               
    var lastname = document.form["form-horizontal"]["last_name"];    
    var education = document.form["form-horizontal"]["education_details"];  
    var about=  document.form["form-horizontal"]["about_user"];  
    var city = document.form["form-horizontal"]["city"];  
    var college = document.form["form-horizontal"]["college"]; 
    var phone = document.form["form-horizontal"]["phone_number"] ;
    var mobile =document.form["form-horizontal"]["mobile_number"];
   
    if (fist_name.value == "")                                  
    { 
        window.alert("Please enter your name."); 
        name.focus(); 
        return false; 
    } 
   
    if (last_name.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    if (education_details.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    if (about_user.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    if (city.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    if (college.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    if (phone_number.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    if (mobile_number.value == "")                               
    { 
        window.alert("Please enter your address."); 
        name.focus(); 
        return false; 
    } 
    
    
}