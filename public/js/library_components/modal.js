structureBase();

// Action ESC button close
function modalToggle() {
    if ($('.modal-section').css('display') == "none") {
        $('.modal-section').show();
    } else {
        $('.modal-section').hide();
    }
}

$(document).on('keydown', function(event) {
    if (event.key == "Escape") {
        $('.modal-section').hide();
    }
});

// Action object click
$('._modal').children().click(function() {
    var preview = this.className;
    console.log(preview);
    dataModal(preview);
    modalToggle();
});

function structureBase() {
    var object = document.createElement("div");
    object.classList.add("modal-section");
    document.body.appendChild(object);
    var structure = $('.modal-section');
    structure.insertAfter('._footer');
}

function dataModal(classData) {
    var data = $('.' + classData).clone();
    $(".modal-section").append(data);
}