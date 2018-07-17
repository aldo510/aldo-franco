
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
		// body...
		console.log("hola si entre al hover alv");
	})
});