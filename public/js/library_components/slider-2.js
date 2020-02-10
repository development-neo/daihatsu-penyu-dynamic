var elitem = $('.slider-2 .slider-item-container .slider-item');
var elActive = $('.slider-2 .slider-item-container .active');
var img = elActive.find('img').attr('src');
var heading = elActive.find('.slider-heading').text();
var description = elActive.find('.slider-description').text();
var previewImg = '<div class="preview-img"><img src="' + img + '"><h5 class="slider-heading">' + heading + '</h5><p>' + description + '</p></div>';
$(previewImg).insertBefore($('.slider-2 .slider-item-container'));
elitem.click(function() {
    elitem.removeClass('active');
    $(this).addClass('active');
    $('.preview-img img').attr('src', $(this).children('img').attr('src'));
    var index = $(this).children('h5').text();
    var indux = $(this).children('p').text();
    $('.preview-img h5').text(index);
    $('.preview-img p').text(indux);
});