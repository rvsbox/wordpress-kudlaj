(function ($) {

    wp.customize('ztheme_link_color', function (value) {
        value.bind(function (newval) {
            $('a').css('color', newval);
        });
    });

    wp.customize('ztheme_phone', function (value) {
        value.bind(function (newval) {
            $('.ztheme-phone span').text(newval);
        });
    });

    wp.customize( 'ztheme_show_phone', function( value ) {
        value.bind( function( newval ) {
            false === newval ? $('.ztheme-phone').fadeOut() : $('.ztheme-phone').fadeIn();
        } );
    } );

})(jQuery);