


var yiguoCPS = {};
yiguoCPS.order = {};
yiguoCPS.test = false;


yiguoCPS.order = {
    init: function() {
        if (yiguoCPS.test) {
            yiguoCPS.url = "http://cps2.yiguo.com/Api/CPSPushNotificationService?jsoncallback=?";
        } else {
            yiguoCPS.url = "http://cps.yiguo.com/Api/CPSPushNotificationService?jsoncallback=?";
        }
    },
    push: function(id,fun) {
        yiguoCPS.order.init();
        $.getJSON(yiguoCPS.url, {
            id: id
        },function() {
            fun();
        });
    }
};