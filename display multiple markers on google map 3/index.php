<!DOCTYPE html>
<html>
<head>
    <title>Simple Markers</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <style type="text/css">
        #map {
            height: 70%;
        }

        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
    <script>

        function initMap() {
            // const myLatLng = {lat: 30.375321, lng: 69.34511599999999};
            const myLatLng = {lat: 37.09024, lng: -95.712891};
            const map = new google.maps.Map(document.getElementById("map"), {
                zoom: 5,
                center: myLatLng,
            });

            let lat, lng;
            $.get("CitiesController.php", function(data, status){
                if(status === "success"){
                    let cities = JSON.parse(data);
                    for(let city of cities){
                        let cityId = city["id"];

                        $.get("https://maps.googleapis.com/maps/api/geocode/json?address="+city["city"]+"&key=AIzaSyCUDGcQ821ukCgfe6M-brQkQLin5WCGWUA", function(data, status){
                            if(status === "success"){
                                lat = data["results"][0]["geometry"]["location"]["lat"];
                                lng = data["results"][0]["geometry"]["location"]["lng"];
                                const infowindow = new google.maps.InfoWindow({
                                    content: `<a href="https://www.google.com"><div style="text-align: center"><h3>${city["city"]}</h3></div><div style="text-align: center"><img src='https://image.shutterstock.com/image-vector/d-letter-logo-design-creative-260nw-568225108.jpg' width='100%' height='150'/></div></a>`,
                                });

                                setMarkers(map, lat, lng, city["city"], infowindow);
                            }
                        });
                    }
                }
            });
        }

        function setMarkers(map, lat, lng, city, infowindow) {
            const marker = new google.maps.Marker({
                position: { lat: lat, lng: lng },
                map,
                title: city,
            });

            marker.addListener("mouseover", () => {
                infowindow.open(map, marker);
            });
            // marker.addListener("mouseout", () => {
            //     infowindow.close(map, marker);
            // });
        }
    </script>
</head>
<body>
<div id="map"></div>

<script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCUDGcQ821ukCgfe6M-brQkQLin5WCGWUA&callback=initMap&libraries=&v=weekly"
    async
></script>
</body>
</html>