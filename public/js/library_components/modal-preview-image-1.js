// var screenSize = "";
var tagItemImage = "";
structureBase();
$('.modal-preview-image-1').hide();

// $(document).ready(function() {
//     screenSize = $(window).width();
// });

// Action ESC button close
$(document).on('keydown', function(event) {
    if (event.key == "Escape") {
        hide();
    }
});

// Action object click
$('._modal-preview-1').children().click(function() {
    var preview = this.className;
    previewData(preview);
    initializeVariable();
    var modal = $('.modal-preview-image-1');
    animationFadeIn(modal);
});

// Action object on modal click
$('.modal-preview-image-1 .item-image').children().click(function() {
    // console.log(this.hasClass('active'));
    if ($(this).hasClass('active')) {
        // Do nothing
    } else {
        var preview = this.className;
        previewData(preview);
        initializeVariable();
        $('.modal-preview-image-1').show();
    }
});

// Action button prev click
$('.modal-preview-image-1 .indicator .indicator-prev').click(function() {
    if (tagItemImage.find('.active').index() == "0") {
        var paramCounter = tagItemImage.children().length;
        var preview = tagItemImage.children()[paramCounter - 1].className;
    } else {
        var preview = tagItemImage.children()[tagItemImage.find('.active').index() - 1].className;
    }
    previewData(preview);
    initializeVariable();
    $('.modal-preview-image-1').show();
});

// Action button next click
$('.modal-preview-image-1 .indicator .indicator-next').click(function() {
    var paramCounter = tagItemImage.children().length;
    if (tagItemImage.find('.active').index() == paramCounter - 1) {
        var preview = tagItemImage.children()[0].className;
    } else {
        var preview = tagItemImage.children()[tagItemImage.find('.active').index() + 1].className;
    }
    previewData(preview);
    initializeVariable();
    $('.modal-preview-image-1').show();
});

// Action button close click
$('.modal-preview-image-1 .indicator .btn-close-modal').click(function() {
    hide();
});

// Initialize variable for handling error when replace image preview & button action next or prev
function initializeVariable() {
    tagItemImage = $('.modal-preview-image-1 .item-image');
}

// Process hide modal
function hide() {
    var modal = $('.modal-preview-image-1');
    animationFadeOut(modal);
}

// Process destroy data preview
function destroyPreview() {
    $('.modal-preview-image-1 .preview-image').empty();
    $('.modal-preview-image-1 .item-image').find('.active').removeClass('active');
}

// Process make structure for modal
function structureBase() {
    var close_button = '<div class="btn-close-modal"><img src="/uploads/image/button-close-modal.png"></div>'
    var indicator = '<div class="indicator">' + close_button + '<div class="indicator-prev"><img src="/uploads/image/icon-slide.png"></div><div class="indicator-next"><img src="/uploads/image/icon-slide.png"></div></div>';
    var preview_image = '<div class="preview-image"></div>';
    var item_image = '<div class="item-image"></div>';
    var object = document.createElement("div");
    object.classList.add("modal-preview-image-1");
    document.body.appendChild(object);
    var structure = $('.modal-preview-image-1');
    structure.append(preview_image + item_image + indicator);
    structure.insertAfter('._footer');
    var obj_item = $('._modal-preview-1').children();
    var obj_item_clone = obj_item.clone(true);
    $('.modal-preview-image-1 .item-image').append(obj_item_clone);
}

// Process push data from original section to modal
function previewData(preview) {
    // Data append for preview
    destroyPreview();
    var obj_image = $('.modal-preview-image-1 .item-image .' + preview);
    var obj_image_clone = obj_image.clone(true);
    $('.modal-preview-image-1 .preview-image').append(obj_image_clone);

    // Animation Request
    $('.modal-preview-image-1 .preview-image').children().hide();
    var obj_image_preview = $('.modal-preview-image-1 .preview-image').children();
    $('.modal-preview-image-1 .item-image .' + preview).addClass('active');
    animationFadeIn(obj_image_preview);
    itemScrolling();
}

function itemScrolling() {
    // if (screenSize <= 425) {
    //     console.log('cuy');
    //     setInterval(function() {
    //         var paramCounter = tagItemImage.children().length;
    //         if (tagItemImage.find('.active').index() == paramCounter - 1) {
    //             var preview = tagItemImage.children()[0].className;
    //         } else {
    //             var preview = tagItemImage.children()[tagItemImage.find('.active').index() + 1].className;
    //         }
    //         previewData(preview);
    //         initializeVariable();
    //         $('.modal-preview-image-1').show();
    //     }, 5000);

    //     // var obj_item = $('.modal-preview-image-1 .item-image');
    //     // var item_active = obj_item.children('.active').index();


    //     // // Data append request
    //     // if (item_active > 5 && item_active < obj_item.children().length - 1) {
    //     //     var batas = item_active - 5;
    //     //     for (i = batas; i <= item_active + 1; i++) {
    //     //         var data = $('.modal-preview-image-1 .item-image').children()[i];
    //     //         data.style.display = "block";
    //     //     }
    //     // } else {
    //     //     for (i = 0; i < 7; i++) {
    //     //         var data = $('.modal-preview-image-1 .item-image').children()[i];
    //     //         data.style.display = "block";
    //     //     }
    //     // }

    // } else {
    //     console.log('cok');
    var obj_item = $('.modal-preview-image-1 .item-image');
    var item_active = obj_item.children('.active').index();

    obj_item.children().hide();

    // Data append request
    if (item_active > 5 && item_active < obj_item.children().length - 1) {
        var batas = item_active - 5;
        for (i = batas; i <= item_active + 1; i++) {
            var data = $('.modal-preview-image-1 .item-image').children()[i];
            data.style.display = "block";
        }
    } else if (item_active == obj_item.children().length - 1) {
        var batas = item_active - 6;
        for (i = batas; i <= item_active; i++) {
            var data = $('.modal-preview-image-1 .item-image').children()[i];
            data.style.display = "block";
        }
    } else {
        for (i = 0; i < 7; i++) {
            var data = $('.modal-preview-image-1 .item-image').children()[i];
            data.style.display = "block";
        }
    }
    // }
}

function animationFadeIn(data) {
    if (data != null) {
        data.first().fadeIn("medium");
    }
}

function animationFadeOut(data) {
    if (data != null) {
        data.first().fadeOut("medium");
    }
}