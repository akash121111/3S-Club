document.addEventListener("turbolinks:load",function(){



//$(document).ready(function(){
<<<<<<< HEAD
  $("#latitude").css("display","none");
  $("#longitude").css("display","none");
  $("#latitude2").css("display","none");
  $("#longitude2").css("display","none");
  

    $('#edit-option').click(function(){
       //$(".form-control").prop('readonly','false');
    });
  
});
    
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
=======
  // $(".space-detail").css("display","none");
   
   $("#latitude").css("display","none");
   $("#longitude").css("display","none");
   $("#latitude2").css("display","none");
   $("#longitude2").css("display","none");
   $(".form-control").attr('readonly','true');

    $('#edit-option').click(function(){
        $(".form-control").prop('readonly','false');
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
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    //Initial options of map
    var options={
      
        zoom:16,
        center:mycoords
    }
    

    //Initialize the map
    var map=new google.maps.Map(document.getElementById('map'),options);
    addMarker({coords: mycoords});
    
   
    //addMarker Definition
<<<<<<< HEAD

=======
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    function addMarker(props){
        var marker=new google.maps.Marker({
            position:props.coords ,
            map:map,
            draggable:true
        });
<<<<<<< HEAD
    
        document.getElementById('latitude').value=marker.getPosition().lat();
        document.getElementById('longitude').value=marker.getPosition().lng();
     
=======

        document.getElementById('latitude').value=marker.getPosition().lat();
        document.getElementById('longitude').value=marker.getPosition().lng();
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
        google.maps.event.addListener(
            marker,
            'drag',
            function(event) {
<<<<<<< HEAD
                
                document.getElementById('latitude').value = this.position.lat();
                document.getElementById('longitude').value = this.position.lng();
           
=======
                document.getElementById('latitude').value = this.position.lat();
                document.getElementById('longitude').value = this.position.lng();
                //alert('drag');
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
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
<<<<<<< HEAD

}






=======
  

}

initMap();


});
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
