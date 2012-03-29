var map;
var markersArray = [];

function initialize() {

	var myOptions = {
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById("mapCanvas"),	myOptions);
        populateMap();
}

function populateMap() {

	var address = gon.addresses;
	var length = address.length;

	for (a = 0; a < length; a++) {
		codeAddress(address[a]);
	}
}

function codeAddress(address) {

	map.setZoom(13);
	var geocoder = new google.maps.Geocoder();
	geocoder.geocode({ 'address': address}, function(results, status){
		if (status == google.maps.GeocoderStatus.OK) {
			for (i = 0; i < results.length; i++) {
				map.setCenter(results[i].geometry.location);
				var marker = new google.maps.Marker({
					map: map,
					position: results[i].geometry.location
				});
				markersArray.push(marker);
			}
		} else {
			alert("Geocode fail!  This is why: " + status);
		}
	});
}

function clearOverlays() {
  if (markersArray) {
    for (i = 0; i < markersArray.length; i++ ) {
      markersArray[i].setMap(null);
    }
  }
}
