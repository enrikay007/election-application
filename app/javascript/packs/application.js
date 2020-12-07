// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


//added chartkick and chart js
require("chartkick")
require("chart.js")


///Added jquery
require("jquery/jquery/dist/jquery.js")
require("jquery/tether/dist/js/tether.min.js")
require("jquery/bootstrap/dist/js/bootstrap.js")
require("jquery/underscore/underscore-min.js")
require("jquery/jQuery-Storage-API/jquery.storageapi.min.js")

require("jquery/jquery-pjax/jquery.pjax.js")
require("jquery/flot/jquery.flot.js")
require("jquery/flot/jquery.flot.resize.js")
require("jquery/flot/jquery.flot.pie.js")
require("jquery/flot.tooltip/js/jquery.flot.tooltip.min.js")
require("jquery/flot-spline/js/jquery.flot.spline.min.js")
require("jquery/flot.orderbars/js/jquery.flot.orderBars.js")





///scripts
require("scripts/config.lazyload.js")
require("scripts/palette.js")
require("scripts/ui-load.js")
require("scripts/ui-jp.js")
require("scripts/ui-include.js")
require("scripts/ui-device.js")
require("scripts/ui-form.js")
require("scripts/ui-nav.js")
require("scripts/ui-screenfull.js")
require("scripts/ui-scroll-to.js")
require("scripts/ui-toggle-class.js")
require("scripts/app.js")
require("scripts/ajax.js")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

////import 'bootstrap';


document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
});


