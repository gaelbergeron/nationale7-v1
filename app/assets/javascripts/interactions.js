$(document).ready(function(){


  $(".sub-menu-homepage").hide();

  $(".pourquoi-n7").mouseover(function () {
      $(".sub-menu-homepage").slideDown('fast').css('z-index','99');
  });

  $(".wrapper").mouseleave(function () {
      $(".sub-menu-homepage").slideUp('fast');
  });

  $('.acheter-button').click(function() {   
    if ($('.vendre-explanation').css('display') == 'block') {
        $('.vendre-explanation').css("display", "none");
        $(".acheter-explanation").slideToggle();
    } else {
        $(".acheter-explanation").slideToggle();
    }
  });

  $('.vendre-button').click(function() {   
    if ($('.acheter-explanation').css('display') == 'block') {
        $('.acheter-explanation').css("display", "none");
        $(".vendre-explanation").slideToggle();
    } else {
        $(".vendre-explanation").slideToggle();
    }
  });

  $(".toutes-voitures-link").mouseover(function () {
      $(".toutes-voitures-line").css("background-color", "#cbe6e6" );
  });

  $(".toutes-voitures-link").mouseleave(function () {
      $(".toutes-voitures-line").css("background-color", "#69a2d2" );
  });

  $(".achetez-button").click(function() {
      $('html, body').animate({
          scrollTop: $(".contact-wrapper").offset().top
      }, 1000);
  });

  $(".alert-dismiss").click(
    function() {
      $(".confirmation-message").hide();
    }
  );

  $(".answer-div").hide();

  $("#vq1").click( function() {$("#va1").slideToggle();} );
  $("#vq2").click( function() {$("#va2").slideToggle();} );
  $("#vq3").click( function() {$("#va3").slideToggle();} );
  $("#vq4").click( function() {$("#va4").slideToggle();} );
  $("#vq5").click( function() {$("#va5").slideToggle();} );
  $("#vq6").click( function() {$("#va6").slideToggle();} );
  $("#vq7").click( function() {$("#va7").slideToggle();} );
  $("#vq8").click( function() {$("#va8").slideToggle();} );
  $("#vq9").click( function() {$("#va9").slideToggle();} );
  $("#vq10").click( function() {$("#va10").slideToggle();} );
  $("#vq11").click( function() {$("#va11").slideToggle();} );
  $("#vq12").click( function() {$("#va12").slideToggle();} );

  $("#aq1").click( function() {$("#aa1").slideToggle();} );
  $("#aq2").click( function() {$("#aa2").slideToggle();} );
  $("#aq3").click( function() {$("#aa3").slideToggle();} );
  $("#aq4").click( function() {$("#aa4").slideToggle();} );
  $("#aq5").click( function() {$("#aa5").slideToggle();} );
  $("#aq6").click( function() {$("#aa6").slideToggle();} );
  $("#aq7").click( function() {$("#aa7").slideToggle();} );
  $("#aq8").click( function() {$("#aa8").slideToggle();} );
  $("#aq9").click( function() {$("#aa9").slideToggle();} );
  $("#aq10").click( function() {$("#aa10").slideToggle();} );
  $("#aq11").click( function() {$("#aa11").slideToggle();} );
  $("#aq12").click( function() {$("#aa12").slideToggle();} );
});


