
$( document ).on('turbolinks:load', function() {

	$('#click-here').click(function() {
		$("#intro").hide();
	});
	$('.cat-1').hover(function(){
		$('#parent-div').css({'background-image': "image-url(static_pages/home/RESIDENCIAL.jpg);"})
	});
});