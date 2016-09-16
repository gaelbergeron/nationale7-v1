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
    $(this).next().slideToggle();} 
  );

  
  $('#mobile-menu').slicknav();

  // $('.acheter-triangle').hide();

  // $('.ccm-intro-acheter').mouseover( function(){
  //   $('.acheter-triangle').show('slide',{direction:'left'},500);
  //   $('.acheter-triangle').css()

  // });
        
  // $('.ccm-intro-acheter').mouseleave( function(){
  //   $('.acheter-triangle').hide();
  // });

  $('.acheter-summary').hide();
  $('.vendre-summary').hide();
  $('.acheter-content').hide();
  $('.vendre-content').hide();
  $('.vendre-arrow').hide();
  $('.acheter-arrow').hide();


  $('.ccm-intro-acheter').click( function() {
    $('.vendre-summary').hide('slide', {direction: 'right'}, 700);
    $('.acheter-summary').show('slide', {direction: 'left'}, 500);
    $('.vendre-content').hide('slide', { direction:'down'}, 500);
    $('.acheter-content').show('slide', { direction: 'up'}, 500);
    $('.vendre-arrow').show('slide', {direction: 'left'}, 500);
  });

  $('.ccm-intro-vendre').click( function() {
    $('.acheter-summary').hide('slide', {direction: 'left'}, 700);
    $('.vendre-summary').show('slide', {direction: 'right'}, 500);
    $('.acheter-content').hide('slide', { direction:'down'}, 500);
    $('.vendre-content').show('slide', { direction: 'up'}, 500);
    $('.acheter-arrow').show('slide', {direction: 'right'}, 500);
  });

  $('.vendre-savoir').click( function() {
    $('.acheter-summary').hide('slide', {direction: 'left'}, 700);
    $('.vendre-summary').show('slide', {direction: 'right'}, 500);
    $('.acheter-content').fadeOut(300);
    $('.vendre-content').show('slide', { direction: 'up'}, 500);
    $('.vendre-arrow').hide();
    $('html, body').animate({
      scrollTop: $(".vendre-summary").offset().top
    }, 500);
  });

  $('.acheter-savoir').click( function() {
    $('.vendre-summary').hide('slide', {direction: 'right'}, 700);
    $('.acheter-summary').show('slide', {direction: 'left'}, 500);
    $('.vendre-content').fadeOut(300);
    $('.acheter-content').show('slide', { direction: 'up'}, 500);
    $('.vendre-arrow').show('slide', {direction: 'left'}, 500);
    $('.acheter-arrow').hide();
    $('html, body').animate({
      scrollTop: $('.acheter-summary').offset().top
    }, 500);
  });
});


