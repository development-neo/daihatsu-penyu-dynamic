$(document).ready(function() {
    var URL = window.location.href;
    var navbarMenu = $("._menu-link").find("a");
    $("._menu-link a").removeClass("active");
    for (const [key, value] of Object.entries(navbarMenu)) {
        const subject = value.href;
        if (subject && URL.match(subject + ".*")) {
            $("._menu-link a").eq(key).addClass("active");
        }
    }
    var burgerIcon = '<img class="burger-menu" src="/uploads/image/burger menu.png"></i>'
    $('._navbar ._container').append(burgerIcon);

    $("img.burger-menu").click(function() {
        if ($("._menu-link").css('display') == "none") {
            $("._menu-link").css("display", "block");
        } else if ($("._menu-link").css('display') == "block") {
            $("._menu-link").css("display", "none");
        }
    });
});