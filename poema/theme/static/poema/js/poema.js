$(document).ready(function() {
    var shrinkables = $('body, .navbar, #top-header'),
        nav = $('.navbar'),
        searchForm = $('form.search'),
        searchQuery = $('.search-query');
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
    $('.search-toggle').click(function(){
        searchForm.toggleClass('active');
        if (searchForm.hasClass('active')) {
            searchQuery.focus();
        }
    })
});
