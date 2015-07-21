// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery2
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require wow
//= require jquery.pjax
//= require_tree .

new WOW().init();

    $(document).pjax('a', '#pjax_container');


    // var duration = 400
    // $('#pjax_container').pjax('a', { duration: duration })
    // $('#pjax_container').on('pjax:start', function() { $(this).fadeOut(duration) }).on('pjax:waiting', function() {
    //   $(this).show();
    //   console.log("ca marche")
    // }).on('pjax:end',   function() { $(this).fadeIn(duration) })

        // $('a').bind('click',function(e) {
        //    //debugger;
        //    e.preventDefault(); e.stopPropagation();
        //
        //     $(this).parent().slideUp( 800 , function(){
        //       console.log('before click');
        //       var url = $(this).children().attr('href');
        //       //:debugger;
        //       window.location.replace(url)
        //       //$(document).pjax($(this).children(), '#pjax_container');
        //       //$(document).pjax({url: url, container: '#pjax-container'})
        //     });
        //
        //     console.log('it worked');
        //
        // });




$(document).on("pjax:success", function(e) {
  new WOW().init();
  $('.essentialtools__col').hover(
    function() {
      $(this).removeClass('essentialtools__col--other').addClass('essentialtools__col--hover');
      $('.essentialtools__col').not($(this)).addClass('essentialtools__col--other');
    }, function() {
      $(this).removeClass('essentialtools__col--other, essentialtools__col--hover');
      $('.essentialtools__col').not($(this)).removeClass('essentialtools__col--other');
   });
});

$('.essentialtools__col').hover(
  function() {
    $(this).removeClass('essentialtools__col--other').addClass('essentialtools__col--hover');
    $('.essentialtools__col').not($(this)).addClass('essentialtools__col--other');
  }, function() {
    $(this).removeClass('essentialtools__col--other, essentialtools__col--hover');
    $('.essentialtools__col').not($(this)).removeClass('essentialtools__col--other');
 });
