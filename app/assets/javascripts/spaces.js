document.addEventListener("turbolinks:load",function(){



//$(document).ready(function(){
  $("#latitude").css("display","none");
  $("#longitude").css("display","none");
  $("#latitude2").css("display","none");
  $("#longitude2").css("display","none");
  //$('#space_start_time_monday').prop("disabled", true);
  week_days=["monday","tuesday","wednesday","thursday","friday","saturday","sunday"]
  
 // for(var i=0;i<7;i++){
  //    disableTimeField(week_days[i]);
  //}

    $('#edit-option').click(function(){
       //$(".form-control").prop('readonly','false');
    });
  
});

function disableTimeField(weekday){
   if(document.getElementById('space_space_available_day_'+weekday+'_false').checked){
     document.getElementById('space_start_time_'+weekday).disabled=true;
     document.getElementById('space_end_time_'+weekday).disabled=true;
   }
   if(document.getElementById("sspace_available_day_space_available_day_"+weekday+"_false").checked){
    document.getElementById("space_available_day_space_availability_timing_start_time").disabled=true;
    document.getElementById("space_available_day_space_availability_timing_end_time").disabled=true;
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






