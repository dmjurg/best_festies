function initRegions() {
  var myOptions = { mapTypeId: google.maps.MapTypeId.ROADMAP };
  var map = new google.maps.Map(document.getElementById("map"), myOptions);
  var geocoder = new google.maps.Geocoder();

  geocoder.geocode({'address': 'US'}, function (results, status) {
    var ne = results[0].geometry.viewport.getNorthEast();
    var sw = results[0].geometry.viewport.getSouthWest();

    map.fitBounds(results[0].geometry.viewport);
  });
}
