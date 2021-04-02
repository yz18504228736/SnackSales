


$(function () {
    var paybtn = $(".j_paybtn");

    delayUrl();
    paybtn.on("click", function () {
        var pnum = $(".j_payonlineNum").val();
        if (pnum > 0) {
            toRedirect();
        } else {
            util.Dialog.alert("支付方式错误");
        }
    });
});


var commodityDetails = commodityDetails || {};

function toRedirect() {
    $("#payform").submit();
}

function delayUrl() {
    var timing = $("#timing").text();
    if (timing > 0) {
        timing--;
        $("#timing").text(timing);
        setTimeout("delayUrl()", 1000);
    } else {
        toRedirect();
    }
    
}