/********************************************************************************
** auth�� luojianguang
** date�� 2015/5/18 15:09:12
** desc�� ����������
** Ver.:  V1.0.0
*********************************************************************************/

var util = {};
$(function () {
    //��ʾ��Ϣ���
    util.Dialog = (function ($) {
        var win = $(".Dailog-poput");
        if (win.length == 0) {
            $('body').eq(0).append('<div class="popout Dailog-poput" style="z-index:999999999;display:none;"></div>');
            win = $(".Dailog-poput");
        }
        var dailogHtml = '<div class="popout-wrap">\
                            <div class="popout-con">\
            	                <div class="title"><i></i>�� ʾ</div>\
            	                <div class="con">\
            		                <p></p>\
                                    <div class="btnbox"><a class="confirm" href="javascript:">ȷ��</a></div>\
            	                </div>\
                            </div>\
                        </div>\
                        <div class="popout-bg">&nbsp;</div>';
        win.html(dailogHtml);
        var dialog =
         {
             alert: function (msg) {
                 win.find('.con p').html(msg);
                 win.find('.btnbox').html('<a class="confirm" href="javascript:">ȷ��</a>');
                 win.find('.confirm').click(function () {
                     $(this).closest('.Dailog-poput').hide();
                 });
                 win.show();
             },
             alertfun: function (msg,fun) {
                 win.find('.con p').html(msg);
                 win.find('.btnbox').html('<a class="confirm" href="javascript:">ȷ��</a>');
                 win.find('.confirm').click(function () {
                     fun();
                     $(this).closest('.Dailog-poput').hide();
                 });
                 win.show();
             },
             alertGoto: function (msg, url) {
                 win.find('.con p').html(msg);
                 win.find('.btnbox').html('<a class="confirm" href="javascript:">ȷ��</a>');
                 win.find('.confirm').click(function () {
                     $(this).closest('.Dailog-poput').hide();
                     window.location.href = url;
                 });
                 win.show();
             },
             alertReload: function (msg) {
                 win.find('.con p').html(msg);
                 win.find('.btnbox').html('<a class="confirm" href="javascript:">ȷ��</a>');
                 win.find('.confirm').click(function () {
                     $(this).closest('.Dailog-poput').hide();
                     window.location.reload();
                 });
                 win.show();
             },
             confirm: function (msg, fun) {
                 win.find('.con p').html(msg);
                 win.find('.btnbox').html('<a class="confirm" href="javascript:">ȷ��</a><a class="cancel" href="javascript:">ȡ  ��</a>');
                 win.find('.confirm').click(function () {
                     fun();
                     $(this).closest('.Dailog-poput').hide();
                 });
                 win.find('.cancel').click(function () {
                     $(this).closest('.Dailog-poput').hide();
                 });
                 win.show();
             }
         };

        win.find('p').css({
            'text-align': 'center',
            'font-size': '14px',
            'padding-top': '15px'
        });
        win.find('.btnbox').css('margin-top', '45px');
        return dialog;
    })(jQuery);

    //Ajax���
    util.Ajax = (function ($) {
        var divtemplate = "<div class='loading'><i></i><span>���ڼ�����...</span></div>";

        var doAajx = function (url, type, data, success, btn) {
            if (!btn || !btn.hasClass('Loading')) {
                $.ajax({
                    url: url,
                    type: type,
                    cache: false,
                    dataType: 'json',
                    data: data,
                    success: success,
                    beforeSend: function () {
                        if (btn) {
                            btn.addClass('Loading');
                        }
                    },
                    complete: function (xhr, status) {
                        var sessionStatus = xhr.getResponseHeader('ygsessionstatus');
                        if (sessionStatus == 'timeout') {
                            console.log("session����");
                        }
                        if (btn) {
                            btn.removeClass('Loading');
                        }
                    }
                });
            }
        };

        var doAajxList = function (url, type, data, success, ele, tmp) {
            $.ajax({
                url: url,
                type: type,
                cache: false,
                dataType: 'json',
                data: data,
                success: success,
                beforeSend: function () {
                    if (ele.length > 0 && ele.hasClass("j_Loading")) {
                        ele.after(tmp);
                    }
                },
                complete: function () {
                    if (ele.length > 0) {
                        ele.next("div .loading").remove();
                        ele.removeClass("j_Loading");
                    }
                }
            });
        };
        var ajax = {
            get: function (url, data, success, btn) {
                doAajx(url, "GET", data, success, btn);
            },
            post: function (url, data, success, btn) {
                doAajx(url, "POST", data, success, btn);
            },
            get_load: function (url, data, success, ele) {
                doAajxList(url, "GET", data, success, ele, divtemplate);
            }
        };
        return ajax;
    })(jQuery);

    //��ҳ����
    util.Pager = (function ($) {
        var defaults = {
            Index: 0,//ҳ��
            PageSize: 5,//ÿҳ��ʾ����
            PagesCount: 0,//��ҳ��
            Pager: '',//��ҳ�ؼ�ID
            Url: '',//Ajax�����ַ
            Container: '',//���ݼ�������
            HandlebarID: '',//����ģ��ID
            LoadComplete: null//���ݼ�����ɺ�ص�
        };
        var loadComplete = null;
        var options = {};
        var loadData = function (data) {
            options = $.extend(true, {}, options, data);
            if (options.LoadComplete && options.LoadComplete != null) {
                loadComplete = options.LoadComplete;
                options.LoadComplete = null;
            }
            util.Ajax.get(options.Url, options, function (result) {
                if (result) {
                    $(options.Container).utastebars({
                        tpl: $(options.HandlebarID),
                        context: result
                    });
                    common.pagePlugins.init(options.Pager, result.page, loadData);
                    $("#" + options.Pager).addClass("j_active");
                    options.PagesCount = result.page.PagesCount;
                    if (loadComplete && loadComplete != null) {
                        loadComplete(result);
                    }
                }
            });
        };
        var pager = {
            init: function (data) {
                options = $.extend(true, {}, defaults, data);
                loadData(data);
            }
        };
        return pager;
    })(jQuery);

    //�ϴ��ؼ�
    util.Upload = (function ($) {
        var options;
        var ygUpload;
        var upload = {
            //��ʼ���ϴ��ؼ�
            init: function (data) {
                options = $.extend(true, {}, {
                    instanceName: "ygUpload",
                    userId: '',
                    sessionId: "3tax1gpkiq5455gsy4ebti0a",
                    uploadMaxNum: 1,
                    usage: YGUpload.UPLOAD_USAGE.DEFAULT,
                    catId: 3000
                }, data);
                ygUpload = new YGUpload(options);
                if (data) {
                    //�ϴ��ɹ��ص�����
                    if (data.fileUploadSuccess) {
                        ygUploadFileSuccess = data.fileUploadSuccess;
                    }
                    //�ϴ���������ص�����
                    if (data.fileUploadError) {
                        ygUploadFileError = data.fileUploadError;
                    }
                    //�����ص����������ϴ��ؼ����ڴ˴����
                }
            },
            //���ѡ���ļ��ϴ�
            upload: function (e, tagName, thumbs) {
                if (typeof (thumbs) == "undefined") {
                    thumbs = "470x470,100x100";
                }
                if (ygUpload) {
                    ygUpload.settings.tag = tagName;
                    ygUpload.settings.thumbs = thumbs;
                    ygUpload.showDialog();
                }
            }
        };
        return upload;
    })(jQuery);

    //������֤
    util.Validator = (function ($) {
        var validator = {
            //�Ƿ��ֻ���
            isMobile: function (value) {
                return /^((1[0-9]{1})+\d{9})$/.test(value)||/^\d{3}\*\*\*\*\d{4}$/.test(value);
            },
            //�Ƿ�����
            isEmail: function (value) {
                return /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/.test(value);
            },
            //�Ƿ�����
            isInteger: function (value) {
                return /^[-]{0,1}[0-9]{1,}$/.test(value);
            },
            //�Ƿ�������
            isNumber: function (value) {
                return /^[0-9]+$/.test(value);
            },
            //�Ƿ��ǽ��
            isMoney: function (value) {
                return /^[-]{0,1}[0-9]+[\.][0-9]{0,3}$/.test(value);
            }
        };
        return validator;
    })(jQuery);

    //���м
    (util.Navigator = (function ($) {
        var nav = $(".crumbs .j_thirdnav"),
            ygnav = $(".crumbs .j_ygnav"),
            navcontainer = $(".crumbs .j_thridcrumbs"),
            menu = $(".j_menu"),
            url = window.location.href,
            current,
            navData = [
                { url: "/Trade/Index", name: "�ҵ��׹�" },
                { url: "/Trade/MyCoupons", name: "�ҵ��Ż�ȯ" },
                { url: "/Trade/UMoney", name: "�ҵ��Ʊ�" },
                { url: "/Trade/UseGiftCard", name: "�ҵ���Ʒ��" },
                { url: "/Trade/OnlineDelivery", name: "�ҵ����ȯ" },
                { url: "/Trade/OrderList", name: "�ҵĶ���" },
                { url: "/Trade/MyBuy", name: "���������Ʒ" },
                { url: "/Trade/MyCollection", name: "�ҵ��ղ�" },
                { url: "/Trade/CommodityVote", name: "������Ʒ" },
                { url: "/Account/Balance", name: "�˻����" },
                { url: "/Account/PersonalProfile", name: "��������" },
                { url: "/Account/AccountSecurity", name: "�˺Ű�ȫ" },
                { url: "/Account/Consignee", name: "�ջ���ַ����" },
                { url: "/Account/Shared", name: "�Ƽ�����" },
                { url: "/Account/Enterprise", name: "����Ϊ��ҵ�˺�" },
                { url: "/Account/MyRecipes", name: "�ҵĲ���" },
                { url: "/Account/CreateRecipes", name: "�ҵĲ���" },
                { url: "/Trade/BackOrder", name: "�����˻���" },
                { url: "/Trade/Advice", name: "��ƷͶ��" },
                { url: "/Trade/UBExchangeCoupon", name: "�Ʊһ�ȯ" },
                { url: "/OrderLottery", name: "�����ҽ���" },
                { url: "/B2BWelfare/CorporationAccount", name: "����Ϊ��ҵ�ʺ�" }
            ];
        if (nav.length > 0 && ygnav.length > 0 && navcontainer.length > 0) {
            if (url.toLowerCase().indexOf(navData[0].url.toLowerCase()) > 0) {
                ygnav.addClass("on");
            } else {
                $.each(navData, function (idx, val) {
                    if (url.toLowerCase().indexOf(val.url.toLowerCase()) > 0) {
                        nav.text(val.name);
                        navcontainer.show();
                        current = val;
                        return false;
                    }
                });
            }
        }
        if (menu.length > 0 && current !== undefined) {
            menu.find("li a").each(function () {
                var ele = $(this);
                if (ele.text() == current.name) {
                    ele.parent("li").addClass("on");
                    return false;
                }
            });
        }

    })(jQuery));

    //��������
    util.Waterfull = (function ($) {
        var options = {};
        var waterfull = {
            init: function (container, data, callBack) {
                options = $.extend(true, {}, {
                    pageIndex: 1,
                    pageSize: 10,
                    pageCount: 1000000
                }, data);
                var getData = function () {
                    $(container).data('Loading', "1");
                    $(container).addClass('j_Loading');
                    util.Ajax.get_load(options.url, options, function (result) {
                        if (callBack != null) {
                            callBack(result);
                        }
                        options.pageIndex += 1;
                        options.pageCount = result.page.PagesCount;
                        $(container).data('Loading', "0");
                    }, $(container));
                };
                getData();
                $(window).scroll(function () {
                    //���ڼ�����
                    if ($(container).data('Loading') == "1") {
                        return;
                    }
                    //ȫ��������
                    if (options.pageCount < options.pageIndex) {
                        return;
                    }
                    //�����ײ����ĵ���˵ľ���
                    var offsetTop = $(container).offset().top + $(container).height();
                    //�����������߶�
                    var scrollheight = $(window).scrollTop();
                    //��ǰ��Ļ��������߶�
                    var screenheight = $(window).height();
                    if (offsetTop - (scrollheight + screenheight) <= 0) {
                        getData();
                    }
                });
            }
        };
        return waterfull;
    })(jQuery);

});

util.DateFormat = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1, //�·� 
        "d+": this.getDate(), //�� 
        "H+": this.getHours(), //Сʱ 
        "m+": this.getMinutes(), //�� 
        "s+": this.getSeconds(), //�� 
        "q+": Math.floor((this.getMonth() + 3) / 3), //���� 
        "S": this.getMilliseconds() //���� 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

$.fn.Numeral = function () {
    $(this).css("ime-mode", "disabled");
    this.bind("keypress", function (e) {
        var code = (e.keyCode ? e.keyCode : e.which);  //���ݻ�� IE      
        if (!$.browser.msie && (e.keyCode == 0x8))  //����²���ʹ���˸��     
        {
            return;
        }
        return code >= 48 && code <= 57;
    });
    this.bind("blur", function () {
        if (this.value.lastIndexOf(".") == (this.value.length - 1)) {
            this.value = this.value.substr(0, this.value.length - 1);
        } else if (isNaN(this.value)) {
            this.value = "";
        }
    });
    this.bind("paste", function () {
        //var s = clipboardData.getData('text');
        //if (!/\D/.test(s));
        //value = s.replace(/^0*/, '');
        this.value = "";
        return false;
    });
    this.bind("dragenter", function () {
        return false;
    });
    this.bind("keyup", function () {
        if (/(^0+)/.test(this.value)) {
            //this.value = this.value.replace(/^0*/, '');
        }
    });
};