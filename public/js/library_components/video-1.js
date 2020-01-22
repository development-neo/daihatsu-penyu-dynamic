var cover = '<img class="video-cover" src="./uploads/image/coverVideo.png">';
var button = '<img class="video-button" src="./uploads/image/btnVideo.png">'
$('._videoPlayer').wrap('<div class="video-1"></div>');
$('.video-1').append(cover + button);
$('.video-1 .video-button').on('click', function(e) {
    e.preventDefault();
    $(".video-1 ._videoPlayer")[0].src += "?autoplay=1";
    $('.video-1 ._videoPlayer').show();
    $('.video-1 .video-cover').hide();
    $('.video-1 .video-button').hide();
});