// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'mdbootstrap/scss/mdb-free'
import 'mdbootstrap/js/mdb'
// require("../stylesheets/application.scss")
import "@fortawesome/fontawesome-free/css/all"
import '../src/bootstrap.js'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// $(document).on('turbolinks:load', function() {
//     $('body').tooltip({
//       selector: '[data-toggle="tooltip"]',
//       container: 'body',
//     });
  
//     $('body').popover({
//       selector: '[data-toggle="popover"]',
//       container: 'body',
//       html: true,
//       trigger: 'hover',
//     });
//   });