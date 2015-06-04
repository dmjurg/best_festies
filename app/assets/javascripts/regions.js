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

  locations = [
    ['Coachella', 33.7205771, -116.2155619],
    ['Bonnaroo', 35.4817431, -86.0885993],
    ['Lollapalooza', 41.8781136, -87.6297982],
    ['Ultra', 25.7616798, -80.1917902],
    ['Governors Ball', 40.7127837, -74.0059413]
  ];

  var iconURLPrefix = 'http://maps.google.com/mapfiles/ms/icons/';

  var icons = [
    iconURLPrefix + 'red-dot.png',
    iconURLPrefix + 'green-dot.png',
    iconURLPrefix + 'blue-dot.png',
    iconURLPrefix + 'orange-dot.png',
    iconURLPrefix + 'yellow-dot.png'
  ];

  var iconsLength = icons.length;
  var infowindow = new google.maps.InfoWindow({ maxWidth: 160 });
  var markers = new Array();
  var iconCounter = 0;

  for (var i = 0; i < locations.length; i++)  {
    var marker = new google.maps.Marker({
      position: new google.maps.LatLng(locations[i][1], locations[i][2]),
      map: map,
      icon: icons[iconCounter]
    });
    markers.push(marker);
    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      return function() {
        infowindow.setContent(locations[i][0]);
        infowindow.open(map, marker);
      }
    })(marker, i));
    iconCounter++;
    if(iconCounter >= iconsLength) {
      iconCounter = 0;
    }
  }
}
