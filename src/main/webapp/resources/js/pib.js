function initNav(){
    $(".main-nav").on("mouseenter",function(){
        var $subNav = $(".sub-nav");

        if($subNav.is(":hidden")){
            $subNav.stop().slideDown(300);
            $(".bg").stop().slideDown(300);
        }else{
            hideNav();
        }
    }).on("mouseleave", hideNav);
}

function hideNav() {
    $(".sub-nav, .bg").stop().slideUp(300);
}

function initEvent() {
    $(".sub-nav").on("mouseenter",function () {
        var $thisCartegory = $(this).parent("li").find("a");

        if(!$thisCartegory.hasClass("selected")){
            $thisCartegory.addClass("mainon");
        }
    }).on("mouseleave",function () {
        var $thisCartegory = $(this).parent("li").find("a");

        if(!$thisCartegory.hasClass("selected")){
            $thisCartegory.removeClass("mainon");
        }
    });
}