import "bootstrap";
import "flatpickr/dist/flatpickr.min.css";
import {initFlatpickr} from "../plugins/init_flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete  } from '../plugins/init_autocomplete';
import {calculatePrice} from "../components/calculatePrice";
import { initStarRating } from '../plugins/init_star_rating';


initMapbox();
calculatePrice();
initFlatpickr();
initAutocomplete();
initStarRating();
