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

  $(".question-div").click( function() { 
    $(this).next().slideToggle();} );

  
  $('#menu2').slicknav();

});


