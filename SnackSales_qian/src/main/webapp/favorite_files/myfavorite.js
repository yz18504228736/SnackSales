
var pageQuestData = {
    type: 0,
    pageData: {
        Index: 0,
        PageSize: 5,
        Count: 0,
        PagesCount: 0
    }
};

function applyDate(pageData) {
    if (pageData != undefined && pageData != "") {
        pageQuestData.pageData = pageData;
    }

    util.Ajax.get_load("../Trade/GetFavorites",
        {
            index: pageQuestData.pageData.Index,
            pageSize: pageQuestData.pageData.PageSize,
            type: pageQuestData.type
        },
        function(result) {
            if (result) {
                $(".j_favos").utastebars({
                    tpl: $("#favotpl"),
                    context: result,
                    emptytext: "记录为空"
                });
                common.pagePlugins.init("j_pages", result.page, applyDate);
                $("#j_pages").addClass("j_active");
                pageQuestData.pageData.PagesCount = result.page.PagesCount;
                $(".j_checkall").prop("checked", false);
            }
        }, $(".j_favos"));
};

$(function () {
    applyDate();

    $("#selspan").on("change", function () {
        pageQuestData.pageData.Index = 0;
        pageQuestData.type = $("#selspan").val();
        applyDate();
    });

    $(".j_unfavo").on("click", function () {
        var ids = [];
        $(".j_favos").find("input[type=checkbox]").each(function () {
            if ($(this).prop("checked")) {
                ids.push($(this).data("cid"));
            }
        });
        if (ids == "" || ids.length < 1) {
            util.Dialog.alert("未选中商品");
            return false;
        }
        $.ajax({
            type: "get",
            data: {
                cid: ids.join(",")
            },
            url: "../Trade/UnFavorites",
            success: function (result) {
                if (result.data > 0) {
                    applyDate();
                    $(".mylist .j_checkall").prop("checked", false);
                } else {
                    util.Dialog.alert("取消收藏失败");
                }
            }
        });
    });


    $(".j_addtoCard").on("click", function () {
        var ids = [];
        $(".j_favos").find("input[type=checkbox]").each(function () {
            if ($(this).prop("checked")) {
                ids.push($(this).data("id") + "|1");
            }
        });
        if (ids == "" || ids.length < 1) {
            util.Dialog.alert("未选中商品");
            return false;
        }
        G.app.cart.Facade.addToCart_Ids('', ids.join(","));
    });


    $(".j_favos").on("click", ".j_unfavoopt", function () {
        var id = $(this).data("id");
        if (id == null || id === "") {
            util.Dialog.alert("取消收藏失败");
            return false;
        }
        $.ajax({
            type: "get",
            data: {
                cid: id
            },
            url: "../Trade/UnFavorites",
            success: function (result) {
                if (result.data > 0) {
                    applyDate();
                } else {
                    alert("取消收藏失败");
                }
            }
        });
    });


    $(".j_favos").on("click", ".btn-dhtz", function () {
        var ele = $(this);
        if (ele == null || ele.data("id") == "") {
            return false;
        }
        $.ajax({
            type: "get",
            data: {
                commodityId: ele.data("id")
            },
            url: "../Trade/ArrivalNotice",
            success: function (result) {
                if (result) {
                    util.Dialog.alert(result.msg);
                }
            }
        });
    });

});