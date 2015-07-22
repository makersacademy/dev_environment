  $('.carousel').carousel()

  jQuery('.carousel').on('slid.bs.carousel', function () {
      $('h2').fitText(2, { minFontSize: '22px', maxFontSize: '80px' });
      $('p').fitText(2, { minFontSize: '10px', maxFontSize: '28px' });
      $('p.step__next').fitText(0.8, { minFontSize: '10px', maxFontSize: '28px' });
   });
