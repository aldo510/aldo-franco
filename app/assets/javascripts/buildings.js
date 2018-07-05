
$( document ).on('turbolinks:load', function() {
  //
  $(".kinds-titles").first().addClass('active');

  $(".kind-row").hide();
  $(".kind-row").first().hide();

  $(".kinds-titles").click(function() {

      var target = $(this).data('target');
      console.log(target);
      $(".kinds-titles").removeClass('active');
      $('h4.kind-' + target).addClass('active');
      $('.kind-row').hide();
      $('div.kind-' + target).show();

  });

  var banerSlider = $('.slider-fullscreen').bxSlider({
    infiniteLoop: true,
    auto: true,
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

})

