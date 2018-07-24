
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
	
	$('.sections').hover(function () {
		var id = $(this).data('target');
		// body...
		console.log("hola si entre al hover de: " + id);
		$('.sections-content').hide();
		$('.'+id).fadeIn();
		$('.'+id).mouseleave(function () {
			$('.'+id).hide();
		});
	})

	$('.white-navbar').click(function () {
		var id = $(this).data('target');
		var section = $('#' + id);
		if (section.length > 0){
			$('html, body').animate({scrollTop: $('#' + id).offset().top}, 'slow');
		}
	});
	
	$(".lista > li").click(function() {
		var text = $(this).data('text');
		$(".about-text").hide();
		$("#" + text).show();
	});

});