import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_pool")) {
  var lat = document.getElementById("map_pool").dataset.lat;
  var lng = document.getElementById("map_pool").dataset.lng;

  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map = new mapboxgl.Map({
  container: 'map_pool',
  center: [lng, lat],
  style: 'mapbox://styles/mapbox/streets-v10',
  minZoom: 0
  });

  var marker = new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);
};

export { map }
