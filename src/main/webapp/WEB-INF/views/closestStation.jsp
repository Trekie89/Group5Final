<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body>
<html>
<head>
    <title>Geolocation</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
        #map {
            height: 100%;
        }
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
<div id="map"></div>
<script>
    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 42.351417,
                lng: -83.060537},
            zoom: 15
        });
        var infoWindow = new google.maps.InfoWindow({map: map});
        // HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var currentLocation = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                var points=[new google.maps.LatLng(currentLocation.lat,currentLocation.lng),
                    new google.maps.LatLng(42.329547,-83.045257), //congress
                    new google.maps.LatLng(42.332130,-83.047111), //campus martius
                    new google.maps.LatLng(42.336235,-83.050254), //grand circus
                    new google.maps.LatLng(42.339046,-83.052162), //fox town
                    new google.maps.LatLng(42.342042,-83.054277), //sibley
                    new google.maps.LatLng(42.347690,-83.057952), //mlk
                    new google.maps.LatLng(42.352817,-83.061424), //canfield
                    new google.maps.LatLng(42.357078,-83.064315), //warren
                    new google.maps.LatLng(42.361175,-83.067054), //ferry
                    new google.maps.LatLng(42.366619,-83.071060), //amsterdam
                    new google.maps.LatLng(42.36876,-83.072336), //amtrack
                    new google.maps.LatLng(42.370388,-83.073486), //grand
                ];
//pointA currentLocation
                var pointA = points[0],
                    myOptions = {
                        zoom: 7,
                        center: pointA
                    };
//pointB closest point
                var pointB=closestPoint(points);
                var directionsService = new google.maps.DirectionsService,
                    directionsDisplay = new google.maps.DirectionsRenderer({
                        map: map
                    }),
                    //puts a Marker for current location aka A
                    markerA = new google.maps.Marker({
                        position: pointA,
                        title: "Current Location",
                        label: "A",
                        map: map
                    }),
                    //puts a Marker for destination
                    markerB = new google.maps.Marker({
                        position: pointB,
                        title: "location B",
                        label: "B",
                        map: map
                    });
                //calculate and draw route from A to B
                calculateAndDisplayRoute(directionsService, directionsDisplay, pointA, pointB);
//                infoWindow.setPosition(pos);
//                infoWindow.setContent('Location found.');
//                map.setCenter(pos);
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
        alert(currentLocation.lat);
    }
    //error handling for browser geolocation
    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }
    //Calculates the route using Gmaps Api
    function calculateAndDisplayRoute(directionsService, directionsDisplay, pointA, pointB) {
        directionsService.route({
            origin: pointA,
            destination: pointB,
            avoidTolls: true,
            avoidHighways: false,
            travelMode: google.maps.TravelMode.WALKING //can also be DRIVING
        }, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            } else {
                window.alert('Directions request failed due to ' + status);
            }
        });
    }
    // finds the closest point to current location
    var closestPoint=function (arg){
        var currentLocation=arg[0];
        var closestPoint=arg[1];
        var shortestPath=google.maps.geometry.spherical.computeDistanceBetween(currentLocation,closestPoint);
        for(var i=2;i<arg.length;i++){
            if(google.maps.geometry.spherical.computeDistanceBetween(currentLocation,arg[i]) < shortestPath){
                shortestPath=google.maps.geometry.spherical.computeDistanceBetween(currentLocation,arg[i]);
                closestPoint=arg[i];
            }
        }
        return closestPoint;
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBiTnh1b5-ttcN2zyjt2Sb5VFf0oYdqtqU&libraries=geometry&callback=initMap">
</script>
</body>
</html>


