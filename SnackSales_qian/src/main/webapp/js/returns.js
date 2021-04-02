// JavaScript Document
$(document).ready(function(){
	$('.product_list li').last().css('border-bottom','0px')
	
	$(".r-profile .btn-edit").click(function(){
		$(".edit-info").animate({height:'show'});
	});
	$(".r-profile .edit-info .myorder-btn").click(function () {
	    var _Consignee = $("#Consignee").val();
	    var _ConsigneeMobile = $("#ConsigneeMobile").val();
	    var _ConsigneeAddress = $("#ConsigneeAddress").val();

	    if ($.trim(_Consignee).length == 0)
	    {
	        $("#Consignee").closest("li").find("label").html("请填写联系人！");
	        return false;
	    }
	    if ($.trim(_ConsigneeMobile).length == 0) {
	        $("#ConsigneeMobile").closest("li").find("label").html("请填写联系方式！");
	        return false;
	    }
	    if ($.trim(_ConsigneeAddress).length == 0)
	    {
	        $("#ConsigneeAddress").closest("li").find("label").html("请填写详细地址！");
	        return false;
	    }

	    $("#lb_Consignee").html(_Consignee);
	    $("#lb_ConsigneeMobile").html(_ConsigneeMobile);

	    var address = $("#province option:selected").text() + "," + $("#AreaId option:selected").text() + "," + $("#ConsigneeAddress").val();

	    $("#lb_ConsigneeAddress").html(address);
        

		$(".edit-info").animate({height:'hide'});
	});
	
	$('#imgdiv').hover(function(){
		$(this).find('img').show();
	},function(){
		$(this).find('.prowrap').hide();
	});
});


/*图片预览插件*/
/*
*使用方法:
*界面构造(IMG标签外必须拥有DIV 而且必须给予DIV控件ID)
* <div id="imgdiv"><img id="imgShow" width="120" height="120" /></div>
* <input type="file" id="up_img" />
*调用代码:
* new uploadPreview({ UpBtn: "up_img", DivShow: "imgdiv", ImgShow: "imgShow" });
*参数说明:
*UpBtn:选择文件控件ID;
*DivShow:DIV控件ID;
*ImgShow:图片控件ID;
*Width:预览宽度;
*Height:预览高度;
*ImgType:支持文件类型 格式:["jpg","png"];
*callback:选择文件后回调方法
*/

var uploadPreview = function(setting) {
    /*this(当前对象)*/
    var _self = this;
    /*判断为null或者空值*/
    _self.IsNull = function(value) {
        if (value == undefined || value == null || value == "" || value.length == 0) {
            return true;
        }
        return false;
    }
    /*默认配置*/
    _self.DefautlSetting = {
        UpBtn: "",
        DivShow: "",
        ImgShow: "",
        Width: "55",
        Height: "55",
        ImgType: ["gif", "jpeg", "jpg", "bmp", "png"],
        ErrMsg: "选择文件错误,图片类型必须是(gif,jpeg,jpg,bmp,png)中的一种",
        callback: function() { }
    };
    /*读取配置*/
    _self.Setting = {
        UpBtn: _self.IsNull(setting.UpBtn) ? _self.DefautlSetting.UpBtn : setting.UpBtn,
        DivShow: _self.IsNull(setting.DivShow) ? _self.DefautlSetting.DivShow : setting.DivShow,
        ImgShow: _self.IsNull(setting.ImgShow) ? _self.DefautlSetting.ImgShow : setting.ImgShow,
        Width: _self.IsNull(setting.Width) ? _self.DefautlSetting.Width : setting.Width,
        Height: _self.IsNull(setting.Height) ? _self.DefautlSetting.Height : setting.Height,
        ImgType: _self.IsNull(setting.ImgType) ? _self.DefautlSetting.ImgType : setting.ImgType,
        ErrMsg: _self.IsNull(setting.ErrMsg) ? _self.DefautlSetting.ErrMsg : setting.ErrMsg,
        callback: _self.IsNull(setting.callback) ? _self.DefautlSetting.callback : setting.callback
    };
    /*获取文本控件URL*/
    _self.getObjectURL = function(file) {
        var url = null;
        if (window.createObjectURL != undefined) {
            url = window.createObjectURL(file);
        } else if (window.URL != undefined) {
            url = window.URL.createObjectURL(file);
        } else if (window.webkitURL != undefined) {
            url = window.webkitURL.createObjectURL(file);
        }
        return url;
    }
    /*绑定事件*/
    _self.Bind = function() {
        document.getElementById(_self.Setting.UpBtn).onchange = function() {
            if (this.value) {
                if (!RegExp("\.(" + _self.Setting.ImgType.join("|") + ")$", "i").test(this.value.toLowerCase())) {
                    alert(_self.Setting.ErrMsg);
                    this.value = "";
                    return false;
                }
                if (navigator.userAgent.indexOf("MSIE") > -1) {
                    try {
                        document.getElementById(_self.Setting.ImgShow).src = _self.getObjectURL(this.files[0]);
                    } catch (e) {
                        var div = document.getElementById(_self.Setting.DivShow);
                        this.select();
                        top.parent.document.body.focus();
                        var src = document.selection.createRange().text;
                        document.selection.empty();
                        document.getElementById(_self.Setting.ImgShow).style.display = "none";
                        div.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                        div.style.width = _self.Setting.Width + "px";
                        div.style.height = _self.Setting.Height + "px";
                        div.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = src;
                    }
                } else {
                    document.getElementById(_self.Setting.ImgShow).src = _self.getObjectURL(this.files[0]);
                }
                _self.Setting.callback();
            }
        }
    }
    /*执行绑定事件*/
    _self.Bind();
}

$(function(){
	$('#imgdiv').hover(function(){
		$(this).addClass("pic-upload-bigimg");
	},function(){
		$(this).removeClass("pic-upload-bigimg");
	});
});

