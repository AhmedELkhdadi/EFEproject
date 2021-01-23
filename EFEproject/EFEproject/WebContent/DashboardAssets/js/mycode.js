/*
 * Notifications
 */
function notify(from,message, align, icon, type, animIn, animOut) {
    $.growl({
        icon: icon,
       //title: ' Bootstrap Growl ',
        message: message,
        url: ''
    }, {
        element: 'body',
        type: type,
        allow_dismiss: true,
        placement: {
            from: from,
            align: align
        },
        offset: {
            x: 20,
            y: 85
        },
        spacing: 10,
        z_index: 1031,
        delay: 2500,
        timer: 1000,
        url_target: '_blank',
        mouse_over: false,
        animate: {
            enter: animIn,
            exit: animOut
        },
        icon_type: 'class',
        template: '<div data-growl="container" class="alert" role="alert">' +
            '<button type="button" class="close" data-growl="dismiss">' +
            '<span aria-hidden="true">&times;</span>' +
            '<span class="sr-only">Close</span>' +
            '</button>' +
            '<span data-growl="icon"></span>' +
            '<span data-growl="message"></span>' +
            '<a href="#" data-growl="url"></a>' +
            '</div>'
    });
};

/* $('.notification-demo .btn').on('click', function(e) {
    e.preventDefault();
    var nFrom = $(this).attr('data-from');
    var nAlign = $(this).attr('data-align');
    var nIcons = $(this).attr('data-icon');
    var nType = $(this).attr('data-type');
    var nAnimIn = $(this).attr('data-animation-in');
    var nAnimOut = $(this).attr('data-animation-out');
    var message ="notification demo"

    notify(nFrom,message, nAlign, nIcons, nType, nAnimIn, nAnimOut);
}); */




$("#enterprise_requests").hide();
$("#workshops").hide();
$("#participant_profils").hide();
$("#descriptive_charts").hide();
$("#line_charts").hide();
$("#mails").hide();
$("#compose_mail").hide();

//participant_table, participant_profils, workshops

$("#btn_participant , #btn_participant1").click(function() {
    /* $("#btnChart").parent().removeClass('active');
     $("#btnTable").parent().removeClass('active');
     $("#btnClient").parent().removeClass('active');
     $("#btnIntegration").parent().removeClass('active');
     $(this).parent().attr('class', 'active'); */
    $("#enterprise_requests").fadeOut(500);
    $("#workshops").fadeOut(500);
    $("#participant_profils").fadeOut(500);
    $("#line_charts").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#mails").fadeOut(500);
    $("#compose_mail").fadeOut(500);
    $("#participant_table").fadeIn(1000);
});

$("#btn_profil , #btn_profil1 ").click(function() {




    $("#enterprise_requests").fadeOut(500);
    $("#workshops").fadeOut(500);
    $("#participant_table").fadeOut(500);
    $("#line_charts").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#mails").fadeOut(500);
    $("#compose_mail").fadeOut(500);
    $("#participant_profils").fadeIn(1000);
});

$("#btn_request , #btn_request1 ").click(function() {
    $("#participant_profils").fadeOut(500);
    $("#workshops").fadeOut(500);
    $("#participant_table").fadeOut(500);
    $("#line_charts").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#mails").fadeOut(500);
    $("#compose_mail").fadeOut(500);
    $("#enterprise_requests").fadeIn(1000);

});

$("#btn_workshop , #btn_workshop1").click(function() {
    $("#enterprise_requests").fadeOut(500);
    $("#participant_table").fadeOut(500);
    $("#participant_profils").fadeOut(500);
    $("#line_charts").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#mails").fadeOut(500);
    $("#compose_mail").fadeOut(500);
    $("#workshops").fadeIn(1000);
});


$("#btn_line_charts , #btn_line_charts1").click(function() {
    $("#enterprise_requests").fadeOut(500);
    $("#participant_table").fadeOut(500);
    $("#participant_profils").fadeOut(500);
    $("#workshops").fadeOut(500);
    $("#mails").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#compose_mail").fadeOut(500);
    $("#line_charts").fadeIn(1000);
});

$("#btn_mails , #btn_mails1").click(function() {
    $("#enterprise_requests").fadeOut(500);
    $("#participant_table").fadeOut(500);
    $("#participant_profils").fadeOut(500);
    $("#workshops").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#line_charts").fadeOut(500);
    $("#compose_mail").fadeOut(500);
    $("#mails").fadeIn(1000);
});

$("#btn_compose_mail , #btn_compose_mail1").click(function() {
    $("#enterprise_requests").fadeOut(500);
    $("#participant_table").fadeOut(500);
    $("#participant_profils").fadeOut(500);
    $("#workshops").fadeOut(500);
    $("#descriptive_charts").fadeOut(500);
    $("#line_charts").fadeOut(500);

    $("#mails").fadeOut(500);
    $("#compose_mail").fadeIn(1000);

});



function downloadCSV(csv, filename) {
    var csvFile;
    var downloadLink;

    // CSV file
    csvFile = new Blob([csv], { type: "text/csv" });

    // Download link
    downloadLink = document.createElement("a");

    // File name
    downloadLink.download = filename;

    // Create a link to the file
    downloadLink.href = window.URL.createObjectURL(csvFile);

    // Hide download link
    downloadLink.style.display = "none";

    // Add the link to DOM
    document.body.appendChild(downloadLink);

    // Click download link
    downloadLink.click();
}


function exportTableToCSV(filename) {
    var csv = [];
    var rows = document.querySelectorAll("#participant_tab table tr");

    for (var i = 0; i < rows.length; i++) {
        var row = [],
            cols = rows[i].querySelectorAll("td, th");

        for (var j = 0; j < cols.length; j++)
            row.push(cols[j].innerText);

        csv.push(row.join(","));
    }

    // Download CSV file
    downloadCSV(csv.join("\n"), filename);
}

function showModal(id,op){
	$('#confirmValue').val(id);
	if(op == 1)
	$('#acceptModal').modal('show');
	else
	$('#rejectModal').modal('show');
	
}

function gererDemande(op) {
	let id = $('#confirmValue').val();
    $.post(
    "admin",{
    	approvalOperation: op,
    	rep_id: id
    },
    function(data) {
    		
		if(data == '1'){
			if(op == 1){
				$('#acceptModal').modal('hide');
				$('#approvedRepsNum').text(Number($('#approvedRepsNum').text())+1);
				$('#waintingRepsNum').text(Number($('#waintingRepsNum').text())-1);
				$('#approved'+id).show();
				var message = "Enterprise Accepted, and is visible in workshops !";
				}
			else{
				$('#rejectModal').modal('hide');
				$('#waintingRepsNum').text(Number($('#waintingRepsNum').text())-1);
				var message = "Enterprise Rejected !";
				}
			$('#nonApproved'+id).remove();
    		var nFrom = $(this).attr('data-from');
   			var nAlign = $(this).attr('data-align');
    		var nIcons = $(this).attr('data-icon');
   			var nType = $(this).attr('data-type');
   			
   			//data-type="inverse" data-animation-in="animated bounceIn" data-animation-out="animated bounceOut"
			notify(nFrom, message , nAlign, nIcons, nType, "animated bounceIn", "animated bounceOut");
			}
    },'text'
    )

}