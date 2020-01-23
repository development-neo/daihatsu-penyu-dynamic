$(document).ready(function() {
    var URL = window.location.href;
    var navbarMenu = $("._menu-link").find("a");
    $("._menu-link a").removeClass("active");
    console.log(URL);
    for (const [key, value] of Object.entries(navbarMenu)) {
        const subject = value.href;
        if (subject && URL.match(subject + ".*")) {
            $("._menu-link a").eq(key).addClass("active");
        }
    }
});
$(".burger-menu").click(function() {
    if ($("._show-desktop").css("display") == "none") {
        $("._menu-link").css("display", "block");
    } else if ($("._menu-link").css("display") == "block") {
        $("._menu-link").css("display", "none");
    }
});