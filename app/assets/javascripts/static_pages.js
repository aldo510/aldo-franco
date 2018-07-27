
$( document ).on('turbolinks:load', function() {

	$('#click-here').click(function() {
		$("#intro").hide();
	});
	
	$('.cat-1').hover(function(){
		$('#parent-div').css({'background-image': "image-url(static_pages/home/RESIDENCIAL.jpg);"})
	});
		if ($( window ).width() > 991) {
			$('.work-content').hover(function () {
				$("#work-div").fadeIn();
			});

			$("#work-div").mouseleave(function(){
				$("#work-div").fadeOut();
			});
			$('.work-content-2').hover(function () {
				$("#work-div-2").fadeIn();
			});

			$("#work-div-2").mouseleave(function(){
				$("#work-div-2").fadeOut();
			});

			$('.sections').hover(function () {
				var id = $(this).data('target');
				$('.sections-content').hide();
				$('.'+id).show();
				$('.'+id).mouseleave(function () {
					$('.'+id).hide();
				});
			});
			$('.sections-2').hover(function () {
				var id = $(this).data('target');
				$('.sections-content-2').hide();
				$('.'+id).show();
				$('.'+id).mouseleave(function () {
					$('.'+id).hide();
				});
			});
		};
	
	

	$('.white-navbar, .footer-nav-link').click(function () {
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
		$(".lista > li").removeClass('active-item-li');
		$(this).addClass('active-item-li');
	});

	$( window ).resize(function() {

	});
	$('.navbar-toggler').click(function () {
		if ($('#transparent-navbar').hasClass('back-black')) {
			$('#transparent-navbar').removeClass('back-black');
		}else{
			$('#transparent-navbar').addClass('back-black');
		}
	});

});