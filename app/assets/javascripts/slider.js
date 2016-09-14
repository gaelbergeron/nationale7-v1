$( window ).load(function() {
  $('.slider-for').focus()
});

$(document).ready(function(){

  $('.clients-slider').slick({
    slidesToShow: 1,
    arrows: true,
    dots: false,
    nextArrow: '<i class="fa fa-angle-right fa-5x hvr-grow slider-right desktop-right"></i>',
    prevArrow: '<i class="fa fa-angle-left fa-5x hvr-grow slider-left desktop-left"></i>',
  });

  $('.slider-for').slick({
    useTransform: false,
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: true,
    fade: true, 
    focusOnSelect: true,
    asNavFor: '.slider-nav',
    nextArrow: '<i class="fa fa-angle-right fa-5x hvr-grow slider-right desktop-right"></i>',
    prevArrow: '<i class="fa fa-angle-left fa-5x hvr-grow slider-left desktop-left"></i>',
    responsive: [
      {
        breakpoint: 900,
        settings: {
          nextArrow: '<i class="fa fa-angle-right fa-5x hvr-grow slider-right mobile-right"></i>',
          prevArrow: '<i class="fa fa-angle-left fa-5x hvr-grow slider-left mobile-left"></i>'
        }
      }
    ]


  });
  
  $('.slider-nav').slick({
    slidesToShow: 10, 
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    centerMode: true,
    arrows: false,
    focusOnSelect: true,
    responsive: [
      {
        breakpoint: 900,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3
        }
      }
    ]
  });


});
