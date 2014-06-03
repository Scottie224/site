function close() {
    infowindow.close();
	infowindow0.close();
	infowindow1.close();
	infowindow2.close();
	infowindow3.close();
	infowindow4.close();
	infowindow5.close();
	infowindow6.close();
	infowindow7.close();
	infowindow8.close();
	infowindow9.close();
	infowindow10.close();
	infowindow11.close();
	infowindow12.close();
	infowindow13.close();
	infowindow14.close();
	infowindow15.close();
	infowindow16.close();
	infowindow17.close();
	infowindow18.close();
	infowindow19.close();
	infowindow20.close();
	infowindow21.close();
}


function initialize() {
            var mapOptions = {
                center: new google.maps.LatLng(55.3617609, -3.4433238),
                zoom: 5
            };
            var map = new google.maps.Map(document.getElementById("Map"),
                mapOptions);
                
                
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
                    close();
      infowindow.open(map, this);
      
    });                
                    
      var clwydiancontent =  '<p>Clwydian Range Food Trail</p><p><a href="Trails/ClwydianRange.html">'+
      'Go to trail</a></p>';

  infowindow0 = new google.maps.InfoWindow({
    content: clwydiancontent
  });            var caffiflorence = new google.maps.LatLng(53.154182, -3.201377);
                    var marker1 = new google.maps.Marker({
                        position: caffiflorence,
                        map: map
                    });
                    
                    google.maps.event.addListener(marker1, 'click', function() {
                    close();
      infowindow0.open(map, this);
      
    });
                    
      var carmarthenshirenorthcontent =  '<p>Carmarthenshire North Food Trail</p><p><a href="Trails/CarmarthenshireNorth.html">'+
      'Go to trail</a></p>';

  infowindow1 = new google.maps.InfoWindow({
    content: carmarthenshirenorthcontent
  });            var cawscenarth = new google.maps.LatLng(52.015872, -4.521807);
                    var marker2 = new google.maps.Marker({
                        position: cawscenarth,
                        map: map
                    });
                    
                    google.maps.event.addListener(marker2, 'click', function() {
                    close();
      infowindow1.open(map, this);
      
    });

      var carmarthenshireeastcontent =  '<p>Carmarthenshire East Food Trail</p><p><a href="Trails/CarmarthenshireEast.html">'+
      'Go to trail</a></p>';

  infowindow2 = new google.maps.InfoWindow({
    content: carmarthenshireeastcontent
  });            var cnwd = new google.maps.LatLng(51.7949816, -4.0752488);
                    var marker3 = new google.maps.Marker({
                        position: cnwd,
                        map: map
                    });
                    
                    google.maps.event.addListener(marker3, 'click', function() {
                    close();
      infowindow2.open(map, this);
      
    });

      var carmarthenshirewestcontent =  '<p>Carmarthenshire West Food Trail</p><p><a href="Trails/CarmarthenshireWest.html">'+
      'Go to trail</a></p>';

  infowindow3 = new google.maps.InfoWindow({
    content: carmarthenshirewestcontent
  });            var albertrees = new google.maps.LatLng(51.857687, -4.309087);
                    var marker4 = new google.maps.Marker({
                        position: albertrees,
                        map: map
                    });

                    google.maps.event.addListener(marker4, 'click', function() {
                    close();
      infowindow3.open(map, this);
      
    });
    
      var chestercontent =  '<p>Chester Ale Trail</p><p><a href="Trails/Chester.html">'+
      'Go to trail</a></p>';

  infowindow4 = new google.maps.InfoWindow({
    content: chestercontent
  });            var bawnlodge = new google.maps.LatLng(53.200281, -2.876902);
                    var marker5 = new google.maps.Marker({
                        position: bawnlodge,
                        map: map
                    });
     
                    google.maps.event.addListener(marker5, 'click', function() {
                    close();
      infowindow4.open(map, this);
      
    });

      var flintshirecontent =  '<p>Flintshire Real Ale Trail</p><p><a href="Trails/Flintshire.html">'+
      'Go to trail</a></p>';

  infowindow5 = new google.maps.InfoWindow({
    content: flintshirecontent
  });            var goldcape = new google.maps.LatLng(53.166431, -3.141218);
                    var marker6 = new google.maps.Marker({
                        position: goldcape,
                        map: map
                    });
     
                    google.maps.event.addListener(marker6, 'click', function() {
                    close();
      infowindow5.open(map, this);
      
    });

      var worcestershirefarmcontent =  '<p>Worcestershire Farm and Produce Trail</p><p><a href="Trails/WorcestershireFarm.html">'+
      'Go to trail</a></p>';

  infowindow6 = new google.maps.InfoWindow({
    content: worcestershirefarmcontent
  });            var arrayfruit = new google.maps.LatLng(52.344854, -2.075683);
                    var marker7 = new google.maps.Marker({
                        position: arrayfruit,
                        map: map
                    });
     
                    google.maps.event.addListener(marker7, 'click', function() {
                    close();
      infowindow6.open(map, this);
      
    });

      var worcestershiremeatcontent =  '<p>Worcestershire Meat and Poultry Trail</p><p><a href="Trails/WorcestershireMeat.html">'+
      'Go to trail</a></p>';

  infowindow7 = new google.maps.InfoWindow({
    content: worcestershiremeatcontent
  });            var checketts = new google.maps.LatLng(52.270337, -2.228401);
                    var marker8 = new google.maps.Marker({
                        position: checketts,
                        map: map
                    });
     
                    google.maps.event.addListener(marker8, 'click', function() {
                    close();
      infowindow7.open(map, this);
      
    });

      var worcestershiredairycontent =  '<p>Worcestershire Dairy Produce and Eggs Trail</p><p><a href="Trails/WorcestershireDairy.html">'+
      'Go to trail</a></p>';

  infowindow8 = new google.maps.InfoWindow({
    content: worcestershiredairycontent
  });            var akiki = new google.maps.LatLng(52.189735, -2.058417);
                    var marker9 = new google.maps.Marker({
                        position: akiki,
                        map: map
                    });
     
                    google.maps.event.addListener(marker9, 'click', function() {
                    close();
      infowindow8.open(map, this);
      
    });

      var worcestershirecondimentscontent =  '<p>Worcestershire Condiments, Preserves and Honey Trail</p><p><a href="Trails/WorcestershireCondiments.html">'+
      'Go to trail</a></p>';

  infowindow9 = new google.maps.InfoWindow({
    content: worcestershirecondimentscontent
  });            var berrows = new google.maps.LatLng(52.219755, -2.371459);
                    var marker10 = new google.maps.Marker({
                        position: berrows,
                        map: map
                    });
     
                    google.maps.event.addListener(marker10, 'click', function() {
                    close();
      infowindow9.open(map, this);
      
    });

      var worcestershiredelicatessenscontent =  '<p>Worcestershire Delicatessens Trail</p><p><a href="Trails/WorcestershireDelicatessens.html">'+
      'Go to trail</a></p>';

  infowindow10 = new google.maps.InfoWindow({
    content: worcestershiredelicatessenscontent
  });            var deli6 = new google.maps.LatLng(52.26832, -2.147981);
                    var marker11 = new google.maps.Marker({
                        position: deli6,
                        map: map
                    });
     
                    google.maps.event.addListener(marker11, 'click', function() {
                    close();
      infowindow10.open(map, this);
      
    });

      var worcestershirebeveragescontent =  '<p>Worcestershire Beverages Trail</p><p><a href="Trails/WorcestershireBeverages.html">'+
      'Go to trail</a></p>';

  infowindow11 = new google.maps.InfoWindow({
    content: worcestershirebeveragescontent
  });            var astley = new google.maps.LatLng(52.305688, -2.288318);
                    var marker11 = new google.maps.Marker({
                        position: astley,
                        map: map
                    });
     
                    google.maps.event.addListener(marker11, 'click', function() {
                    close();
      infowindow11.open(map, this);
      
    });

      var worcestershirebakedcontent =  '<p>Worcestershire Baked Goods and Confectionary Trail</p><p><a href="Trails/WorcestershireBaked.html">'+
      'Go to trail</a></p>';

  infowindow12 = new google.maps.InfoWindow({
    content: worcestershirebakedcontent
  });            var fudgeheaven = new google.maps.LatLng(52.301197, -2.073761);
                    var marker12 = new google.maps.Marker({
                        position: fudgeheaven,
                        map: map
                    });
     
                    google.maps.event.addListener(marker12, 'click', function() {
                    close();
      infowindow12.open(map, this);
      
    });

      var rutlandcontent =  '<p>Rutland Food Trail</p><p><a href="Trails/Rutland.html">'+
      'Go to trail</a></p>';

  infowindow13 = new google.maps.InfoWindow({
    content: rutlandcontent
  });            var olivebranch = new google.maps.LatLng(52.734162, -0.564699);
                    var marker13 = new google.maps.Marker({
                        position: olivebranch,
                        map: map
                    });
     
                    google.maps.event.addListener(marker13, 'click', function() {
                    close();
      infowindow13.open(map, this);
      
    });

      var exetercontent =  '<p>Exeters Food Trail</p><p><a href="Trails/Exeter.html">'+
      'Go to trail</a></p>';

  infowindow14 = new google.maps.InfoWindow({
    content: exetercontent
  });            var hartnells = new google.maps.LatLng(50.726489, -3.527031);
                    var marker14 = new google.maps.Marker({
                        position: hartnells,
                        map: map
                    });
     
                    google.maps.event.addListener(marker14, 'click', function() {
                    close();
      infowindow14.open(map, this);
      
    });

      var cheesecontent =  '<p>Scottish Cheese Trail</p><p><a href="Trails/Scotland/Cheese.html">'+
      'Go to trail</a></p>';

  infowindow15 = new google.maps.InfoWindow({
    content: cheesecontent
  });            var connage = new google.maps.LatLng(57.568133, -4.036627);
                    var marker15 = new google.maps.Marker({
                        position: connage,
                        map: map
                    });
     
                    google.maps.event.addListener(marker15, 'click', function() {
                    close();
      infowindow15.open(map, this);
      
    });

      var finestflavourscontent =  '<p>Scotlands Finest Flavours Itinerary</p><p><a href="Trails/Scotland/FinestFlavours.html">'+
      'Go to trail</a></p>';

  infowindow16 = new google.maps.InfoWindow({
    content: finestflavourscontent
  });            var threave = new google.maps.LatLng(54.9228592, -3.9473534);
                    var marker16 = new google.maps.Marker({
                        position: threave,
                        map: map
                    });
     
                    google.maps.event.addListener(marker16, 'click', function() {
                    close();
      infowindow16.open(map, this);
      
    });

      var lochlomondcontent =  '<p>Loch Lomond Food Trail</p><p><a href="Trails/Scotland/LochLomond.html">'+
      'Go to trail</a></p>';

  infowindow17 = new google.maps.InfoWindow({
    content: lochlomondcontent
  });            var wishart = new google.maps.LatLng(56.013599, -4.6084105);
                    var marker17 = new google.maps.Marker({
                        position: wishart,
                        map: map
                    });
     
                    google.maps.event.addListener(marker17, 'click', function() {
                    close();
      infowindow17.open(map, this);
      
    });

      var realalecontent =  '<p>Scotlands Real Ale Trail</p><p><a href="Trails/Scotland/RealAle.html">'+
      'Go to trail</a></p>';

  infowindow18 = new google.maps.InfoWindow({
    content: realalecontent
  });            var wishart = new google.maps.LatLng(56.013599, -4.6084105);
                    var marker18 = new google.maps.Marker({
                        position: wishart,
                        map: map
                    });
     
                    google.maps.event.addListener(marker18, 'click', function() {
                    close();
      infowindow18.open(map, this);
      
    });
    
    
    var outerhebridescontent =  '<p>Outer Hebrides Food and Drink Trail</p><p><a href="Trails/Scotland/OuterHebrides.html">'+
      'Go to trail</a></p>';

  infowindow19 = new google.maps.InfoWindow({
    content: outerhebridescontent
  });            var smokehouse = new google.maps.LatLng(57.552444, -7.334652);
                    var marker19 = new google.maps.Marker({
                        position: smokehouse,
                        map: map
                    });
     
                    google.maps.event.addListener(marker19, 'click', function() {
                    close();
      infowindow19.open(map, this);
      
    });

    var whiskycoastcontent =  '<p>The Whisky Coast Itinerary</p><p><a href="Trails/Scotland/WhiskyCoast.html">'+
      'Go to trail</a></p>';

  infowindow20 = new google.maps.InfoWindow({
    content: whiskycoastcontent
  });            var springbank = new google.maps.LatLng(55.426552, -5.608502);
                    var marker20 = new google.maps.Marker({
                        position: springbank,
                        map: map
                    });
     
                    google.maps.event.addListener(marker20, 'click', function() {
                    close();
      infowindow20.open(map, this);
      
    });

    var maltwhiskycontent =  '<p>Scotlands Malt Whisky Trail</p><p><a href="Trails/Scotland/MaltWhisky.html">'+
      'Go to trail</a></p>';

  infowindow21 = new google.maps.InfoWindow({
    content: maltwhiskycontent
  });            var benromach = new google.maps.LatLng(57.613354, -3.619394);
                    var marker21 = new google.maps.Marker({
                        position: benromach,
                        map: map
                    });
     
                    google.maps.event.addListener(marker21, 'click', function() {
                    close();
      infowindow21.open(map, this);
      
    });

    }
        google.maps.event.addDomListener(window, 'load', initialize);
        
        
        
        
        