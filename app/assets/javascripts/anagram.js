$( document ).ready(function() {
	$(".btn-verify").click(function() {
		if($('.text_a').val() == $('.text_b').val()){
			$('.alert').html('<div class="alert alert-danger">Same text inserted into both inputs!</div>')
			return false;
		};
	});
});