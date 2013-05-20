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

    function shift(rowID, isLeft) {
        console.log("moving " + rowID + isLeft ? " left" : " right");
        var element = $('#' + rowID);
        // Get new ID to show

        var alt_place_element;
        var time_alt = alternatives[element.attr("timeslot")];
        for (var i = 0; i < time_alt.length; i++) {
            if (time_alt[i].active) {
                time_alt[i].active = false;
                var alt_place = time_alt[(i + 1) % time_alt.length];
                alt_place.active = true;
                alt_place_element = $("#" + alt_place.id);
                console.log(i, time_alt.length, (i + 1) % time_alt.length, alt_place);
                break;
            }
        }

        element.css({position: "relative", left: 0}).animate({
            left: isLeft ? 500 : -500,
            opacity: 0
        }, 300, function() {
            element.hide().css({position: "", left: "", opacity: 1}); // Restore to original state
            alt_place_element.show().css({position: "relative", left: isLeft ? -500 : 500, opacity: 0}).animate({
                left: 0,
                opacity: 1
            }, 300, function() {
                alt_place_element.css({position: "", left: "", opacity: ""});
            });
        });

    }
	$('.control').click(function() {
		console.log("control element clicked");
		switch($(this).attr('data-direction')) {
			case 'left':
				shift($(this).parent().attr("id"), true);
			break;
			case 'right':
                shift($(this).parent().attr("id"), false);
			break;
		}
	});

    // For MVP we are just going to store every attraction on client. Won't bother calling server for every arrow-click.
    var alternatives = {};

    $('.place').each(function() {
        var timeslot = $(this).attr("timeslot");
        var id = $(this).attr("id");
        if (!alternatives[timeslot]) {
            alternatives[timeslot] = [{id:id, active:true}];
        }
        else {
            alternatives[timeslot].push({id:id, active:false});
            $(this).hide();
        }
    })
    console.log(alternatives);
});
