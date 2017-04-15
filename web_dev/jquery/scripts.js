$(document).ready(function() {
  $("#pic").html('<img src="http://i.dailymail.co.uk/i/pix/2015/07/17/10/2A975A1200000578-3164107-image-m-39_1437124518040.jpg">');
  $("#divtag").html("The ice caps are melting!");
  $("#trigger").click(function() {
    $("#divtag").html("The ice caps are melting FASTER!");
  });

  $("#trigger").click(function() {
    $("#pic").html('<img src="http://www.clipartkid.com/images/794/pop-can-top-clipart-cliparthut-free-clipart-W5eNTb-clipart.jpg">');
    $("#pic").fadeOut(1000);
  });
});