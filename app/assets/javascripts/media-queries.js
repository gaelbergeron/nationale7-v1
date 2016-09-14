$(document).ready(function(){




    enquire.register("screen and (max-width:1100px)", {

        // OPTIONAL
        // If supplied, triggered when a media query matches.
        match : function() {
          $('.phone-number-header-product').remove();

        },      
                                    
        // OPTIONAL
        // If supplied, triggered when the media query transitions 
        // *from a matched state to an unmatched state*.
        unmatch : function() {
            $('.homepage-nav-bar').prepend('<li class="phone-number-header-product header-link-product"><a href="tel:0176390284" class="header-number-product">01 76 39 02 84</a></li>');

        },    
        
        // OPTIONAL
        // If supplied, triggered once, when the handler is registered.
        setup : function() {
          $('.phone-number-header-product').remove();


        },    
                                    
        // OPTIONAL, defaults to false
        // If set to true, defers execution of the setup function 
        // until the first time the media query is matched
        deferSetup : true,
                                    
        // OPTIONAL
        // If supplied, triggered when handler is unregistered. 
        // Place cleanup code here
        destroy : function() {


        }
          
    });
});
