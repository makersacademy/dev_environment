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
//= require fittext
//= require_tree .


//Init wow
new WOW().init();

//Load all links into the target pjax controller
$(document).pjax('a', '#pjax_container');

//Animate the exit of the father element of link
// $('a').bind('click',function(e) {
//    e.preventDefault(); e.stopPropagation();
//
//     $(this).parent().slideUp( 600 , function(){
//       var url = $(this).find('a').attr('href');
//       $(this).unbind().click();
//       window.location.replace(url)
//     });
//
//     $(this).sibling.slideDown( 600 , function(){
//       var url = $(this).find('a').attr('href');
//       $(this).unbind().click();
//       window.location.replace(url)
//     });
// });

//Allow to have the hover animation on the 5 columns grid AFTER A PJAX LOAD
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

  jQuery('.carousel').on('slid.bs.carousel', function () {
    $('h2').fitText(1.2, { minFontSize: '32px', maxFontSize: '240px' });
    $('p').fitText(1.2, { minFontSize: '14px', maxFontSize: '26px' });
    $('p.step__next').fitText(1, { minFontSize: '12px', maxFontSize: '62px' });
    $('a.step__next').fitText(1, { minFontSize: '12px', maxFontSize: '62px' });
  });

});

$('h2').fitText(1.2, { minFontSize: '32px', maxFontSize: '240px' });
$('p').fitText(1.2, { minFontSize: '14px', maxFontSize: '26px' });
$('p.step__next').fitText(1, { minFontSize: '12px', maxFontSize: '62px' });
$('a.step__next').fitText(1, { minFontSize: '12px', maxFontSize: '62px' });

//Allow to have the hover animation on the 5 columns grid
$('.essentialtools__col').hover(
  function() {
    $(this).removeClass('essentialtools__col--other').addClass('essentialtools__col--hover');
    $('.essentialtools__col').not($(this)).addClass('essentialtools__col--other');
  }, function() {
    $(this).removeClass('essentialtools__col--other, essentialtools__col--hover');
    $('.essentialtools__col').not($(this)).removeClass('essentialtools__col--other');
 });
