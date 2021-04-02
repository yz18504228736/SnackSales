// JavaScript Document

//侧边悬浮导航
jQuery.fn.anchorGoWhere = function (options) {
    var obj = jQuery(this);
    var defaults = { target: 0, timer: 500 };
    var o = jQuery.extend(defaults, options);
    obj.each(function (i) {
        jQuery(obj[i]).click(function () {
            var href = jQuery(this).attr("href");
                _rel = href.substr(1);
            if (href.indexOf("#") > -1 && _rel != "") {

                switch (o.target) {
                case "top":
                    var _targetTop = jQuery("#" + _rel).offset().top;
                    jQuery("html,body").animate({ scrollTop: _targetTop }, o.timer);
                    break;
                case "left":
                    var _targetLeft = jQuery("#" + _rel).offset().left;
                    jQuery("html,body").animate({ scrollLeft: _targetLeft }, o.timer);
                    break;
                }
            }
        });
    });
};

$(function () {
    var gao = ($(window).height() / 2);
    if ($.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
        return true;
    }
    else {
        $(window).scroll(function () {
            var totop = $(this).scrollTop();
            if (totop >= 500) {
                $('.goTop').css('display', 'block');
            }
            else {
                $('.goTop').css('display', 'none');
            };
        })
    }


    $(".goTop").anchorGoWhere({ target: "top" });
});

//适应分辨率
var screenWidth = window.screen.width;
if (screenWidth < 1300) {
    //document.write()
    $('.w').addClass('w1280');
}