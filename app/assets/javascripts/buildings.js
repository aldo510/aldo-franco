
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
  

  window.banerSlider = $('.slider-fullscreen').bxSlider({
    infiniteLoop: true,
    auto: false,
    autoControls: true,
    controls: true,
    pager: false,
    adaptiveHeight: true, 
    onSliderResize: function() {
      // adjustSliderHeight();      
    }
  });
  window.banerSlider2 = $('.slider-fullscreen-2').bxSlider({
    // mode: 'fade',
    infiniteLoop: true,
    auto: false,
    autoControls: true,
    controls: true,
    pager: false,
    adaptiveHeight: true, 
    onSliderResize: function() {
      //adjustSliderHeight();      
    }
  });
  $('#main-slider-2').hide();
  $('#icon-close').click(function () {
    $('#main-slider-2').hide();
    $('#transparent-navbar').css("z-index", "2");
  });
  var total;
  $('.full-slider').click(function() {
    $('#main-slider-2').show();
    $('.slider-fullscreen-2').show();
    $('main-slider-2').css("z-index","13");
    window.banerSlider2.reloadSlider();
    total = window.banerSlider.getCurrentSlide();
    console.log(total);
    window.banerSlider2.goToSlide(total );
  });
  $(document).keydown(function(e){
    if (e.keyCode == 39) // Right arrow 
    {
      banerSlider.goToNextSlide();
      return false;
    }
    else if (e.keyCode == 37) // left arrow
    {
     banerSlider.goToPrevSlide();
     return false;
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
  // function adjustSliderHeight() {
  //   var currentSlide = banerSlider2.getCurrentSlide();
  //   var currentHeight = $('.slider-img').get(0).height;
  //   console.log(currentHeight);
  //   $('.bx-viewport').height(currentHeight);
  // }

  // if($('.slider-fullscreen-2').lenght > 0){
  //   adjustSliderHeight();
  // }
});


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
  $("#mini-fotos").slick();
};

