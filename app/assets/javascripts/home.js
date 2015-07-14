// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {

  $('.home__col').hover(
    function() {
      $(this).removeClass('home__col--other').addClass('home__col--hover');
      $('.home__col').not($(this)).addClass('home__col--other');
    }, function() {
      $(this).removeClass('home__col--other, home__col--hover');
      $('.home__col').not($(this)).removeClass('home__col--other');
   });
});
