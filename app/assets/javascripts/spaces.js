document.addEventListener("turbolinks:load",function(){



//$(document).ready(function(){
  // $(".space-detail").css("display","none");
   
   $("#latitude").css("display","none");
   $("#longitude").css("display","none");
   $("#latitude2").css("display","none");
   $("#longitude2").css("display","none");
   //$(".form-control").attr('readonly','true');

    $('#edit-option').click(function(){
       //$(".form-control").prop('readonly','false');
    });
  
//});
    
// function initMap(){
//     var mycoords =new google.maps.LatLng(28.5355, -77.3910 )
//     var options={
      
//         zoom:16,
//         center:mycoords
//     }
    

//     //Initialize the map
//     var map=new google.maps.Map(document.getElementById('create-map'),options);
// }

function initMap(lat,lng){
    
    var mycoords =new google.maps.LatLng(28.5355, -77.3910)
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
                //alert('drag');
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

initMap();


});
