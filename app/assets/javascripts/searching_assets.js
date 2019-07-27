function Compare() {
    var search = $("#search").val();
    var booking_date = $("#bookingdate").val();
    var start_time = $("#starttime").val();
    var end_time = $("#endtime").val();
    var st = minFromMidnight(start_time);
    var et = minFromMidnight(end_time);
  
    if (search.match(/^[a-zA-Z]+$/)) {
        
        if (start_time > end_time) {

            alert("End time should be greater than start time");


            // window.location.assign("https://localhost:3000/searching?search=" +search+ "&booking_date=" +booking_date+ "&start_time=" +start_time+ "&end_time= "+end_time);
        }
        else {
          

            window.location.assign("/searching?search=" + search + "&booking_date=" + booking_date + "&start_time=" + start_time + "&end_time=git " + end_time);
        }

    }

    else {
        $("#searchtext").text("please enter a valid city name").css("color", "red");
        $("#searchtext").show().delay(3000).fadeOut();

    }

}

document.addEventListener("turbolinks:load", function () {
  
 
    $('#searchcity').removeAttr('data-disable-with');
    $('#searchcity').click(function () {
        Compare();

    });

    $("#search-form").submit(function (event) {
        event.preventDefault();
    });
      $("#search").focusout(function () {
          var search = $("#search").val();
        
          if (search.match(/^[a-zA-Z]+$/)) {
            
              $("#searchtext").text("").css("color", "red");
              
          }else{
              $("#searchtext").text("please enter a valid city name").css("color", "red");
              $("#searchtext").show().delay(3000).fadeOut();
          }



    });
    $("#endtime").focusout(function () {
        var start_time = $("#starttime").val();
        var end_time = $("#endtime").val();

        if (start_time < end_time) {

            $("#searchtext").text("").css("color", "red");

        } else {
            $("#searchtext").text("End time should be greater than start time").css("color", "red");
            $("#searchtext").show().delay(3000).fadeOut();
        }



    });


});


function minFromMidnight(tm) {
    var ampm = tm.substr(-2)
    var clk = tm.substr(0, 5);
    var m = parseInt(clk.match(/\d+$/)[0], 10);
    var h = parseInt(clk.match(/^\d+/)[0], 10);
    return h * 60 + m;
}