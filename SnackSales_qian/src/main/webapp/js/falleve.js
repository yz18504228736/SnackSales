

(function ($) {
    $.fn.falleve = function (options) {
        var template = '<div class="img-rotate"><img src="{0}"/></div>',
            ele = $(this),
            defaults = {
                minSize: 10,
                maxSize: 40,
                newOn: 600,
                fallTop: 0,
                fallBottom: $(document).height(),
                fallWidth: $(document).width(),
                picUrl: "http://static01.yiguo.com/www/images/sale/2015120414144333818.png"
                //flakeColor: "red"
            };

        options = $.extend({}, defaults, options);
        template = common.stringFormat(template, [options.picUrl]);
        interval();

        function interval() {
            if (ele && ele.length > 0) {
                if (ele.width() <= 0) {
                    setTimeout(function () { interval(); }, 1000);
                    return false;
                }
                options.fallBottom = ele.offset().top + ele.height();
                options.fallTop = ele.offset().top;
                //console.log(ele.offset().top +" + "+ ele.height());
            }
            setInterval(function () {
                var startOpacity = 0.5 + Math.random(),
                    //startalpha = Math.random()*100,
                    sizeFlake = options.minSize + Math.random() * options.maxSize,
                    startPositionLeft = Math.random() * options.fallWidth - sizeFlake,
                    endPositionTop = options.fallBottom,
                    endPositionLeft = startPositionLeft - 500 + Math.random() * 500,
                    durationFall = options.fallBottom * 10 + Math.random() * 5000;
                $(template).clone().appendTo('body').css({
                    top: options.fallTop,
                    left: startPositionLeft,
                    width: sizeFlake,
                    height: sizeFlake
                    //background: options.flakeColor
                }).animate({
                    top: endPositionTop,
                    left: endPositionLeft
                }, durationFall, 'linear', function () {
                    $(this).remove();
                });
            }, options.newOn);
        }
    };
})(jQuery);