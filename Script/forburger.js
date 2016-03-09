var wrapper = $("#site-wrapper"),
   menu = $(".menu"),
   menuLinks = $(".menu ul li a"),
   toggle = $(".nav-toggle"),
   toggleIcon = $(".nav-toggle span");

function toggleThatNav() {
    if (menu.hasClass("show-nav")) {
        if (!Modernizr.csstransforms) {
            menu.removeClass("show-nav");
            toggle.removeClass("show-nav");
            menu.animate({
                right: "-=300"
            }, 500);
            toggle.animate({
                right: "-=300"
            }, 500);
        } else {
            menu.removeClass("show-nav");
            toggle.removeClass("show-nav");
        }

    } else {
        if (!Modernizr.csstransforms) {
            menu.addClass("show-nav");
            toggle.addClass("show-nav");
            menu.css("right", "0px");
            toggle.css("right", "330px");
        } else {
            menu.addClass("show-nav");
            toggle.addClass("show-nav");
        }
    }
}

function changeToggleClass() {
    toggleIcon.toggleClass("fa-times");
    toggleIcon.toggleClass("fa-bars");
}

$(function () {
    toggle.on("click", function (e) {
        e.stopPropagation();
        e.preventDefault();
        toggleThatNav();
        changeToggleClass();
    });

    // Keyboard Esc event support
    $(document).keyup(function (e) {
        if (e.keyCode == 27) {
            if (menu.hasClass("show-nav")) {
                if (!Modernizr.csstransforms) {
                    menu.removeClass("show-nav");
                    toggle.removeClass("show-nav");
                    menu.css("right", "-300px");
                    toggle.css("right", "30px");
                    changeToggleClass();
                } else {
                    menu.removeClass("show-nav");
                    toggle.removeClass("show-nav");
                    changeToggleClass();
                }
            }
        }
    });
});