
$( document ).on('turbolinks:load', function() {
  //
  $(".kinds-titles").first().addClass('active');

  $(".kind-row").hide();
  $(".kind-row").first().show();

  $(".kinds-titles").click(function() {

      var target = $(this).data('target');
      $(".kinds-titles").removeClass('active');
      $('h4.kind-' + target).addClass('active');
      $('.kind-row').hide();
      $('div.kind-' + target).show();

  });

  var banerSlider = $('.slider-fullscreen').bxSlider({
    infiniteLoop: true,
    auto: false,
    controls: false,
    pager: false,
    adaptiveHeight: true,
    onSliderResize: function() {
      adjustSliderHeight();      
    }
  });

  function adjustSliderHeight() {
    var currentSlide = banerSlider.getCurrentSlide();
    var currentHeight = $('.slider-img').get(0).height;
    console.log(currentHeight);
    $('.bx-viewport').height(currentHeight);
  }

  if($('.slider-fullscreen').lenght > 0){
    adjustSliderHeight();
  }

  console.log(getUrlParameter('asd'));

})


var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};

