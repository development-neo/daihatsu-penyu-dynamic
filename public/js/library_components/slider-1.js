var elitem = $('.slider-1 .slider-item-container .slider-item');
var elActive = $('.slider-1 .slider-item-container .active');
var img = elActive.find('img').attr('src');
var heading = elActive.find('.slider-heading').text();
var description = elActive.find('.slider-description').text();
var previewImg = '<div class="preview-img"><img src="' + img + '"><div class="caption"><h4 class="slider-heading">' + heading + '</h4><p>' + description + '</p></div></div>';
$(previewImg).insertAfter($('.slider-1 .slider-item-container'));
elitem.click(function() {
    $('.slider-1 .slider-item-container .slider-item').removeClass('active');
    $(this).addClass('active');
    $('.preview-img img').attr('src', $(this).children('img').attr('src'));
    var index = $(this).find('h4').text();
    var indux = $(this).find('p').text();
    $('.preview-img h4').text(index);
    $('.preview-img p').text(indux);
});