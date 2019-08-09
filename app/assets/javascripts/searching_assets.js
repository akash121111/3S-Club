function Compare() {
    var search = $("#search").val();
    var booking_date = $("#bookingdate").val();
    var start_time = $("#starttime").val();
    var end_time = $("#endtime").val();
    var st = minFromMidnight(start_time);
    var et = minFromMidnight(end_time);
  
    if (search.match(/^[a-zA-Z]+$/)) {
        // Create date from input value
        var inputDate = new Date(booking_date);

        // Get today's date
        var todaysDate = new Date();

       
            if (inputDate.setHours(0, 0, 0, 0) == todaysDate.setHours(0, 0, 0, 0)) {

                var now = new Date();
                var d = new Date('1970-01-01T' + start_time);

                var nowTime = now.getHours() * 60 + now.getMinutes();
                var todaytime = d.getHours() * 60 + d.getMinutes();


                // compare nowTime and dateTime
                if (todaytime > nowTime) {

                    
                    window.location.assign("/searching?search=" + search + "&booking_date=" + booking_date + "&start_time=" + start_time + "&end_time=" + end_time);
                   
                }
                else {
                    alert("please enter a valid starting time");
                    $("#searchtext").text("please enter a valid starting time").css("color", "red");
                    $("#searchtext").show().delay(5000).fadeOut();

                }

                
        }

        // Create date from input value
        var inputDate = new Date(booking_date);

        // Get today's date
        var todaysDate = new Date();


        if (inputDate.setHours(0, 0, 0, 0) > todaysDate.setHours(0, 0, 0, 0)) {

        
    
        
        if (start_time > end_time) {

            alert("End time should be greater than start time");


            // window.location.assign("https://localhost:3000/searching?search=" +search+ "&booking_date=" +booking_date+ "&start_time=" +start_time+ "&end_time= "+end_time);
        }
        else {
          

            window.location.assign("/searching?search=" + search + "&booking_date=" + booking_date + "&start_time=" + start_time + "&end_time=" + end_time);
        }
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
    $("#starttime").focusout(function () {
     
        var booking_date = $("#bookingdate").val();
        var start_time = $("#starttime").val();

        var inputDate = new Date(booking_date);

        // Get today's date
        var todaysDate = new Date();

        // call setHours to take the time out of the comparison
        if (inputDate.setHours(0, 0, 0, 0) == todaysDate.setHours(0, 0, 0, 0)) {
           
            var now = new Date();
            var  d= new Date('1970-01-01T' + start_time);

            var nowTime = now.getHours() * 60 + now.getMinutes();
            var todaytime = d.getHours() * 60 + d.getMinutes();
            

            // compare nowTime and dateTime
            if (todaytime < nowTime) {
               
                $("#searchtext").text("Starting time should be greater than the current time").css("color", "red");
                $("#searchtext").show().delay(5000).fadeOut();
            }
           
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

jQuery(function () {
    return $('#search').autocomplete({
        source: $('#search').data('autocomplete-source')
    });
});