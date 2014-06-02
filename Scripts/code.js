function geolocation(){
//checks geolocation availability
   var options = { enableHighAccuracy: true };
   watchID = navigator.geolocation.watchPosition(onSuccess, onError, options);
   
//runs if geolocation available
   function onSuccess(position){
      var lat = position.coords.latitude;
      var lng = position.coords.longitude;
      
      localStorage.setItem("latitude", lat);
      localStorage.setItem("longitude", lng);
      
        var GeoLatlng = new google.maps.LatLng(lat, lng);
    var markerGeo = new google.maps.Marker({
        position: GeoLatlng,
        map: map,
        title: 'Geolocation'
    });
   }
   
//runs at error   
   function onError(error){
      alert(error.message);
   
   }
   
}

geolocation();

  var GeoLatlng = new google.maps.LatLng(lat, lng);
    var markerGeo = new google.maps.Marker({
        position: GeoLatlng,
        map: map,
        title: 'Geolocation'
    });