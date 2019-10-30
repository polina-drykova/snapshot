import "bootstrap";
import "flatpickr/dist/flatpickr.min.css";
import {initFlatpickr} from "../plugins/init_flatpickr"
import {calculatePrice} from "../components/calculatePrice"

calculatePrice()
initFlatpickr()
