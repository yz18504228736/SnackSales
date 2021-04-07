<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- saved from url=(0022)http://cart.yiguo.com/ -->
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="shoppingcar_files/collect.js">
    </script><script type="text/javascript" async="" charset="utf-8" src="shoppingcar_files/core.php">
</script><script type="text/javascript" async="" src="shoppingcar_files/dc.js">
</script><script async="" src="shoppingcar_files/YGAnalytics.ashx">
</script>
    <title>购物车-零食在售网</title>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="Keywords" content="水果，进口水果，国产水果，零食在售网">
    <meta name="Description" content="零食在售网是全国最大的专业精品水果网之一，从事高品质水果及健康食品销售，提供各类进口水果，国产水果，以专业便捷的配送服务让零食在售迅速布遍全国各地，使您第一时间品尝到最优质最新鲜的水果。电话：400-820-8251,800-820-8251">
    <meta property="qc:admins" content="15753240576117576375">
    <script type="text/javascript" async="" src="shoppingcar_files/vds.js"></script><script type="text/javascript" async="" src="shoppingcar_files/adw.js"></script><script src="shoppingcar_files/tm.js" async=""></script><script type="text/javascript" charset="utf-8" async="" src="shoppingcar_files/dplus.php"></script><script type="text/javascript">
        var yg_x = new Date();
        var httpUrlOneStats="http://tracker.yiguo.com";
    </script>
    <link rel="shortcut icon" href="">
    <link href="shoppingcar_files/public.css" rel="stylesheet" type="text/css">
    <link href="shoppingcar_files/yg.css" rel="stylesheet" type="text/css">

    <link href="shoppingcar_files/cart.css" rel="stylesheet" type="text/css">
    <!-- start Dplus -->
    <script type="text/javascript">!function (a, b) { if (!b.__SV) { var c, d, e, f; window.dplus = b, b._i = [], b.init = function (a, c, d) { function g(a, b) { var c = b.split("."); 2 == c.length && (a = a[c[0]], b = c[1]), a[b] = function () { a.push([b].concat(Array.prototype.slice.call(arguments, 0))) } } var h = b; for ("undefined" != typeof d ? h = b[d] = [] : d = "dplus", h.people = h.people || [], h.toString = function (a) { var b = "dplus"; return "dplus" !== d && (b += "." + d), a || (b += " (stub)"), b }, h.people.toString = function () { return h.toString(1) + ".people (stub)" }, e = "disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "), f = 0; f < e.length; f++) g(h, e[f]); b._i.push([a, c, d]) }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.php?token=1915ef989c5aence66fa", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d) } }(document, window.dplus || []), dplus.init("1915ef989c5aence66fa");</script><!-- end Dplus -->


    <script src="shoppingcar_files/topdsp.js"></script>
    <script type="text/javascript" async="" src="http://configch2.veinteractive.com/tags/CBD65260/4995/49F7/B51A/5963EB93BD47/tag.js"></script>
    <script src="shoppingcar_files/jquery.js"></script>

</head>
<body id="body">
<div class="w">


    <!------- 顶部工具栏 ------->
    <div class="site-nav">
        <div class="wrap">
            <ul class="fl">
                <li>欢迎光临零食在售！</li>
            </ul>
            <ul class="fr">
                <li class="myyiguo">
                    <c:if test="${currentUser==null}">
                        <div class="tit" id="div1"><a rel="nofollow" href="user/doLogin"><i></i>
                            <span>请登录</span>
                        </a>
                            <a rel="nofollow" href="user/doRegister"><i></i>
                                <span>还没有账号，请先注册</span>
                            </a>
                        </div>
                    </c:if>
                    <c:if test="${currentUser!=null}">
                        <div class="tit" id="div1"><a rel="nofollow" href=""><i></i>
                            <span>${currentUser.userTel}</span>
                        </a>
                        </div>
                        <div class="con" id="div3">
                            <a href="user/userinfo/${currentUser.userId}">个人信息</a>
                            <a href="shoppingcar/selectShoppingCartByUser/${currentUser.userId}">我的购物车</a>
                            <a href="orders/userorders/${currentUser.userId}">我的订单</a>
                            <a href="favorite/list/${currentUser.userId}">我的收藏</a>
                            <a href="comment/userComment/${currentUser.userId}">我的评论</a>
                            <a href="address/list/${currentUser.userId}">我的地址</a>
                            <a href="orders/bought/${currentUser.userId}">购买过的商品</a>
                            <a href="user/logOut">注销</a>
                        </div>
                    </c:if>
                </li>
            </ul>
        </div>
    </div>

    <!------- 头部 ------->
    <div class="header clearfix">
        <div class="wrap">
            <div class="logo">
                <a href="" target="_blank"></a>

            </div>
            <div class="steps">
                <ul>
                    <li class="on"><b class="b1"></b><span>我的购物车</span></li>
                    <li><i></i><b class="b2"></b><span>填写订单信息</span></li>
                    <li><i></i><b class="b3"></b><span>成功提交订单</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="theLogin" class="popout p-login" style="display:none;">
        <div class="popout-wrap">
            <div class="popout-con">
                <div class="title" style="margin-bottom:40px;">登    录<a class="close" href="javascript:void()"></a></div>

                <iframe src="" id="dialogIframe" name="dialogIframe" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" style="border: 0px; width: 100%; height: 79%;"></iframe>
            </div>
        </div>
        <div class="popout-bg">&nbsp;</div>
    </div>
    <!-------  我的购物车 ------->
    <div class="cart">
        <div class="wrap">
            <h2>
                我的购物车

                <li class="city clearfix">
                    <div class="city-sz">配送至：</div>
                    <div class="city-tit">
                        <a class="city-name" href="javascript:void(0)">上海<s></s></a>
                    </div>
                </li>

                <a class="on-shopping" href="">继续购物 &gt; &gt;</a>
            </h2>
            <div class="cart-alert">
                <div class="cart-header">
                    <table class="cart-table">
                        <tbody>
                        <tr>
                            <th class="cart-t-info">商品信息</th>
                            <th class="cart-t-price">单价</th>
                            <th class="cart-t-num">购买数量</th>
                            <th class="cart-t-total">合计</th>
                            <th class="cart-t-spec">规格</th>
                            <th class="cart-t-opera">操作</th>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="cart-list" id="theInsulationCan">

                    <c:forEach var="shoppingcar" items="${shoppingCarList}">
                    <table class="cart-table">
                        <input type="hidden" id="cart_id" value="${shoppingcar.shoppingcartId}">
                        <tbody>
                        <tr>
                            <td class="cart-t-img"><a href="" name="${shoppingcar.shoppingcartProImg}"><img src="shows/${shoppingcar.shoppingcartProImg}"></a></td>
                            <td class="cart-t-info"><a href="">${shoppingcar.shoppingcartProName}</a></td>
                            <td class="cart-t-ub" style="width:75px;"></td>
                            <td class="cart-t-price">${shoppingcar.shoppingcartProPrice}</td>
                            <td class="cart-t-num">
                                <b>${shoppingcar.shoppingcartProNum}</b>
                            </td>
                            <td class="cart-t-total">￥<span>${shoppingcar.shoppingcartProPrice*shoppingcar.shoppingcartProNum}</span></td>
                            <td class="cart-t-spec">${shoppingcar.shoppingcartProSize}</td>
                            <td class="cart-t-opera">
                                <a href="favorite/add/${shoppingcar.shoppingcartId};">移入收藏</a>
                                <br>
                                <a href="shoppingcar/deteleById/${shoppingcar.shoppingcartId}" >删除</a>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                    </c:forEach>

                    <div id="theCart" style="display:none;">
                        <span id="theTotalUB">0</span>
                        <span id="theTotalPrice">190.60</span>
                    </div>

                </div>
                <div class="settle-space"></div>
                <div class="cart-footer clearfix settle">
                    <div class="wrap">
                        <div class="fl">
                        </div>
                        <div class="fr">
                            <span class="fs14">总价：<em>￥<span> ${totalMoney}</span></em></span>
                            <input id="SelectedCommIds" name="SelectedCommIds" type="hidden" value="">

                            <a href="orders/orderPage" class="btn" id="btnSubmit" name="btnSubmit" style="cursor:pointer;">去结算</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
        i{background-image:none;}
    </style>
    <div class="footer">
        <div class="wrap">
            <dl class="col1">
                <dt>新手指南</dt>
                <dd>
                    <p><a href="#">账户注册</a></p>
                    <p><a href="#">购物流程</a></p>
                    <p><a href="#">订购方式</a></p>
                    <p><a href="#">悠币说明</a></p>
                    <p><a href="#">会员等级<i class="ml5"><img src="shoppingcar_files/icon-new.png"></i></a></p>

                </dd>
            </dl>
            <dl class="col2">
                <dt>付款方式</dt>
                <dd>
                    <p><a href="">支付方式</a>/<a href="">发票说明</a></p>
                    <p><a href="">充值说明</a><a href="">/储值卡说明</a></p>
                    <p><a href="">优惠代码/礼品卡说明</a></p>
                    <p><a href="">卡券购买章程</a></p>
                </dd>
            </dl>
            <dl class="col3">
                <dt>配送方式</dt>
                <dd>
                    <p><a href="">配送运费</a></p>
                    <p><a href="">配送范围</a></p>
                    <p><a href="">配送时间</a></p>
                </dd>
            </dl>
            <dl class="col4">
                <dt>售后服务</dt>
                <dd>
                    <p><a href="">退换货政策</a></p>
                    <p><a href="">退换货流程</a></p>
                    <p><a href="">常见问题</a></p>
                    <p><a href="">投诉与建议</a></p>
                </dd>
            </dl>
            <dl class="col5">
                <dt>关于我们</dt>
                <dd>
                    <p><a href="">公司介绍</a></p>
                    <p><a href="">联系我们</a></p>
                    <p><a href="">业务合作</a></p>
                    <p><a href="">诚信举报</a></p>
                    <p><a href="" target="_blank" rel="nofollow">人才招聘</a></p>
                </dd>
            </dl>
            <div class="service"><span>客服热线 400-000-7788</span><span>周一至周日 9:00-21:00</span></div>
            <div class="copyright">
                <p>所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
                <p>沪ICP备09008015号 Copyright © 2005-2015 <a href="">上海零食在售电子商务有限公司</a>版权所有</p>
                <p class="authentication">
                    <a href="" target="_blank" rel="nofollow"><img src="shoppingcar_files/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110512114405424" target="_blank"><img src="shoppingcar_files/footer_copy.gif" width="47px" height="47px"></a>
                    <a href="">
                        <img src="shoppingcar_files/picp_bg.png" height="47" alt="»¦¹«θ±¸" border="0">
                        <span>310100102001</span>
                    </a>
                </p>
            </div>
        </div>
    </div>
    <script type="text/javascript">

        var nowDate = new Date();
        var nowTime = nowDate.getFullYear() + "-" + (nowDate.getMonth() + 1) + "-" + nowDate.getDate();
        var endTime = "2017-5-16";
        if (ToDate(nowTime) > ToDate(endTime)) {
            $('.col1 .ml5').hide();
        }

        function ToDate(str) {
            var arr = str.split("-");
            var newDate = new Date(arr[0], arr[1], arr[2]);
            return newDate;
        }
    </script>
</div>
<script src="shoppingcar_files/jquery.js"></script>
<script type="text/javascript" src="shoppingcar_files/global-v2.js"></script>
<!--IE6png兼容-->
<!--[if IE 6]>
<script src="http://static01.yiguo.com/cart/js/DD_belatedPNG.js"></script>
<script src="http://static01.yiguo.com/cart/js/IE6png.js"></script>
<![endif]-->

<script type="text/javascript" src="shoppingcar_files/tab.js"></script>
<script type="text/javascript" src="shoppingcar_files/CartController.js"></script>
<script type="text/javascript">

    $(function () {


        //手机零食在售
        $('.mobile').hover(function(){
            $(this).addClass('current');
        },function(){
            $(this).removeClass('current');
        });


        //我的零食在售
        $('.myyiguo').hover(function(){
            $(this).addClass('current');
        },function(){
            $(this).removeClass('current');
        });

        $(".cart-slct-box .chk input").click(
            function(){
                $("#insulationCan").toggle();
            }
        );
        var sExchangeBuy=$(".preferential-buy").html();
        if($.trim(sExchangeBuy)=="")
        {
            $(".preferential-buy").hide()
        }else{
            $(".preferential-buy").html(sExchangeBuy);
        }

        //换一批
        $("#changePage").live("click",function () {
            var currPage = parseInt($("#currPage").html());
            currPage=currPage +1;
            var totalPage = $("#totalPage").html();
            if(parseInt(totalPage)<=1){
                $("#changePage").hide();
            }else{
                $("#changePage").show();
            }
            if(currPage>totalPage){
                currPage=1;
            }
            var totalPrice=190.60;
            $.get("/ShopCart/ExchangeBuy","totalPrice="+totalPrice+"&pageIndex="+currPage+"&datestamp="+new Date().getTime(),function(data){
                if($.trim(data)=="")
                {
                    $(".preferential-buy").hide()
                }else{
                    $(".preferential-buy").html(data);
                }
            })
        });
        //login popout
        $(".p-login .popout-con .title a.close").click(function(){
            $(".p-login").hide();
        });

        //$(".city-con a").click(function(){
        //    var v = $(this).attr("v");
        //    var areaid = $(this).attr("aid");
        //    var name = $.trim($(this).text());
        //    if (v != "" && v != undefined) {
        //        $.ajax({
        //            url: "/AjaxCart/SetAreaCookie?cityid=" + v + "&cityname=" + encodeURIComponent(name) + "&areaid=" + encodeURIComponent(areaid) + "&r=" + Math.random(),
        //            success: function (data) {
        //                if(data=="1"){
        //                    window.location.reload(true);
        //                }
        //            }
        //        });
        //    }
        //});

    });
    //适应分辨率
    var screenWidth = window.screen.width;
    if (screenWidth < 1300) {
        document.write()
        $('.w').addClass('w1280');
    }
    //结算样式浮动
    $(window).scroll(scrollSettle);
    scrollSettle();
    function scrollSettle() {
        var spaceTop = $('.settle-space').offset().top,
            scrollTop = $(window).scrollTop(),
            windowHeight = $(window).height(),
            elementTop = spaceTop - windowHeight;
        if (elementTop < scrollTop) {
            $('.settle').removeClass('settle-fixed');
        }
        else {
            $('.settle').addClass('settle-fixed');
        }
    }



</script>
<script type="text/javascript">

    var productids = new Array();
    var products = $(".cart-list tr .cart-t-img a");
    $.each(products, function (index, item) {
        if (index < 10) {
            var link = $(item).attr("href");
            var id = link.substring(link.lastIndexOf('/') + 1, link.lastIndexOf('.'));
            productids.push(id);
        }
    })

    window.__zp_tag_params = {
        pagetype:"cart",
        status: (productids.length > 0 && productids[0] != "") ? 1 : 0,
        productID_list:productids
    };
</script>


<script type="text/javascript">
    $(function () {

        y = new Date()
        diff = y.getTime() - yg_x.getTime();
        var Tags = (diff / 1000);
        var pageurl = window.location.href;
        var referrerurl = document.referrer;
        var extData = "";
        if ("undefined" != typeof pageTag) {
            extData = "&categoryid=" + pageTag + "&behavior=0";
            if (uniqueRate) {
                extData += "&behaviorid=" + uniqueRate;
            }
        }
        $.getJSON(httpUrlOneStats + '/Ajax/YGAnalytics.ashx?operate=view&site=Cart' + extData + '&pageurl=' + encodeURIComponent(pageurl) + '&referrerurl=' + encodeURIComponent(referrerurl) + "&Tags=" + Tags + "&datestamp=" + new Date().getTime() + "&jsoncallback=?");
    });
</script>

<script src="shoppingcar_files/common.js"></script>
<script src="shoppingcar_files/stats.js"></script>
<script src="shoppingcar_files/city.js"></script>
<script src="shoppingcar_files/app.js"></script>


<script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script><iframe src="shoppingcar_files/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe></body></html>