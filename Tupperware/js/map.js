function myMap() {
    var myLatLng = { lat: 5.000940, lng: 115.021055 };

    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        center: myLatLng
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
    });
}