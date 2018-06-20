
$(function() {

  var numslider = $(".item-container").length;
  for(var i = 0; i< numslider;i++){
    $('#dot-list').append('<li class="dot" id="dot-'+i+'"></li>');
  }

  $('.banner-slider').slick({
    autoplay: false,
    infinite: true,
    dots: false,
    arrows: false
  });

  $('#left-arrow').click(function() {
    $('.banner-slider').slick('slickPrev');
  });

  $('#right-arrow').click(function() {
    $('.banner-slider').slick('slickNext');
  });

  var currentSlide = $('.banner-slider').slick('slickCurrentSlide');

  $('#dot-'+currentSlide).addClass('active');

  $('.banner-slider').on('afterChange', function(event, slick, currentSlide, nextSlide){
    $('.dot').removeClass('active');
    $('#dot-'+currentSlide).addClass('active');
  });


})
