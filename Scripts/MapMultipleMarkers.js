function initialize() {
    var UoCLatlng = new google.maps.LatLng(53.199269, -2.898299);
    var mapOptions = {
        zoom: 15,
        center: UoCLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(document.getElementById('andrewsMap'), mapOptions);

    var BinksLatlng = new google.maps.LatLng(53.200143, -2.898685);
    var markerBinks = new google.maps.Marker({
        position: BinksLatlng,
        map: map,
        title: 'Binks'
    });

    var ChritchleyLatlng = new google.maps.LatLng(53.201595, -2.900981);
    var markerChritchley = new google.maps.Marker({
        position: ChritchleyLatlng,
        map: map,
        title: 'Chritchley'
    });

    var SULatlng = new google.maps.LatLng(53.198486, -2.898808);
    var markerSU = new google.maps.Marker({
        position: SULatlng,
        map: map,
        title: 'Student Union'
    });
}
//code to run the above initialise code once the window has loaded
google.maps.event.addDomListener(window, 'load', initialize);