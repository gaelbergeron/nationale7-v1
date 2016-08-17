$(document).ready(function(){

  $('.clients-slider').slick({
    slidesToShow: 1,
    arrows: true,
    dots: false,
    nextArrow: '<i class="fa fa-angle-right fa-5x hvr-grow"></i>',
    prevArrow: '<i class="fa fa-angle-left fa-5x hvr-grow"></i>',
  });

  $('.slider-for').slick({
    useTransform: false,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    fade: true, 
    asNavFor: '.slider-nav'
  });
  
  $('.slider-nav').slick({
    slidesToShow: 3, 
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: true,
    centerMode: true,
    focusOnSelect: true
  });

});
