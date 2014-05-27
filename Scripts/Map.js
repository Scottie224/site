
        function initialize() {
            var mapOptions = {
                center: new google.maps.LatLng(54.3819717, -3.5312144),
                zoom: 6
            };
            var map = new google.maps.Map(document.getElementById("Map"),
                mapOptions);
            var stanleyhouse = new google.maps.LatLng(53.767684, -2.540424);
                    var marker = new google.maps.Marker({
                        position: stanleyhouse,
                        map: map
                    });
            var millstone = new google.maps.LatLng(53.773671, -2.530863);
                    var marker = new google.maps.Marker({
                        position: millstone,
                        map: map
                    });
            var dowsons = new google.maps.LatLng(53.785658, -2.526687);
                    var marker = new google.maps.Marker({
                        position: dowsons,
                        map: map
                    });
            var northcote = new google.maps.LatLng(53.809064,-2.44752);
                    var marker = new google.maps.Marker({
                        position: northcote,
                        map: map
                    });
            var whalley = new google.maps.LatLng(53.821794, -2.407309);
                    var marker = new google.maps.Marker({
                        position: whalley,
                        map: map
                    });
            var bredamurphy = new google.maps.LatLng(53.823615, -2.41229);
                    var marker = new google.maps.Marker({
                        position: bredamurphy,
                        map: map
                        });
            var threefishers = new google.maps.LatLng(53.846677, -2.435771);
                    var marker = new google.maps.Marker({
                        position: threefishers,
                        map: map
                        });
            var cowmans = new google.maps.LatLng(53.871824, -2.392232);
                    var marker = new google.maps.Marker({
                        position: cowmans,
                        map: map
                        });
            var tchaikovsky = new google.maps.LatLng(53.8715386, -2.3914298);
                    var marker = new google.maps.Marker({
                        position: tchaikovsky,
                        map: map
                        });
            var mansells = new google.maps.LatLng(53.8715386, -2.3914298);
                    var marker = new google.maps.Marker({
                        position: mansells,
                        map: map 
                        });
            var dbyrne = new google.maps.LatLng(53.872909, -2.391754);
                    var marker = new google.maps.Marker({
                        position: dbyrne,
                        map: map
                        });
            var fergusons = new google.maps.LatLng(53.8721286, -2.3943697);
                    var marker = new google.maps.Marker({
                        position: fergusons,
                        map: map
                        });
            var exchangecoffee = new google.maps.LatLng(53.872495, -2.389748);
                    var marker = new google.maps.Marker({
                        position: exchangecoffee,
                        map: map
                        });
            var wellgatefisheries = new google.maps.LatLng(53.872143, -2.3887515);
                    var marker = new google.maps.Marker({
                        position: wellgatefisheries,
                        map: map
                        });
            var dukeyork = new google.maps.LatLng(53.904849, -2.368173);
                    var marker = new google.maps.Marker({
                        position: dukeyork,
                        map: map
                        });
            var spreadeagle = new google.maps.LatLng(53.914856, -2.341614);
                    var marker = new google.maps.Marker({
                        position: spreadeagle,
                        map: map
                        });
            var storkhouse = new google.maps.LatLng(53.929458, -2.288323);
                    var marker = new google.maps.Marker({
                        position: storkhouse,
                        map: map
                        });
            var gazegill = new google.maps.LatLng(53.977711, -2.3886175);
                    var marker = new google.maps.Marker({
                        position: gazegill,
                        map: map
                        });
            var robinsonseggs = new google.maps.LatLng(53.96725, -2.40576);
                    var marker = new google.maps.Marker({
                        position: robinsonseggs,
                        map: map
                        });
            var beltingoodbeef = new google.maps.LatLng(53.874938, -2.577183);
                    var marker = new google.maps.Marker({
                        position: beltingoodbeef,
                        map: map
                        });
            var parkersarms = new google.maps.LatLng(53.948594, -2.462348);
                    var marker = new google.maps.Marker({
                        position: parkersarms,
                        map: map
                        });
            var whitewellinn = new google.maps.LatLng(53.91716, -2.520442);
                    var marker = new google.maps.Marker({
                        position: whitewellinn,
                        map: map
                        });
            var gibbonbridge = new google.maps.LatLng(53.876896, -2.553284);
                    var marker = new google.maps.Marker({
                        position: gibbonbridge,
                        map: map
                        });
            var leagramdairy = new google.maps.LatLng(53.8794219, -2.5527628);
                    var marker = new google.maps.Marker({
                        position: leagramdairy,
                        map: map
                        });
            var robinsonsbros = new google.maps.LatLng(53.8832447, -2.5780927);
                    var marker = new google.maps.Marker({
                        position: robisonsbros,
                        map: map
                        });
            var littletown = new google.maps.LatLng(53.848362,-2.599183);
                    var marker = new google.maps.Marker({
                        position: littletown,
                        map: map
                        });
            var tinascorner = new google.maps.LatLng(53.8300843,-2.6075706);
                    var marker = new google.maps.Marker({
                        position: tinascorner,
                        map: map
                        });
            var redpump = new google.maps.LatLng(53.883931, -2.464284);
                    var marker = new google.maps.Marker({
                        position: redpump,
                        map: map
                        });
            var bashallbarn = new google.maps.LatLng(53.8794368, -2.4297285);
                    var marker = new google.maps.Marker({
                        position: bashallbarn,
                        map: map
                    });

        }
        google.maps.event.addDomListener(window, 'load', initialize);