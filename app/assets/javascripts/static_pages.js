
$( document ).on('turbolinks:load', function() {

	$('#click-here').click(function() {
		$("#intro").hide();
	});
	$('.cat-1').hover(function(){
		$('#parent-div').css({'background-image': "image-url(static_pages/home/RESIDENCIAL.jpg);"})
	});
	$('.work-content').hover(function () {
		$("#work-div").fadeIn();
	});
	 $("#work-div").mouseleave(function(){
      $("#work-div").fadeOut();
  });

	 $(".lista > li").click(function() {
	 	var text = $(this).data('text');
	 	$(".about-text").hide();
	 	$("#" + text).show();
	 });

});