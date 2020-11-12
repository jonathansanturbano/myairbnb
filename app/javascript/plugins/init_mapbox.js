import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 50, maxZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);

    const my_markers = document.querySelectorAll('.mapboxgl-marker');
    const my_cards = document.querySelectorAll('.card-product');

    let i = 0;
    my_markers.forEach(marker => {
      marker.dataset.id = my_cards[i].id
      i += 1;
    });

    my_markers.forEach(marker => {
      marker.addEventListener('mouseenter', (e) => {
        e.currentTarget.childNodes[0].style.cssText = "height: 50px; width: 50px;"
        document.getElementById(`${e.currentTarget.dataset.id}`).classList.add('active');
      });
      marker.addEventListener('mouseleave', (e) => {
        e.currentTarget.childNodes[0].style.cssText = "height: 41px; width: 27px;"
        document.getElementById(`${e.currentTarget.dataset.id}`).classList.remove('active');
      });
    })
    // my_markers.forEach(marker => {
    //   marker.addEventListener('mouseenter', (e) => {
    //     my_cards[e.currentTarget.dataset.id]
    //   })
    // });
  }
};

export { initMapbox };
