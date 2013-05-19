$(document).ready(function() {
	function activate (elementID) {
        deactivate('.itinerary_selector');
        $('#'+elementID).addClass('active');
        $('#submit').attr("action", elementID);
    }
	function deactivate (elementClass) {
	    $(elementClass).removeClass('active');
	}
	$('.itinerary_selector').click(function () {
	    activate($(this).attr('id'));
	});

	function left (rowID) {
		console.log("moving " + rowID + " left");
		$('#' + rowID).hide({
			effect: "slide",
			duration: 200
		});
	}
	function right (rowID) {
		console.log("moving " + rowID + " right");
		$('#' + rowID).hide({
			effect: "slide",
			duration: 200
		});
	}
	$('.control').click(function() {
		console.log("control element clicked");
		switch($(this).attr('data-direction')) {
			case 'left':
				left($(this).parent().attr("id"));
			break;
			case 'right':
				right($(this).parent().attr("id"));
			break;
		}
	});
});
