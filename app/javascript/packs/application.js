import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder';
import 'simplebar';
import 'simplebar/dist/simplebar.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { geoloc } from '../plugins/geoloc';
import { mobileMap } from '../vanilla/mobile_map';

initAutocomplete();
initMapbox();

if (document.querySelector('.geoloc')) {
  geoloc();
};

if (document.querySelector('#map-opener')) {
  console.log('hello')
  mobileMap();
}
