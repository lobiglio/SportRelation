import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/flatpickr";

import { loadDynamicBannerText } from '../components/banner';

initMapbox();
initAutocomplete();

if (window.location.href === 'http://localhost:3000/' || window.location.href === 'https://sportrelation-lewagon276.herokuapp.com/') {
  loadDynamicBannerText();
}
