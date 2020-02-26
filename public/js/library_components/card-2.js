$('.card-2').addClass('_gradient');

$('.card-2').mouseover(function() {
    $(this).children('img').css('transform', 'scale(1.2)');
    $('.card-2').addClass('_gradient');
})
$('.card-2').mouseout(function() {
    $(this).children('img').css('transform', 'scale(1)');
    $('.card-2').addClass('_gradient');
})