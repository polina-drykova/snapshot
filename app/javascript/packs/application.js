import "bootstrap";
import "flatpickr/dist/flatpickr.min.css";
import {initFlatpickr} from "../plugins/init_flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import {calculatePrice} from "../components/calculatePrice"

initMapbox();

calculatePrice()

initFlatpickr()
