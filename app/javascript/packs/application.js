import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { priceCalculator } from "./price_calculator";

initMapbox();
priceCalculator();
