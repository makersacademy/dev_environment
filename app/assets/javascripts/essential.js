// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('.essentialtools__col').hover(
  function() {
    $(this).removeClass('essentialtools__col--other').addClass('essentialtools__col--hover');
    $('.essentialtools__col').not($(this)).addClass('essentialtools__col--other');
  }, function() {
    $(this).removeClass('essentialtools__col--other, essentialtools__col--hover');
    $('.essentialtools__col').not($(this)).removeClass('essentialtools__col--other');
 });
