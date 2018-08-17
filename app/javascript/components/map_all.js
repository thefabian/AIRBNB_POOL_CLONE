import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_all")) {
  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map_all = new mapboxgl.Map({
  container: 'map_all',
  center: [52, 13],
  style: 'mapbox://styles/mapbox/streets-v10',
  minZoom: 5
  });
  map_all.addControl(new mapboxgl.NavigationControl());

  const pools = document.querySelectorAll(".card-category.lat-lng");
  var num_pools = parseFloat(pools.length);

  var lat_all = parseFloat(0.0);
  var lng_all = parseFloat(0.0);



  pools.forEach((pool) => {
    var lat = parseFloat(pool.dataset.lat);
    var lng = parseFloat(pool.dataset.lng);

   if (!isNaN(lat)) {
    lat_all += lat;
    lng_all += lng;

    var marker = new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map_all);

   }else {
    num_pools -=1;
   };
  });


  var lat_avg = lat_all/num_pools;
  var lng_avg = lng_all/num_pools;

  map_all.flyTo({center: [lng_avg, lat_avg], zoom: 10});
};

export { map_all }
