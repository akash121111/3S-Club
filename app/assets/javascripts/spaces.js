$(document).ready(function(){
   // $(".space-detail").css("display","none");
});
function initMap(){
    var mycoords =new google.maps.LatLng(51.501564,-0.141944)
    //Initial options of map
    var options={
        
        zoom:16,
        center:mycoords
    }
    

    //Initialize the map
    var map=new google.maps.Map(document.getElementById('map'),options);
    addMarker({coords: mycoords});
    
    //Add marker on click
    google.maps.event.addListener(map,'click',
    function(event){
        addMarker({coords:event.latLng})
    });
   
    //addMarker Definition
    function addMarker(props){
        var marker=new google.maps.Marker({
            position:props.coords ,
            map:map
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
    var markers=[{coords:{lat:31.5204,lng:-74.3587}},
    {coords:{lat:28.7041,lng:-77.1025}}
    ];
    for(var i=0 ;i<markers.length;i++){
        addMarker(markers[i]);
    }

}

