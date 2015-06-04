$(document).ready(initRegions);

function initRegions() {
  var myOptions = { mapTypeId: google.maps.MapTypeId.ROADMAP };
  var map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);
  var geocoder = new google.maps.Geocoder();

  geocoder.geocode({'address': 'US'}, function (results, status) {
    var ne = results[0].geometry.viewport.getNorthEast();
    var sw = results[0].geometry.viewport.getSouthWest();

    map.fitBounds(results[0].geometry.viewport);
  });

  var myLatlng = new google.maps.LatLng(33.7205771, -116.2155619);

  var marker = new google.maps.Marker({
      position: myLatlng,
  });

  marker.setMap(map);

  var infowindow = new google.maps.InfoWindow({
  content: "Coachella"
  });

  infowindow.open(map,marker);
}
