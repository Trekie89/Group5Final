<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Find a route using Geolocation and Google Maps API</title>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

    <script>
        function calculateRoute(from, to) {
            // Center initialized to Naples, Italy
            var myOptions = {
                zoom: 15,
                center: new google.maps.LatLng(42.351417, -83.060537),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            // Draw the map
            var mapObject = new google.maps.Map(document.getElementById("map"), myOptions);

            var directionsService = new google.maps.DirectionsService();
            var directionsRequest = {
                origin: from,
                destination: to,
                travelMode: google.maps.DirectionsTravelMode.WALKING,
                unitSystem: google.maps.UnitSystem.IMPERIAL
            };
            directionsService.route(
                directionsRequest,
                function(response, status)
                {
                    if (status == google.maps.DirectionsStatus.OK)
                    {
                        new google.maps.DirectionsRenderer({
                            map: mapObject,
                            directions: response,
                        });
                    }
                    else
                        $("#error").append("Unable to retrieve your route<br />");
                }
            );
        }

        $(document).ready(function() {
            // If the browser supports the Geolocation API
            if (typeof navigator.geolocation == "undefined") {
                $("#error").text("Your browser doesn't support the Geolocation API");
                return;
            }

            $("#from-link, #to-link").click(function(event) {
                event.preventDefault();
                var addressId = this.id.substring(0, this.id.indexOf("-"));

                navigator.geolocation.getCurrentPosition(function(position) {
                        var geocoder = new google.maps.Geocoder();
                        geocoder.geocode({
                                "location": new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
                            },
                            function(results, status) {
                                if (status == google.maps.GeocoderStatus.OK)
                                    $("#" + addressId).val(results[0].formatted_address);
                                else
                                    $("#error").append("Unable to retrieve your address<br />");
                            });
                    },
                    function(positionError){
                        $("#error").append("Error: " + positionError.message + "<br />");
                    },
                    {
                        enableHighAccuracy: true,
                        timeout: 10 * 1000 // 10 seconds
                    });
            });

            $("#calculate-route").submit(function(event) {
                event.preventDefault();
                calculateRoute($("#from").val(), $("#to").val());
            });
        });
    </script>
    <style type="text/css">
        #map {
            width: 500px;
            height: 400px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<h1>Calculate your route</h1>
<%--<form id="calculate-route" name="calculate-route" action="#" method="get">
    <label for="from">From:</label>
    <input type="text" id="from" name="from" required="required" placeholder="An address" size="30" />
    <a id="from-link" href="#">Get my position</a>
    <br />

    <label for="to">To:</label>
    <input type="text" id="to" name="to" required="required" placeholder="Another address" size="30" action="#"/>
    &lt;%&ndash;<a id="to-link" href="#">Get my position</a>&ndash;%&gt;
    <br />

    <input type="submit" />
    <input type="reset" />
</form>--%>

<form id="calculate-route" name="calculate-route" action="#" method="get">
    <label for="from">From:</label>
    <input type="text" id="from" name="from" required="required" placeholder="An address" size="30" />
    <a id="from-link" href="#">Get my position</a>
    <br />

    <label for="to">To:</label>
    <select name="stationId" id="to" name="to" action="#" >
        <option value="" disabled="disabled" selected="selected">Please select a station</option>
        <option value= "42.329, -83.045">Congress</option>
        <option value="42.332, -83.047">Campus Martius</option>
        <option value="42.336, -83.050">Grand Circus</option>
        <option value="42.339, -83.052">FoxTown </option>
        <option value="5">Sibley</option>
        <option value="42.347, -83.057">Martin Luther King Jr.</option>
        <option value="42.352, -83.061">Canfield</option>
        <option value="42.357, -83.064">Warren</option>
        <option value="42.361, -83.067">Ferry</option>
        <option value="42.366, -83.071">Amsterdam</option>
        <option value="11">Amtrak</option>
        <option value="42.370, -83.073">Grand Station</option>
    </select>
    <br/>
    <input type="submit" />
    <input type="reset" />
</form>




<div id="map"></div>
<p id="error"></p>
</body>
</html>