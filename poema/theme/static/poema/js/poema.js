$(document).ready(function() {
    var shrinkables = $('body, .navbar, #top-header'),
        nav = $('.navbar');
    $(window).scroll(function() {
        if ($(document).scrollTop() > 130) {
            shrinkables.addClass('shrink');
            nav.addClass('navbar-fixed-top');
        } else {
            shrinkables.removeClass('shrink');
            nav.removeClass('navbar-fixed-top');
        }
    });
    $('a.external').click(function(e){
        e.preventDefault();
        open(this.href);
    });
});
