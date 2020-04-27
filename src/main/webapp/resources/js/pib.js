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
function initSwiper() {
    var swiper = new Swiper('.swiper-container', {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
            delay: 2500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
}