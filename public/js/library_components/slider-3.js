var switchActive = $('.slider-3 .slider-item-container .slider-item:nth-child(3)');
var itemActive = $('.slider-3 .slider-item-container .active');
itemActive.removeClass('active');
switchActive.addClass('active');
var itemClick = $('.slider-3 .slider-item-container .slider-item');
itemClick.click(function() {
    var Active = $('.slider-3 .slider-item-container .active');
    var src = $(this).find('img');
    var image = src.attr('src');
    var srcActive = Active.find('img');
    var imageActive = srcActive.attr('src');
    var heading = $(this).find('h4').text();
    var headingActive = Active.find('h4').text();
    src.attr('src', imageActive);
    srcActive.attr('src', image);
    src.attr('src', imageActive);
    $(this).find('h4').html(headingActive);
    Active.find('h4').html(heading);
});