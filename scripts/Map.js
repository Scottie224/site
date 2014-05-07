function initialize() {

    //variable holds location (latitude and longitude)
    var SiSolLatlng = new google.maps.LatLng(53.10114, -2.44102);

    //map options
    var mapOptions = {
        zoom: 15,
        center: SiSolLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    //identifies and places map in element 'contactMap' (in masterpage)
    var map = new google.maps.Map(document.getElementById('contactMap'), mapOptions);

    //map marker - location and title
    var marker = new google.maps.Marker({
        position: SiSolLatlng,
        map: map,
        title: 'Si Solutions'
    });
}

//runs code after the window has loaded
google.maps.event.addDomListener(window, 'load', initialize);