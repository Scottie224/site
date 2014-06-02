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
      
      alert("lat: " +  lat + "long: " + lng);  
   }
   
//runs at error   
   function onError(error){
      alert("message: " + error.message);
   
   }
   
}

geolocation();