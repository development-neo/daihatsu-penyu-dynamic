$(document).ready(function() {
    var obj = $('._display_scroll');
    showImage(obj);
});

$(window).scroll(function() {
    var obj = $('._display_scroll');
    showImage(obj);
})

function showImage(data) {
    var windowHeight = jQuery(window).height();
    $(data).each(function() {
        var thisPos = $(this).offset().top;

        var topOfWindow = $(window).scrollTop();
        if (topOfWindow + 500 > thisPos) {
            $(this).addClass("fadeIn");
        }
    });
};