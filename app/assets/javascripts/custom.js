$(document).ready(function() {
	$('.photos').find('.thumbnail').on('click', function() {
		var nr = $(this).data('nr');
		var slider = $(this).closest(".container").find('#myCarousel');
		slider.carousel(nr);
		
		$(this).closest("body").animate({
			'scrollTop': $("#myCarousel").offset().top
		}, 500);
	});
});