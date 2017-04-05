$(document).ready(function() {
    var nav = $('.navbar');
    $(window).scroll(function() {
        if ($(document).scrollTop() > 50) {
            nav.addClass('shrink');
        } else {
            nav.removeClass('shrink');
        }
    });
});
