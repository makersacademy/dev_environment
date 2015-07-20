new WOW().init();

$(document).pjax('a', '#pjax_container');

$(document).on("pjax:success", function(e) {
  console.log("init wow");
  new WOW().init();
  console.log("prepping the hover");

  $('.essentialtools__col').hover(
    function() {
      console.log("doing the thing");
      $(this).removeClass('essentialtools__col--other').addClass('essentialtools__col--hover');
      $('.essentialtools__col').not($(this)).addClass('essentialtools__col--other');
    }, function() {
      $(this).removeClass('essentialtools__col--other, essentialtools__col--hover');
      $('.essentialtools__col').not($(this)).removeClass('essentialtools__col--other');
   });
});