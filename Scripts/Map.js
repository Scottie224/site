function initialize() {

    //create a variable to hold location (latitude and longitude)
    var UoCLatlng = new google.maps.LatLng(53.199269, -2.898299);

    //set the map's options (zoom level, centre, type)
    var mapOptions = {
        zoom: 11,
        center: UoCLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    //identify the element to place the map in (e.g. a div)
    var map = new google.maps.Map(document.getElementById('Map'), mapOptions);

    //create a marker for the map with location and title
    var marker = new google.maps.Marker({
        position: UoCLatlng,
        map: map,
        title: 'University of Chester'
    });
}

//code to run the above initialise code once the window has loaded
google.maps.event.addDomListener(window, 'load', initialize);