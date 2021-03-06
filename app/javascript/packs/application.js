import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder';
import 'simplebar';
import 'simplebar/dist/simplebar.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { geoloc } from '../plugins/geoloc';
import { mobileMap } from '../vanilla/mobile_map';
import { initFlatpickr } from '../plugins/flatpickr';
import { initModal } from '../vanilla/modal';
import { initSelect2 } from '../plugins/init_select2';

initAutocomplete();
initMapbox();
initSelect2();

if (document.querySelector('.datepicker')) {
  initFlatpickr();
};

if (document.querySelector('.geoloc')) {
  geoloc();
};

if (document.querySelector('#map-opener')) {
  mobileMap();
}

if (document.querySelector('.book-button')) {
  initModal();
};
