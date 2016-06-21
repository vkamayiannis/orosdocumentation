// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(function() {
	var search = $('.project-search'),
		content = $('.projects-list'),
		matches = $(), index = 0;

	// Listen for the text input event
	search.on('input', function(e) {

		// Only search for strings 2 characters or more
		if (search.val().length >= 2) {
			// Use the highlight plugin
			content.highlight(search.val(), function(found) {                
                found.parent().parent().css('background','yellow');
			});
		}
		else {
			content.highlightRestore();
		}
	});
});

(function($) {
	var termPattern;
	$.fn.highlight = function(term, callback) {
		return this.each(function() {
			var elem = $(this);
			if (!elem.data('highlight-original')) {
				// Save the original element content
				elem.data('highlight-original', elem.html());
			} else {
				// restore the original content
				elem.highlightRestore();
			}
			termPattern = new RegExp('(' + term + ')', 'ig');
			// Search the element's contents
			walk(elem);
			// Trigger the callback
			callback && callback(elem.find('.match'));
		});
	};
	$.fn.highlightRestore = function() {
		
		return this.each(function() {
			var elem = $(this);
			elem.html(elem.data('highlight-original'));
		});
		
	};

	function walk(elem) {
		elem.contents().each(function() {
			if (this.nodeType == 3) { // text node
				if (termPattern.test(this.nodeValue)) {
					$(this).replaceWith(this.nodeValue.replace(termPattern, '<span class="match">$1</span>'));
				}
			} else {
				walk($(this));
			}
		});
	}

})(jQuery); 
