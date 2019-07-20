document.addEventListener("turbolinks:load",function(){



//$(document).ready(function(){
    var startTimeArray=document.querySelectorAll(".start-time-array");
    var endTimeArray=document.querySelectorAll(".end-time-array");
  $("#latitude").css("display","none");
  $("#longitude").css("display","none");
  $("#latitude2").css("display","none");
  $("#longitude2").css("display","none");
$("input[id='space_available_day_space_availability_timing_start_time']").map(function(){
    if(document.getElementById('space_available_day_space_available_day_monday_true').checked)
       return $(this).prop('readOnly','true');});

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

  

    $('#edit-option').click(function(){
       //$(".form-control").prop('readonly','false');
    });
  
});

function disableNewTimeField(weekday){
   
     document.getElementById('space_start_time_'+weekday).readOnly=true;
     document.getElementById('space_end_time_'+weekday).readOnly=true;
 
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






