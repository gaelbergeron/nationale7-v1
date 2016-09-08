(function($) {

	var lastSize = 0;
	var interval = null;

	$.fn.resetBreakpoints = function() {
		$(window).unbind('resize');
		if (interval) {
			clearInterval(interval);
		}
		lastSize = 0;
	};
	
	$.fn.setBreakpoints = function(settings) {
		var options = jQuery.extend({
							distinct: true,
							breakpoints: new Array(320,480,768,1024)
				    	},settings);


		interval = setInterval(function() {
	
			var w = $(window).width();
			var done = false;
			
			for (var bp in options.breakpoints.sort(function(a,b) { return (b-a) })) {
			
				// fire onEnter when a browser expands into a new breakpoint
				// if in distinct mode, remove all other breakpoints first.
				if (!done && w >= options.breakpoints[bp] && lastSize < options.breakpoints[bp]) {
					if (options.distinct) {
						for (var x in options.breakpoints.sort(function(a,b) { return (b-a) })) {
							if ($('body').hasClass('breakpoint-' + options.breakpoints[x])) {
								$('body').removeClass('breakpoint-' + options.breakpoints[x]);
								$(window).trigger('exitBreakpoint' + options.breakpoints[x]);
							}
						}
						done = true;
					}
					$('body').addClass('breakpoint-' + options.breakpoints[bp]);
					$(window).trigger('enterBreakpoint' + options.breakpoints[bp]);

				}				

				// fire onExit when browser contracts out of a larger breakpoint
				if (w < options.breakpoints[bp] && lastSize >= options.breakpoints[bp]) {
					$('body').removeClass('breakpoint-' + options.breakpoints[bp]);
					$(window).trigger('exitBreakpoint' + options.breakpoints[bp]);

				}
				
				// if in distinct mode, fire onEnter when browser contracts into a smaller breakpoint
				if (
					options.distinct && // only one breakpoint at a time
					w >= options.breakpoints[bp] && // and we are in this one
					w < options.breakpoints[bp-1] && // and smaller than the bigger one
					lastSize > w && // and we contracted
					lastSize >0 &&  // and this is not the first time
					!$('body').hasClass('breakpoint-' + options.breakpoints[bp]) // and we aren't already in this breakpoint
					) {					
					$('body').addClass('breakpoint-' + options.breakpoints[bp]);
					$(window).trigger('enterBreakpoint' + options.breakpoints[bp]);

				}						
			}
			
			// set up for next call
			if (lastSize != w) {
				lastSize = w;
			}
		},250);
	};
	
})(jQuery);


		$(function() { 
		
			$(window).bind('exitBreakpoint320',function() {
				$('#log').append('<p>Exiting 320 breakpoint</p>');
			});
			$(window).bind('enterBreakpoint320',function() {
				$('#log').append('<p>Entering 320 breakpoint</p>');
			});
			$(window).bind('exitBreakpoint480',function() {
				$('#log').append('<p>Exiting 480 breakpoint</p>');
			});
			$(window).bind('enterBreakpoint480',function() {
				$('#log').append('<p>Entering 480 breakpoint</p>');
			});
			$(window).bind('exitBreakpoint768',function() {
				// $(".phone-number-header-product").append();
			});
			$(window).bind('enterBreakpoint768',function() {
				// $(".phone-number-header-product").remove();
			});
			
			$(window).bind('exitBreakpoint1024',function() {
				// $('#log').append('<p>Exiting 1024 breakpoint</p>');
			});
			$(window).bind('enterBreakpoint1024',function() {
				// $('#log').append('<p>Entering 1024 breakpoint</p>');
			});
			$(window).setBreakpoints();
			$('#distinct').bind('click',function() {
				$(window).resetBreakpoints();
				$(window).setBreakpoints({distinct: $('#distinct').is(":checked")});
				$(window).resize();
			});
		});