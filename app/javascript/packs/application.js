import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { geoloc } from '../plugins/geoloc';

initAutocomplete();
initMapbox();

if (document.querySelector('.geoloc')) {
  geoloc();
};
