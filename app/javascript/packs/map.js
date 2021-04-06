import mapboxgl from "mapbox-gl"
mapboxgl.workerClass = require("worker-loader!mapbox-gl/dist/mapbox-gl-csp-worker").default;

$( document ).on('turbolinks:load', function() {
 
    mapboxgl.accessToken = 'pk.eyJ1IjoiYXNoZGFyamkiLCJhIjoiY2ttejd2dnY5MGI5MTJ2cWw5bWJuM2xtcCJ9.ncPbLKGcTot6yCJbb10WQg';
    let map = new mapboxgl.Map({
        container: 'map', // container ID
        style: 'mapbox://styles/mapbox/streets-v11', // style URL
        center: [-75.6972, 45.4215], // starting position [lng, lat]
        zoom: 11 // starting zoom
    });

})



