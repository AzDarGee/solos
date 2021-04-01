const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
    Popper: ['popper.js', 'default'],
    mapboxgl: 'mapbox-gl',

    // Window
    'window.jQuery': 'jquery',

    // Individual Bootstrap plugins
    Util:"exports-loader?Util!bootstrap/js/dist/util",
    Tooltip:"exports-loader?Tooltip!bootstrap/js/dist/tooltip",
    Popover:"exports-loader?Popover!bootstrap/js/dist/popover",
    Alert:"exports-loader?Alert!bootstrap/js/dist/alert",
    Carousel:"exports-loader?Carousel!bootstrap/js/dist/carousel",
    Dropdown:"exports-loader?Dropdown!bootstrap/js/dist/dropdown",
    Modal:"exports-loader?Modal!bootstrap/js/dist/modal",
    Tab:"exports-loader?Tab!bootstrap/js/dist/tab",
    Scrollspy:"exports-loader?Scrollspy!bootstrap/js/dist/scrollspy",
    Collapse:"exports-loader?Collapse!bootstrap/js/dist/collapse",
    Button:"exports-loader?Button!bootstrap/js/dist/button"
  })
)

module.exports = environment
