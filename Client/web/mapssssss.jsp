<%-- 
    Document   : mapssssss
    Created on : 8 juil. 2019, 10:48:28
    Author     : Maryem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <style type="text/css">
<!--
.Style4 {
	font-size: 16px;
	font-weight: bold;
	color: #CC3333;
}
-->
 /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      <!--
.img-logo {
width:250px;
height:100px;
}
.img-logo1 {
width:200px;
height:100px;
}
</style>
    </head>
    <body>
        <h1>Hello World!</h1>
         <script>

      function initMap() {
        var myLatLng = {lat: 34.618757, lng: 9.312772};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 12,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hotel ...'
        });
      }
    </script>
                
            <div id="map"></div>
            
            <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsolkqSTNaW0_azXoMXu0KcI215xkaspY&callback=initMap">
    </script>
    </body>
</html>
