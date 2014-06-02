function initialize() {
            var mapOptions = {
                center: new google.maps.LatLng(55.3617609, -3.4433238),
                zoom: 5
            };
            var map = new google.maps.Map(document.getElementById("Map"),
                mapOptions);
                
//checks geolocation availability
   var options = { enableHighAccuracy: true };
   watchID = navigator.geolocation.watchPosition(onSuccess, onError, options);
   
//runs if geolocation available
   function onSuccess(position){
      var lat = position.coords.latitude;
      var lng = position.coords.longitude;
      
      localStorage.setItem("latitude", lat);
      localStorage.setItem("longitude", lng);       
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
                
      var ribblecontent =  '<p>Ribble Valley Food Trail</p><p><a href="Trails/RibbleValley.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: ribblecontent
  });            var stanleyhouse = new google.maps.LatLng(53.767684, -2.540424);
                    var marker = new google.maps.Marker({
                        position: stanleyhouse,
                        map: map
                    }); 
                    google.maps.event.addListener(marker, 'click', function() {
      infowindow.open(map, marker);
      
    });                
                    
      var clwydiancontent =  '<p>Clwydian Range Food Trail</p><p><a href="Trails/ClwydianRange.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: clwydiancontent
  });            var caffiflorence = new google.maps.LatLng(53.154182, -3.201377);
                    var marker1 = new google.maps.Marker({
                        position: caffiflorence,
                        map: map
                    });
                    
                    google.maps.event.addListener(marker1, 'click', function() {
      infowindow.open(map, this);
      
    });
                    
      var carmarthenshirenorthcontent =  '<p>Carmarthenshire North Food Trail</p><p><a href="Trails/CarmarthenshireNorth.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: carmarthenshirenorthcontent
  });            var cawscenarth = new google.maps.LatLng(53.154182, -3.201377);
                    var marker2 = new google.maps.Marker({
                        position: cawscenarth,
                        map: map
                    });
                    
                    google.maps.event.addListener(marker2, 'click', function() {
      infowindow.open(map, this);
      
    });

      var carmarthenshireeastcontent =  '<p>Carmarthenshire East Food Trail</p><p><a href="Trails/CarmarthenshireEast.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: carmarthenshireeastcontent
  });            var cnwd = new google.maps.LatLng(51.7949816, -4.0752488);
                    var marker3 = new google.maps.Marker({
                        position: cnwd,
                        map: map
                    });
                    
                    google.maps.event.addListener(marker3, 'click', function() {
      infowindow.open(map, this);
      
    });

      var carmarthenshirewestcontent =  '<p>Carmarthenshire West Food Trail</p><p><a href="Trails/CarmarthenshireWest.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: carmarthenshirewestcontent
  });            var albertrees = new google.maps.LatLng(51.857687, -4.309087);
                    var marker4 = new google.maps.Marker({
                        position: albertrees,
                        map: map
                    });

                    google.maps.event.addListener(marker4, 'click', function() {
      infowindow.open(map, this);
      
    });
    
      var chestercontent =  '<p>Chester Ale Trail</p><p><a href="Trails/Chester.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: chestercontent
  });            var bawnlodge = new google.maps.LatLng(53.200281, -2.876902);
                    var marker5 = new google.maps.Marker({
                        position: bawnlodge,
                        map: map
                    });
     
                    google.maps.event.addListener(marker5, 'click', function() {
      infowindow.open(map, this);
      
    });

      var flintshirecontent =  '<p>Flintshire Real Ale Trail</p><p><a href="Trails/Flintshire.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: flintshirecontent
  });            var goldcape = new google.maps.LatLng(53.166431, -3.141218);
                    var marker6 = new google.maps.Marker({
                        position: goldcape,
                        map: map
                    });
     
                    google.maps.event.addListener(marker6, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershirefarmcontent =  '<p>Worcestershire Farm and Produce Trail</p><p><a href="Trails/WorcestershireFarm.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershirefarmcontent
  });            var arrayfruit = new google.maps.LatLng(52.344854, -2.075683);
                    var marker7 = new google.maps.Marker({
                        position: arrayfruit,
                        map: map
                    });
     
                    google.maps.event.addListener(marker7, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershiremeatcontent =  '<p>Worcestershire Meat and Poultry Trail</p><p><a href="Trails/WorcestershireMeat.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershiremeatcontent
  });            var checketts = new google.maps.LatLng(52.270337, -2.228401);
                    var marker8 = new google.maps.Marker({
                        position: checketts,
                        map: map
                    });
     
                    google.maps.event.addListener(marker8, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershiredairycontent =  '<p>Worcestershire Dairy Produce and Eggs Trail</p><p><a href="Trails/WorcestershireDairy.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershiredairycontent
  });            var akiki = new google.maps.LatLng(52.189735, -2.058417);
                    var marker9 = new google.maps.Marker({
                        position: akiki,
                        map: map
                    });
     
                    google.maps.event.addListener(marker9, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershirecondimentscontent =  '<p>Worcestershire Condiments, Preserves and Honey Trail</p><p><a href="Trails/WorcestershireCondiments.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershirecondimentscontent
  });            var berrows = new google.maps.LatLng(52.219755, -2.371459);
                    var marker10 = new google.maps.Marker({
                        position: berrows,
                        map: map
                    });
     
                    google.maps.event.addListener(marker10, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershiredelicatessenscontent =  '<p>Worcestershire Delicatessens Trail</p><p><a href="Trails/WorcestershireDelicatessens.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershiredelicatessenscontent
  });            var deli6 = new google.maps.LatLng(52.26832, -2.147981);
                    var marker11 = new google.maps.Marker({
                        position: deli6,
                        map: map
                    });
     
                    google.maps.event.addListener(marker11, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershirebeveragescontent =  '<p>Worcestershire Beverages Trail</p><p><a href="Trails/WorcestershireBeverages.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershirebeveragescontent
  });            var astley = new google.maps.LatLng(52.305688, -2.288318);
                    var marker11 = new google.maps.Marker({
                        position: astley,
                        map: map
                    });
     
                    google.maps.event.addListener(marker11, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershirebakedcontent =  '<p>Worcestershire Baked Goods and Confectionary Trail</p><p><a href="Trails/WorcestershireBaked.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershirebakedcontent
  });            var fudgeheaven = new google.maps.LatLng(52.301197, -2.073761);
                    var marker12 = new google.maps.Marker({
                        position: fudgeheaven,
                        map: map
                    });
     
                    google.maps.event.addListener(marker12, 'click', function() {
      infowindow.open(map, this);
      
    });

      var worcestershireeatingcontent =  '<p>Worcestershire Restaurant Trail</p><p><a href="Trails/WorcestershireEating.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: worcestershireeatingcontent
  });            var ashleys = new google.maps.LatLng(52.197784, -2.223565);
                    var marker13 = new google.maps.Marker({
                        position: ashleys,
                        map: map
                    });
     
                    google.maps.event.addListener(marker13, 'click', function() {
      infowindow.open(map, this);
      
    });

      var rutlandcontent =  '<p>Rutland Food Trail</p><p><a href="Trails/Rutland.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: rutlandcontent
  });            var olivebranch = new google.maps.LatLng(52.734162, -0.564699);
                    var marker14 = new google.maps.Marker({
                        position: olivebranch,
                        map: map
                    });
     
                    google.maps.event.addListener(marker14, 'click', function() {
      infowindow.open(map, this);
      
    });

      var exetercontent =  '<p>Exeters Food Trail</p><p><a href="Trails/Exeter.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: exetercontent
  });            var hartnells = new google.maps.LatLng(50.726489, -3.527031);
                    var marker15 = new google.maps.Marker({
                        position: hartnells,
                        map: map
                    });
     
                    google.maps.event.addListener(marker15, 'click', function() {
      infowindow.open(map, this);
      
    });

      var cheesecontent =  '<p>Scottish Cheese Trail</p><p><a href="Trails/Scotland/Cheese.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: cheesecontent
  });            var connage = new google.maps.LatLng(57.568133, -4.036627);
                    var marker16 = new google.maps.Marker({
                        position: connage,
                        map: map
                    });
     
                    google.maps.event.addListener(marker16, 'click', function() {
      infowindow.open(map, this);
      
    });

      var finestflavourscontent =  '<p>Scotlands Finest Flavours Itinerary</p><p><a href="Trails/Scotland/FinestFlavours.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: finestflavourscontent
  });            var threave = new google.maps.LatLng(54.9228592, -3.9473534);
                    var marker17 = new google.maps.Marker({
                        position: threave,
                        map: map
                    });
     
                    google.maps.event.addListener(marker17, 'click', function() {
      infowindow.open(map, this);
      
    });

      var lochlomondcontent =  '<p>Loch Lomond Food Trail</p><p><a href="Trails/Scotland/LochLomond.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: lochlomondcontent
  });            var wishart = new google.maps.LatLng(56.013599, -4.6084105);
                    var marker18 = new google.maps.Marker({
                        position: wishart,
                        map: map
                    });
     
                    google.maps.event.addListener(marker18, 'click', function() {
      infowindow.open(map, this);
      
    });
    
    //

      var realalecontent =  '<p>Scotlands Real Ale Trail</p><p><a href="Trails/Scotland/RealAle.html">'+
      'Go to trail</a></p>';

  infowindow = new google.maps.InfoWindow({
    content: realalecontent
  });            var wishart = new google.maps.LatLng(56.013599, -4.6084105);
                    var marker19 = new google.maps.Marker({
                        position: wishart,
                        map: map
                    });
     
                    google.maps.event.addListener(marker19, 'click', function() {
      infowindow.open(map, this);
      
    });


    }
        google.maps.event.addDomListener(window, 'load', initialize);
        
        
        
        
        