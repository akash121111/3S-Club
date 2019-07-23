document.addEventListener("turbolinks:load",function(){



//$(document).ready(function(){
    var startTimeArray=document.querySelectorAll(".start-time-array");
    var endTimeArray=document.querySelectorAll(".end-time-array");
    $("#latitude").css("display","none");
    $("#longitude").css("display","none");
    $("#latitude2").css("display","none");
    $("#longitude2").css("display","none");

    
   
            
    
    $("#space_space_address_pincode").focusout(geocode);

    $('.rButtonYes').click(function(){
        var weekday=this.id.split("_")[4];
        document.getElementById('space_start_time_'+weekday).readOnly=false;
        document.getElementById('space_end_time_'+weekday).readOnly=false;
    });
    $('.rButtonNo').click(function(){
        var weekday=this.id.split("_")[4];
        document.getElementById('space_start_time_'+weekday).value="";
        document.getElementById('space_end_time_'+weekday).value="";
        document.getElementById('space_start_time_'+weekday).readOnly=true;
        document.getElementById('space_end_time_'+weekday).readOnly=true;
    });

    var week_days=["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];
    $('.rButtonEditYes').click(function(){
        var weekday=this.id.split("_")[6];
        startTimeArray[week_days.indexOf(weekday)].readOnly=false;
        endTimeArray[week_days.indexOf(weekday)].readOnly=false;
    });

    $('.rButtonEditNo').click(function(){
        var weekday=this.id.split("_")[6];
        endTimeArray[week_days.indexOf(weekday)].value="";
        startTimeArray[week_days.indexOf(weekday)].value="";
        startTimeArray[week_days.indexOf(weekday)].readOnly=true;
        endTimeArray[week_days.indexOf(weekday)].readOnly=true;
    });

    $(".edit_space_available_day").submit(function(){
        var startTimeValues = $("input[id='space_available_day_space_availability_timing_start_time']").map(function(){return $(this).val();}).get();
        var endTimeValues = $("input[id='space_available_day_space_availability_timing_end_time']").map(function(){return $(this).val();}).get();
        var week_days=["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];
        var flag=1;
        var msg="";
        $.each( week_days, function( key, value ) {
          if($("#space_available_day_space_available_day_"+value+"_true").prop('checked')===true){
            if (startTimeValues[key]!=="" &&endTimeValues[key]!==""){
                flag=1;
            }
            else{
                msg="You have not entered start Time or End Time for some Selected Days";
                
                flag=0;
            }
         }
        });
    
        if(flag===0){
            alert(msg);
            return false;
        }
  
    });

    $("#new_space").submit(function(){
        var week_days=["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];
        var flag=1;
        var msg="";
        $.each( week_days, function( key, value ) {
          if($("#space_space_available_day_"+value+"_true").prop('checked')===true){
            if (($('#space_start_time_'+value).val()!=="" && $('#space_end_time_'+value).val()!=="")||($('#space_start_time_'+value).val()  >= $('#space_end_time_'+value).val())){
                flag=1;
            }
            else{
                msg="You have not entered start Time or End Time for some Selected Days";
                
                flag=0;
            }
         }
        });
        if (flag===0){
            alert(msg);
            return false;
        }
  
    });

    $('#space_space_name').focusout(function(){
        validate();
    });

});

function validate(){
    var regName = /^[a-zA-Z]+ [a-zA-Z]+$/;
    var name = document.getElementById('space_space_name').value;
    if(!regName.test(name)){
        //alert('Please enter Correct Space Name.').delay(1000);
        document.getElementById('space_space_name').title="hey";
        document.getElementById('space_space_name').focus();
        
        return false;
    }else{
        return true;
    }
}

function disableNewTimeField(weekday){
   
     document.getElementById('space_start_time_'+weekday).readOnly=true;
     document.getElementById('space_end_time_'+weekday).readOnly=true;
 
}
function enable(){   
 debugger
    document.getElementById('user_password').readOnly=false;
    document.getElementById('user_password_confirmation').readOnly=false;

}

function disableEditTimeField(day_no){
    var startTimeArray=document.querySelectorAll(".start-time-array");
    var endTimeArray=document.querySelectorAll(".end-time-array");

    var week_days=["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];
    if (document.getElementById('space_available_day_space_available_day_'+week_days[day_no-1]+'_false').checked===true){
        startTimeArray[day_no-1].readOnly=true;
        endTimeArray[day_no-1].readOnly=true;
    }
 }
    
 function initMap(){
     var mycoords =new google.maps.LatLng(28.5355 , 77.3910 )
     var options={
      
         zoom:2,
         center:mycoords
     }

     //Initialize the map
    var map=new google.maps.Map(document.getElementById('map'),options);
    addMarker({coords: mycoords});
    function addMarker(props){
        var marker=new google.maps.Marker({
            position:props.coords ,
            map:map,
            draggable:true
        });
    
        document.getElementById('latitude2').value=marker.getPosition().lat();
        document.getElementById('longitude2').value=marker.getPosition().lng();
     
        google.maps.event.addListener(
            marker,
            'drag',
            function(event) {
                
                document.getElementById('latitude2').value = this.position.lat();
                document.getElementById('longitude2').value = this.position.lng();
           
            });
        
        //Check for icon image
        if(props.iconImage){
            marker.setIcon(props.iconImage)
        }
        //Check for content
        if(props.content){
            var infoWindow=new google.maps.InfoWindow({
                content:props.content
            }); 
            marker.addListener('click',function(){
                infoWindow.open(map,marker);
            });         
        }
    }
 }

 function m(lat,lng){
    
    var mycoords =new google.maps.LatLng(lat,lng)
    //Initial options of map
    var options={
      
        zoom:16,
        center:mycoords
    }
    

    //Initialize the map
    var map=new google.maps.Map(document.getElementById('map'),options);
    addMarker({coords: mycoords});
    
   
    //addMarker Definition
    function addMarker(props){
        var marker=new google.maps.Marker({
            position:props.coords ,
            map:map,
            draggable:true
        });
    
        document.getElementById('latitude').value=marker.getPosition().lat();
        document.getElementById('longitude').value=marker.getPosition().lng();
     
        google.maps.event.addListener(
            marker,
            'drag',
            function(event) {
                
                document.getElementById('latitude').value = this.position.lat();
                document.getElementById('longitude').value = this.position.lng();
           
            });
        
        //Check for icon image
        if(props.iconImage){
            marker.setIcon(props.iconImage)
        }
        //Check for content
        if(props.content){
            var infoWindow=new google.maps.InfoWindow({
                content:props.content
            }); 
            marker.addListener('click',function(){
                infoWindow.open(map,marker);
            });         
        }
    }

}




function geocode(e){
    // Prevent actual submit
    

    var location = document.getElementById('space_space_address_pincode').value;

    axios.get('https://maps.googleapis.com/maps/api/geocode/json',{
      params:{
        address:location,
        key: 'AIzaSyDWlUxnRmFh7fhZYVst6tMS751Gqvr1fL4'
      }
    })
    .then(function(response){
      // Log full response
      console.log(response);
      // Geometry
      var lat = response.data.results[0].geometry.location.lat;
      var lng = response.data.results[0].geometry.location.lng;
      m(lat,lng);
    })
    .catch(function(error){
      console.log(error);
    });
  }







