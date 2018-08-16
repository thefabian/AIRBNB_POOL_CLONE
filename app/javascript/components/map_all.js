import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_all")) {
  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map_all = new mapboxgl.Map({
  container: 'map_all',
  center: [13, 52],
  style: 'mapbox://styles/mapbox/streets-v10',
  minZoom: 6
  });
  map_all.addControl(new mapboxgl.NavigationControl());
};

export { map_all }
