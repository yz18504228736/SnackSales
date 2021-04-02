

function applyCommodity() {
    var goods = $("#f-goods"),
        aid = $("#articleId");

    util.Ajax.get_load("/Recipes/GetCommoditys",
        {
            aid: aid.val()
        },
        function(result) {
            if (result) {
                goods.utastebars({
                    tpl: $("#recipedetailtpl"),
                    context: result
                });
            }
        }, goods);
};

function checkCommodity() {
    var goods = $("#f-goods");

    goods.on("click","input[id^='p-item']", function () {
        var elecids = goods.find("#cids"),
            elecount = goods.find(".j_amount"),
            eleprice = goods.find(".j_price"),
            totalprice = 0, count = 0,
            idlist = [];

        goods.find("input[id^='p-item']").each(function() {
            var ele = $(this),
                cid = ele.data("id"),
                price = ele.data("price");

            if (ele.prop("checked")) {
                idlist.push(cid + "|1");
                totalprice += price;
                count++;
            }
        });
        elecids.val(idlist.join(","));
        elecount.text(count);
        eleprice.text(totalprice.toFixed(2));
    });

}


function buy() {
    var goods = $("#f-goods"),
        elecids = goods.find("#cids").val();

    if (elecids != "") {
        G.app.cart.Facade.addToCart_Ids("", elecids);
    } else {
        util.Dialog.alert("请先选择商品");
    }
}

function hint() {
    var container = $(".recipe-main"),
        aid = container.find("#articleId"),
        menu = container.find(".recipe-guide");
    menu.on("click", "a", function () {
        var ele = $(this),
            count = container.find(".j_hintnum").text();


        if (ele.hasClass("j_hint")) {
            if (ele.hasClass("j_active")) {
             
            util.Ajax.post('/Recipes/ArticleVote', { id: aid.val() }, function () {
                container.find(".j_hintnum").text(Number(count) + 1);
            });
            ele.removeClass("j_active");   
            }
        } else {
            if (!ele.hasClass("current")) {
                ele.addClass("current");
            }
            ele.siblings("a").removeClass("current");
        }
    });
}


$(window).scroll(function () {
    var spaceTop = $('.recipe-space').offset().top,
		scrollTop = $(window).scrollTop();
    if (scrollTop > spaceTop) {
        $('.recipe-guide').addClass('recipe-fixed');
    }
    else {
        $('.recipe-guide').removeClass('recipe-fixed');
    }
});

$(function() {
    applyCommodity();
    checkCommodity();
    //buy();hint()
    hint();


    $(window).scroll(function () {
        var top = $(document).scrollTop();
        var menu = $(".recipe-guide");
        var items = $(".floor");

        var curId = "";

        items.each(function () {
            var m = $(this);
            var itemsTop = m.offset().top;
            if (top > itemsTop - 200) {
                curId = "#" + m.attr("id");
            } else {
                return false;
            }
        });

        //给相应的楼层设置cur,取消其他楼层的cur
        var curLink = menu.find(".current");
        if (curId && curLink.attr("href") != curId) {
            curLink.removeClass("current");
            menu.find("[href=" + curId + "]").addClass("current");
        }
        // console.log(top);
    });

    $(".recipe-guide a").anchorGoWhere({ target: "top" });
});