$(document).ready(function() {
	$('.photos').find('.thumbnail').on('click', function() {
		
		var nr = $(this).data('nr');
		alert(nr);
		$(this).closest(".container").find('.carousel').carousel(nr);
	});
});