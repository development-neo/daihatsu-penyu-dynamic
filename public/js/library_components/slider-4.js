$('<h2 class="_font-permanent-marker">Konservasi Penyu</h2>').insertBefore('.slider-4 .slider-item-container .slider-item h5')
var switchActive = $('.slider-4 .slider-item-container .slider-item:first-child');
var itemActive = $('.slider-4 .slider-item-container .active');
itemActive.removeClass('active');
switchActive.addClass('active');
var itemClick = $('.slider-4 .slider-item-container .slider-item');
itemClick.click(function() {
    var Active = $('.slider-4 .slider-item-container .active');
    var src = $(this).find('img');
    var image = src.attr('src');
    var srcActive = Active.find('img');
    var imageActive = srcActive.attr('src');
    var heading = $(this).find('h5').text();
    var headingActive = Active.find('h5').text();
    src.attr('src', imageActive);
    srcActive.attr('src', image);
    src.attr('src', imageActive);
    $(this).find('h5').html(headingActive);
    Active.find('h5').html(heading);
});