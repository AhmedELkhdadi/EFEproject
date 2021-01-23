
    var suspensionDate = new Date(parseInt($("#blockCountdown").html()));
    var blockCountdown = setInterval(function () {

      let now = new Date().getTime();
      let distance = suspensionDate - now;

      let days = Math.floor(distance / (1000 * 60 * 60 * 24));
      let hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      let minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      let seconds = Math.floor((distance % (1000 * 60)) / 1000);
	  $("#blockCountdown").fadeIn(400);
      $("#blockCountdown").html(days + "j " + hours + "h "
        + minutes + "m " + seconds + "s ");

      if (distance < 0) {
        clearInterval(blockCountdown);
        }
    }, 1000);
  