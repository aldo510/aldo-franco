
$( document ).on('turbolinks:load', function() {
  //

  $(".kinds-titles").click(function() {

    var target = $(this).data('target');
    $(".kinds-titles").removeClass('active');
    $('h4.kind-' + target).addClass('active');
    $('.kind-row').hide();
    $('div.kind-' + target).show();

  });
  
  $(".kind-row").hide();
  var targetParams = getUrlParameter('target');
  if(targetParams == undefined) {
    $(".kinds-titles").first().addClass('active');
    $(".kind-row").first().show();
  }else{
    // console.log('.kinds-titles[data-target="'+ targetParams +'"]');
    // $('.kinds-titles[target="'+ targetParams +'"]').trigger('click');
    $('h4.kind-' + targetParams).addClass('active');
    $('div.kind-' + targetParams).show();
  }

  var banerSlider = $('.slider-fullscreen').bxSlider({
    infiniteLoop: true,
    auto: true,
    controls: true,
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

