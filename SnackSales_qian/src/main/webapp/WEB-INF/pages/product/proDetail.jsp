<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="js/dc.js"></script>
    <script type="text/javascript" async="" src="js/yiguoStats.min.js"></script>
    <script charset="utf-8" type="text/javascript" src="js/pckit.js"></script>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${product.productName}在线购买_易果生鲜Yiguo官网</title>
    <meta name="Keywords" content="水果,进口水果,国产水果,蔬菜,肉类,海鲜,禽蛋,粮油,甜点,葡萄酒,易果网">
    <meta name="Description" content="易果Yiguo的，易果Yiguo生鲜保证送到您手中的每一个南非柠檬8个80g以上/个皆新鲜美味。">
    <meta property="qc:admins" content="15753240576117576375">
    <link rel="shortcut icon" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link rel="dns-prefetch" href="">
    <link href="css/public.css" rel="stylesheet" type="text/css">
    <link href="css/customer.css" rel="stylesheet" type="text/css">
    <link href="css/pageguide.css" rel="stylesheet" type="text/css">


    <link href="css/product_detail.css" rel="stylesheet" type="text/css">
    <link href="css/yiguo.css" rel="stylesheet" type="text/css">

    <!--IE6png兼容-->
    <!--[if IE 6]>
    <script type="text/javascript" src="js/DD_belatedPNG.js" ></script>
    <script type="text/javascript" src="js/ie6_loading.js"></script>
    <![endif]-->

    <script type="text/javascript" async="" charset="utf-8" src="js/core.php"></script>
    <script type="text/javascript" charset="utf-8" async="" src="js/dplus.php"></script>
    <script src="js/jquery.js"></script>
    <script src="js/jquery.js/jquery.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript">
        function add() {
            $.post(
                "shoppingcar/add",
                {
                    shoppingcartProNum:$("input[id=p_number]").val(),
                    shoppingcartProPrice:$("span strong").text(),
                    shoppingcartProName:$("div[class=summary-name] h1").text(),
                    shoppingcartProSize:$("span[class=pro_size]").text(),
                    shoppingcartProImg:$("div[class=picList] img")[0].name,
                },
                function (data) {
                    if (data == "IsAjax") {
                        alert("亲，你还未登录，请登录")
                        window.location.href = "user/doLogin";
                        return;
                    } else {
                        alert(data.result)
                    }
                })
        }
    </script>
    <script>
        yg_x = new Date();
        var yw_data = {};
    </script>
    <script type="text/javascript">
        var _bdhm_top = 0;
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        var _bdhm_tim = new Image(1, 1);
        _bdhm_tim.id = "bdhmPerimg";
        _bdhm_tim.src = _bdhmProtocol + "hm.baidu.com/_tt.gif?si=36a486fbdec46fc52ca666dd2e98f260&rnd=" + Math.round(Math.random() * 2147483647);
        _bdhm_tim.onload = function () { _bdhm_top = 1; }
    </script>
    <!-- start Dplus -->
    <script type="text/javascript">
        !function (a, b) {
            if (!b.__SV) {
                var c, d, e, f;
                window.dplus = b, b._i = [], b.init = function (a, c, d) {
                    function g(a, b) {
                        var c = b.split(".");
                        2 == c.length && (a = a[c[0]], b = c[1]), a[b] = function () { a.push([b].concat(Array.prototype.slice.call(arguments, 0))) }
                    }

                    var h = b;
                    for ("undefined" != typeof d ? h = b[d] = [] : d = "dplus", h.people = h.people || [], h.toString = function (a) {
                        var b = "dplus";
                        return "dplus" !== d && (b += "." + d), a || (b += " (stub)"), b
                    }, h.people.toString = function () { return h.toString(1) + ".people (stub)" }, e = "disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "), f = 0; f < e.length; f++) g(h, e[f]);
                    b._i.push([a, c, d])
                }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.php?token=1915ef989c5aence66fa", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d)
            }
        }(document, window.dplus || []), dplus.init("1915ef989c5aence66fa");
    </script>
    <!-- end Dplus -->
    <script type="text/javascript" src="js/ygm.dplus-0.5.js"></script>

</head>
<body id="body">
<div class="w">
    <div id="topads">
    </div>
    <!------- 顶部工具栏 ------->
    <div class="site-nav">
        <div class="wrap">
            <ul class="fl">
                <li>欢迎光临易果生鲜！</li>
                <!--送货城市 开始-->
                <li class="city clearfix">
                    <div class="city-sz">配送至：</div>
                    <div class="city-tit">
                        <a class="city-name" href="javascript:void(0)">上海<s></s></a>
                    </div>
                </li>
                <!--送货城市 结束-->
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
                <a href=""></a>
            </div>
            <!--搜索 开始-->
            <div class="search" style="position:relative;">
                <div class="search-bar clearfix">
                    <input type="text" id="keyword" name="keyword" class="search-input" value="输入商品名／编号／拼音" onfocus=" if (this.value == &#39;输入商品名／编号／拼音&#39;) {this.value = &#39;&#39;;this.style.color = &#39;#000&#39;;} " onblur=" if (this.value == &#39;&#39;) {this.value = &#39;输入商品名／编号／拼音&#39;;this.style.color = &#39;#999&#39;;} " style="color: rgb(153, 153, 153);">
                    <input class="search-btn" type="submit" value="搜索">
                </div>
                <ul class="hide" id="shelper" style="display: none;"></ul>
            </div>
            <!--购物车 开始-->

            <!--购物车 结束-->
        </div>
    </div>

    <div class="header-nav">
        <div class="wrap">
            <!--商品分类 开始-->
            <div class="catalogs">
                <div class="catalogs-title"><a href="javascript:;">全部商品分类▼</a></div>
                <div class="catalogs-list" id="_categry" style="display:none;">

                    <div class="item">
                        <h3 class="t01_channelhome"><a href="product/btypeList/1"><i></i>进口水果<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/1"> 进口水果</a></h4>
                            <div class="sub-list">
                                <c:forEach items="${stypeList1}" var="stype">
                                    <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                </c:forEach>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/1"><img src="images/9570160763248445.png"></a>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <h3 class="t02_channelhome"><a href="product/btypeList/2"><i></i>国产水果<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/2"> 国产水果</a></h4>
                            <div class="sub-list">
                                <div class="sub-list">
                                    <c:forEach items="${stypeList2}" var="stype2">
                                        <a href="product/stypeList/${stype2.stypeId}" target="_blank">${stype2.stypeName}</a>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/2"><img src="images/9570160763379517.png"></a>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <h3 class="t05_channelhome"><a href="product/btypeList/3"><i></i>精选肉类<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/3"> 精选肉类</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList3}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/3"><img src="images/9570160763445053.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t06_channelhome"><a href="product/btypeList/4"><i></i>禽类蛋品<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/4"> 禽类蛋品</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList4}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/4"><img src="images/9570160763510589.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t12_channelhome"><a href="product/btypeList/5"><i></i>即烹美食<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/5"> 即烹美食</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList5}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t04_channelhome"><a href="product/btypeList/6"><i></i>海鲜水产<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/6"> 海鲜水产</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList6}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/6"><img src="images/9570160763576125.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t08_channelhome"><a href="product/btypeList/7"><i></i>乳品糕点<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/7"> 乳品糕点</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList7}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/7"><img src="images/9570160763641661.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t03_channelhome"><a href="product/btypeList/8"><i></i>新鲜蔬菜<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/8"> 新鲜蔬菜</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList8}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/8"><img src="images/9570161550040894.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t10_channelhome"><a href="product/btypeList/9"><i></i>方便速食<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/9"> 方便速食</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList9}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/9"><img src="images/9570160763838269.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t07_channelhome"><a href="product/btypeList/10"><i></i>粮油杂货<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/10"> 粮油杂货</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList10}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/10"><img src="images/9570160757940029.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t09_channelhome"><a href="product/btypeList/11"><i></i>饮料酒水<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/11"> 饮料酒水</a></h4>
                            <div class="sub-list">


                                <div class="sub-list">
                                    <c:forEach items="${stypeList11}" var="stype">
                                        <a href="product/stypeList/${stype.stypeId}" target="_blank">${stype.stypeName}</a>
                                    </c:forEach>
                                </div>

                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/11"><img src="images/9570160763182909.png"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--商品分类 结束-->
            <div class="nav-items">
                <ul id="homenav">
                    <li><a href="newarrival/list" target="_blank">新品专区</a></li>
                    <li><a href="exquisiteLifeStyle/list" target="_blank">优质生活</a></li>
                    <li><a href="menu/list1/" target="_blank">菜谱专栏</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="wrap">
        <!--面包屑-->
        <div class="crumbs">
            <a class="ml0" href="">首页</a>
            &gt;
            <a href="product/btypeList/${product.stype.btype.btypeId}">${product.stype.btype.btypeName}</a>&gt;
            <a href="product/stypeList/${product.stype.stypeId}">${product.stype.stypeName}</a>
            &gt;        ${product.productName}
        </div>
        <!--产品详情-->
        <div class="content clearfix">
            <div class="product-intro clearfix j_product">
                <!--预览图-->
                <div class="pic-preview">
                    <div class="pic-big">
                        <c:forEach items="${proDisplayList}" var="proDisplay">
                            <img class="j_product_img" width="500" height="500" src="shows/${proDisplay.proDisplayImg}" style="display:  block;">
                        </c:forEach>
                    </div>
                    <div class="pic-thumb">
                        <div class="picList">
                            <ul>
                                <c:forEach items="${proDisplayList}" var="proDisplay">
                                    <li><img width="85" height="85" src="shows/${proDisplay.proDisplayImg}" name="${proDisplay.proDisplayImg}"></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>

                    <div class="icon"><img src="images/ICON06.png" width="46" height="46"></div>
                </div>
                <div class="product-info">
                    <div class="summary-name">
                        <h1>${product.productName}</h1>
                        <p>${product.productDesc}</p>
                        <input type="hidden" name="CommodityId" id="CommodityId" value="9863c083-6c45-4ff1-bfa2-0afa8bf4add1">
                    </div>
                    <div class="summary-price clearfix">
                        <div class="pro-price">
                            <div>
                                <span>价格：</span>
                                <span><em>¥</em><strong>${product.productPrice}</strong></span>
                            </div>
                        </div>
                        <div class="pro-review">
                            <p>总体满意度</p>
                            <p><b>5.0</b> 分</p>
                            <p><a href="" id="pllabel"><span>(评论数2302)</span></a></p>
                        </div>
                    </div>
                    <div class="summary-other clearfix">
                        <div class="left">
                            <div id="commoditypromotions"></div>

                            <div class="pro-promo clearfix" style="margin-bottom: 20px; padding-bottom: 10px; border-bottom: 1px dashed rgb(217, 217, 217);">
                                <ul>
                                </ul>
                            </div>
                            <div class="choose clearfix">
                            <div class="dt">规格：</div>
                            <div class="dd">
                                <ul>
                                    <li class="selected">
                                            <span class="pro_price">￥${product.productPrice}</span>
                                            <span class="pro_size">${sizeList.get(0).sizeName}</span>
                                            <i></i>
                                    </li>
                                </ul>
                            </div>
                        </div>
                            <div class="pro-service">满百包邮，<b>24:00</b> 前完成订单 预计明日<b>(10月26日)</b>送达</div>
                            <div class="pro-service"><i class="mr5"><img src="images/icon1.png"></i>不支持7天无理由退货</div>
                            <div class="pro-amount clearfix">
                                <div class="dt">数量：</div>
                                <div class="dd">
                                    <div class="spinner value" maxlength="2">
                                        <button class="decrease" disabled="disabled">-</button>
                                        <input type="text" class="spinner value" id="p_number" maxlength="2">
                                        <button class="increase">+</button>
                                    </div>
                                    <div class="addcart"><a class="btn-gn" id="btn-gn" href="javascript:;" onclick="add();">加入购物车</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="right">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" class="zx">
                                <tbody>
                                <tr><th>原产地：</th><td>${product.productPro}</td></tr>
                                <tr><th>商品品牌：</th><td>${product.productBrand}</td></tr>
                                <tr><th>发货地：</th><td>${product.productFrom}</td></tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content clearfix">
            <!--左侧-->
            <div class="left-con">
                <div class="GetArtical"></div>

                <div id="RecentViewCommodity" style="display:none;">
                    <div class="box recently">
                        <div class="hd">最近浏览<a href="javascript:;" onclick="ClearViewedCommodity()">清空</a></div>
                        <div class="bd" id="recentcommodity">
                        </div>
                    </div>
                </div>
                <div class="box recommend">
                    <div class="hd">猜你喜欢</div>
                    <div class="bd">
                        <div class="p j_product" _code="1235171">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img05.yiguoimg.com/e/web/170414/135957/170414135957728_1235171_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/170414135957728_1235171_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>Joyfish罗汉上素200g*2</strong>
                                    <span>¥17.80</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1235171&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1236992">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img13.yiguoimg.com/e/items/2017/170523/9288708211417783_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/9288708211417783_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>禾煜小黄米1kg</strong>
                                    <span>¥24.50</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1236992&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1291417">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img10.yiguoimg.com/e/items/2017/170428/9288707200262812_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/9288707200262812_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>哈根达斯草莓冰淇淋81g*4</strong>
                                    <span>¥148.00</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1291417&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1275067">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img07.yiguoimg.com/e/web/170515/132531/170515132531436_1275067_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/170515132531436_1275067_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>明治冰淇淋组合(香草+栗子红豆+抹茶)1.545kg</strong>
                                    <span>¥169.00</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1275067&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1234878">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img07.yiguoimg.com/e/web/170224/101109/170224101109787_1234878_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/170224101109787_1234878_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>广西北海墨鱼仔250g</strong>
                                    <span>¥23.90</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1234878&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1269399">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img06.yiguoimg.com/e/web/170418/092629/170418092629423_1269399_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/170418092629423_1269399_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>老杜崇明农家老鸭1kg</strong>
                                    <span>¥108.00</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1269399&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1240136">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img06.yiguoimg.com/e/web/170414/140121/170414140121266_1240136_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/170414140121266_1240136_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>水煮野生罗汉笋220g</strong>
                                    <span>¥15.90</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1240136&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1271577">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img14.yiguoimg.com/e/items/2017/170329/9288705814241917_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/9288705814241917_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>蔬氏焙煎芝麻风味经典沙拉蔬菜100g</strong>
                                    <span>¥22.80</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1271577&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" _code="1002389">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img12.yiguoimg.com/e/items/2017/170602/9288708579107522_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/9288708579107522_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>艾谷有机白莲子200g</strong>
                                    <span>¥43.90</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1002389&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                        <div class="p j_product" style="border-bottom-width:0px" _code="1291057">
                            <div class="img">
                                <a href="" target="_blank">
                                    <img data-original="http://img10.yiguoimg.com/e/items/2017/170505/9288707381535397_300.jpg" width="68" height="68" class="j_product_img lazy" src="images/9288707381535397_300.jpg" style="display: inline;">
                                </a>
                            </div>
                            <div class="txt">
                                <a href="" target="_blank">
                                    <strong>宾格瑞牌香蕉味雪糕640g(80g*8)*3</strong>
                                    <span>¥165.00</span>
                                </a>
                            </div>
                            <a class="add" style="display: none;" onclick="G.app.cart.module.addToCart(this,&#39;1291057&#39;,1,app.referCart)">加入购物车</a>
                        </div>
                    </div>
                </div>

                <script type="text/javascript">
                    $(function () {
                        $("img.lazy").lazyload({ effect: "fadeIn" });
                    })
                </script>
            </div>
            <!--右侧-->
            <div class="main-con">
                <!--当季热卖-->
                <div id="GetHotCommodity">

                    <div class="hot-sale">
                        <div class="hd">当季热卖</div>
                        <div class="bd clearfix">
                            <ul>
                                <li>
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="images/9288714244006745_300.jpg" width="135" height="135">
                                        </a>
                                    </div>
                                    <div class="p-name"><a href="" target="_blank">原膳烟熏三文鱼 （切片）200g</a></div>
                                    <div class="p-price">
                                        <strong>¥45.90</strong>
                                        <del>
                                            ￥45.90
                                        </del>
                                    </div>
                                </li>
                                <li>
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="images/170224101410824_152250_300.jpg" width="135" height="135">
                                        </a>
                                    </div>
                                    <div class="p-name"><a href="" target="_blank">澳洲腱子心1kg</a></div>
                                    <div class="p-price">
                                        <strong>¥110.00</strong>
                                        <del>
                                            ￥110.00
                                        </del>
                                    </div>
                                </li>
                                <li>
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="images/170508094919640_104135_300.jpg" width="135" height="135">
                                        </a>
                                    </div>
                                    <div class="p-name"><a href="" target="_blank">苏北散养童子鸡600g</a></div>
                                    <div class="p-price">
                                        <strong>¥19.80</strong>
                                        <del>
                                            ￥19.80
                                        </del>
                                    </div>
                                </li>
                                <li>
                                    <div class="p-img">
                                        <a href="" target="_blank">
                                            <img src="images/170508094924178_104337_300.jpg" width="135" height="135">
                                        </a>
                                    </div>
                                    <div class="p-name"><a href="" target="_blank">原膳皖南山坡散养土鸡蛋（15枚装）</a></div>
                                    <div class="p-price">
                                        <strong>¥19.00</strong>
                                        <del>
                                            ￥19.00
                                        </del>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!--商品详情-->
                <div class="product-detail">
                    <div class="detail-tab">
                        <ul class="detail-ul">
                            <li id="checks" onclick="detailss">商品详情</li>
                            <li id="checks" onclick="comment">用户评论<b>${proCommentList.size()}</b></li>
                        </ul>
                    </div>
                    <div class="detail-content">
                        <!--商品详情-->
                        <div class="detail-item details clearfix" id="details">
                            <div id="ProductAttribute">

                                <table class="detail-table">
                                    <tbody>
                                    <tr>
                                        <th>单果规格</th>
                                        <td>
                                            ${sizeList.get(0).sizeName}
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>商品状态</th>
                                        <td>
                                            ${product.productState}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                                <c:forEach items="${proDetailList}" var="proDeatil">
                                    <p><img class="lazy" style="display: block;" src="shows/${proDeatil.proDetailImg}"></p>
                                </c:forEach>
                            <p><br></p>
                        </div>
                        <!--用户评论-->
                        <div class="detail-item " id="comment" style="display:none;">
                            <div class="comment-info clearfix">
                                <div class="score">总体满意度<b>5.0<span>分</span></b>(共有<strong>${proCommentList.size()}</strong>人评论)</div>
                                <div class="percent">
                                    <ul class="slip">
                                        <li><b>好评</b><span w="${comments.commentGrade*20}%" style="width: ${comments.commentGrade*20}%;"></span><i>${comments.commentGrade*20}%</i></li>
                                        <li><b>中评</b><span w="${(5-comments.commentGrade)*20}%" style="width: ${(5-comments.commentGrade)*20}%;"></span><i>${(5-comments.commentGrade)*20}%</i></li>
                                        <li><b>差评</b><span w="0%" style="width: 0%;"></span><i>0%</i></li>
                                    </ul>
                                </div>
                                <div class="comment-btn">
                                    <a class="btn-gn" id="commentBtn">我要评论</a>
                                    <p>只有购买过该商品的用户才能评论</p>
                                </div>
                            </div>
                            <div class="comment-list clearfix">
                                <div class="comment-tab-wrap clearfix">
                                    <div class="comment-tab">
                                        <span class="on" _votetype="0">全部评论（<font id="vote_all">${proCommentList.size()}</font>）</span>
                                        <span _votetype="1">好评（<font id="vote_hp">1</font>）</span>
                                        <span _votetype="2">中评（<font id="vote_zp">0</font>）</span>
                                        <span _votetype="3">差评（<font id="vote_cp">0</font>）</span>
                                        <span _votetype="4">有晒单（<font id="vote_st">0</font>）</span>
                                    </div>
                                    <div class="extra">
                                    <span class="">
                                        <select id="commontsort">
                                            <option value="0">按默认</option>
                                            <option value="1">按时间</option>
                                        </select>
                                    </span>
                                        <span class="sort"><label><input type="checkbox" value="1" id="commenthascontent" checked="checked">有内容</label></span>
                                    </div>
                                </div>

                                <div id="ProductCommentVote">
                                    <div _votetype="0"></div>
                                    <div _votetype="1" style="display:none;"></div>
                                    <div _votetype="2" style="display:none;"></div>
                                    <div _votetype="3" style="display:none;"></div>
                                    <div _votetype="4" style="display:none;"></div>
                                </div>
                                <div class="comment-con" style="display:block;">
                                    <ul>
                                        <c:forEach items="${proCommentList}" var="comments">
                                        <li>
                                            <div class="comment-item" _voteid="f1a4c5d3-95c5-4a41-9bca-7ec1630271c9" _userid="77d0c078-c55d-486e-be3b-ea47cb1518a0">
                                                <div class="user">
                                                    <img src="show/${comments.user.userImg}" width="60" height="60">
                                                    <span class="name">${comments.user.userName}</span>
                                                </div>
                                                <div class="content-comment">
                                                    <div class="heading">
                                                        <div class="stars">
                                                            <div class="stars-bg"><span style="width:${comments.commentGrade*20}%"></span></div>
                                                            <div><b>${comments.commentGrade}</b>分</div>
                                                        </div>
                                                        <div class="txt"><span>商品质量：好</span><span>配送服务：未知</span><span>服务质量：好</span></div>

                                                        <div class="date">${comments.commentTime}</div>
                                                    </div>
                                                    <div class="reply">
                                                            ${comments.commentContent}
                                                        <br>
                                                        <div class="reply-images">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer_service">
        <div class="wrap">
            <ul>
                <li class="s1">
                    <b>全球精选</b>
                    <span>一站式生鲜购物方案</span>
                </li>
                <li class="s2">
                    <b>多仓直发</b>
                    <span>特有次日达配送服务</span>
                </li>
                <li class="s3">
                    <b>源头直采</b>
                    <span>精选正宗品质好食材</span>
                </li>
                <li class="s4">
                    <b>天天底价</b>
                    <span>会员专属优惠购不停</span>
                </li>
            </ul>
        </div>
    </div>
    <!------- 页尾 ------->
    <div class="footer">
        <div class="wrap">
            <dl class="col1">
                <dt>新手指南</dt>
                <dd>
                    <p><a href="">账户注册</a></p>
                    <p><a href="">购物流程</a></p>
                    <p><a href="">订购方式</a></p>
                    <p><a href="">悠币说明</a></p>
                    <p><a href="">会员等级<i class="ml5" style="display: none;"><img src="images/icon-new.png"></i></a></p>

                </dd>
            </dl>
            <dl class="col2">
                <dt>付款方式</dt>
                <dd>
                    <p><a href="">支付方式</a>/<a href="">发票说明</a></p>
                    <p><a href="">充值说明</a>/<a href="">储值卡说明</a></p>
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
                    <p><a href="">极速退款</a></p><p>
                </p><p><a href="">投诉与建议</a></p>
                </dd>
            </dl>
            <dl class="col5">
                <dt>关于我们</dt>
                <dd>
                    <p><a href="#">公司介绍</a></p>
                    <p><a href="#">联系我们</a></p>
                    <p><a href="#">业务合作</a></p>
                    <p><a href="#">诚信举报</a></p>
                    <p><a href="#" target="_blank" rel="nofollow">人才招聘</a></p>
                    <p><a href="#">友情链接</a></p>

                </dd>
            </dl>
            <div class="service"><span>客服热线 400-000-7788 企业采购或团购，请转2号键咨询</span><span>周一至周日 9:00-21:00</span></div>
            <div class="copyright">
                <p>所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
                <p> <a href="" target="_blank" rel="nofollow">沪ICP备09008015号 </a>  Copyright © 2005-2017 <a href="http://www.yiguo.com/">上海易果电子商务有限公司</a>版权所有</p>
                <p class="authentication">
                    <a href="" target="_blank" rel="nofollow"><img src="images/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="" target="_blank" rel="nofollow"><img src="images/2517491005058doc.png" height="47"></a>
                    <a href="" target="_blank"><img src="images/footer_copy.gif" width="47px" height="47px"></a>
                    <a target="_blank" href="" style="display: inline-block; text-decoration: none; height: 20px; line-height: 20px;"><img src="images/ghs.png" style="float: left;"><span style="float: left; height: 20px; line-height: 20px; margin: 0px 0px 0px 5px; color: #939393;">沪公网安备 31010502000002号</span></a>
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


    <!------- 侧边悬浮 ------->
    <div class="sidebar" id="sidebar">
        <a href="javascript:void(0);" class="s-btn service" id="calltool_1508925660296"></a>
        <a href="" class="s-btn goTop" style="display: none;"></a>
    </div>
</div>

<script src="js/jquery.cookie.js"></script>
<script src="js/handlebars-v3.0.1.js"></script>
<script src="js/utaste.js"></script>
<script src="js/base.js"></script>
<script src="js/jquery.superslide.js"></script>
<script src="js/sidebar.js"></script>
<script src="js/floor-guide.js"></script>
<script src="js/global-v2.js"></script>
<script src="js/search.js"></script>
<script src="js/city.js"></script>
<script src="js/app.js"></script>
<script src="js/common.js"></script>
<script src="js/util.js"></script>
<!--[if lt IE 9]>
<script src="https://g.alicdn.com/aliww/ww/json/json.js" charset="utf-8"></script>
<![endif]-->
<!-- 自动适配移动端与pc端 -->
<script src="js/saved_resource" charset="utf-8"></script>
<script src="js/chat.js"></script>
<script>
    $(function () {
        app.init();
        YgmDplus.init("www.yiguo.com", "", "");
    })

</script>
<!--yiguoStats-->
<script type="text/javascript">
    var _yaq = _yaq || [];
    _yaq.push(['_operate', 'view']);
    _yaq.push(['_site', 'YiGuo']);
    _yaq.push(['categoryid', '']);
    _yaq.push(['behaviorid', '']);
    _yaq.push(['behavior', '']);

    (function () {
        var ya = document.createElement('script'); ya.type = 'text/javascript'; ya.async = true;
        ya.src = "http://tracker.yiguo.com/Scripts/yiguoStats.js";
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ya, s);
    })();

</script>


<script src="js/product_detail.js"></script>
<script src="js/jquery.spinner.js"></script>

<script src="js/jquery.lazyload.js"></script>
<script type="text/javascript">

    yw_data={pagetype:"1",data:"1291452"};

    AddViewedCommodity('南非柠檬8个80g以上/个', '1291452', 'http://img10.yiguoimg.com/e/items/2017/170517/9288707977257649_300.jpg');
    $(".spinner").spinner({
        max: 99,
        min: 1,
        step: 1
    });
    app.getrecentViewCommodity("/product/GetRecentViewCommodity?commodityCode=1291452");
    $(function () {
        $(".pro-promo").last().css({ "border-bottom": "1px dashed #d9d9d9", "margin-bottom": "20px", "padding-bottom": "10px" });
    })
</script>
<script type="text/javascript">
    if (getCookie('cps') == "100001&mediav") {
        var _mvq = window._mvq || [];
        window._mvq = _mvq;
        _mvq.push(['$setAccount', 'm-20296-1']);
        _mvq.push(['$setGeneral', 'goodsdetail', '', /*用户名*/ '', /*用户id*/ '']);
        _mvq.push(['$logConversion']);

        _mvq.push(['setPageUrl', /*单品着陆页url*/ window.location.href]);	//如果不需要特意指定单品着陆页url请将此语句删掉
        _mvq.push(['$addGoods',  /*分类id*/   '0111_ganjuchengyou', /*品牌id*/ '', /*商品名称*/  '南非柠檬8个80g以上/个',/*商品ID*/ '1291452',/*商品售价*/ '29.00', /*商品图片url*/'http://img01.yiguoimg.com/img/9288707977257649.jpg', /*分类名*/ '柑桔橙柚', /*品牌名*/ '', /*商品库存状态1或是0*/ '1', /*网络价*/ '',/*收藏人数*/ '', /*商品下架时间*/ '']);
        _mvq.push(['$addPricing', /*价格描述*/ '']);
        _mvq.push(['$logData']);
    }
    $(window).scroll(function () {
        var spaceTop = $('.detail-content').offset().top,
            scrollTop = $(window).scrollTop();
        if (scrollTop > spaceTop) {
            $('.detail-tab').addClass('fixed');
            $(".detail-tab").append($(".shopping-cart"));
        }
        else {
            $('.detail-tab').removeClass('fixed');
            $(".header .wrap").append($(".shopping-cart"));
        }
    });

    $(function () {
        $(".addcart").click(function () {
            var vdsjson = {
                "event_target": this
                , "page_name": "商品详情页"
                , "page_widget_position":1
                , "city": "1"
                , "sku_price": 29.00
                , "sku_id": 1291452
                , "category_id":"0111_ganjuchengyou"
                , "cart_sku_amount": $("#p_number").val()
            };
            //_vds.track("add_to_cart", vdsjson);

            //99click
            //判断用户符合登录规则
            //var tprm="userName="+getCookie("uid");
            //__ozfac2(tprm,"#addBasket"); //调用ozfac2函数，发送cnt请求；注意第二个参数的格式
            //setTimeout("",300);         //为了保证ozfac2函数顺利执行，等待300~500ms
        })
    })

</script>

<script type="text/javascript">
    if (getCookie('cps') == "100002&ipinyou") {
        var _goodsData = {//商品ID（必填）
            soldOut: '1', // 状态 1下架，0在售（必填）
            category: '', // 所属分类完整路径 （必填）
            categoryId: '0111_ganjuchengyou', // 所属分类ID （必填）
            name: '南非柠檬8个80g以上/个', // 商品名称（必填）
            price: '29.00', // 商品售价（必填）
            imgUrl: 'http://img01.yiguoimg.com/img/9288707977257649.jpg', // 商品预览图 （必填）
            productUrl: window.location.href, // 商品URL地址 （必填）
            domain: '1', // 分站（如有分站必填）
            brand: ''
        };
        var _py = _py || [];
        _py.push(['a', '6y..SrO6vljE2uhkqi03vEbY8_']);
        _py.push(['domain', 'stats.ipinyou.com']);
        _py.push(['pi', _goodsData]);
        _py.push(['e', '']);
        -function (d) {
            var s = d.createElement('script'),
                e = d.body.getElementsByTagName('script')[0]; e.parentNode.insertBefore(s, e),
                f = 'https:' == location.protocol;
            s.src = (f ? 'https' : 'http') + '://' + (f ? 'fm.ipinyou.com' : 'fm.p0y.cn') + '/j/adv.js';
        }(document);
    }
</script>
<script>

    var productids = new Array();
    var products = $(".recommend .j_product img a");
    $.each(products, function (index, item) {
        if (index < 10) {
            var link = $(item).attr("href");
            productids.push(link.substring(link.lastIndexOf('/') + 1, link.lastIndexOf('.')));
        }
    });

    var firstcategoryLink = $(".crumbs a").eq(1).attr("href");
    var categoryCode; var categoryName;
    if ($(".crumbs a").eq(1) != undefined && $(".crumbs a").eq(1).length > 0) {
        categoryCode = firstcategoryLink.substring(firstcategoryLink.lastIndexOf('/') + 1, firstcategoryLink.lastIndexOf('.'));
        categoryName = $(".crumbs a").eq(1).html();
    }


</script>

<script type="text/javascript">
    $(function(){

        $("img.lazy").lazyload({  effect : "fadeIn"});
        $("video").find("source").attr("src",$(this).attr("data-original"));

        var commodity={
            CommodityId:"9863c083-6c45-4ff1-bfa2-0afa8bf4add1",
            State:"1",
            Stock:"有货",
            WebId:"1",
            Spec:"8个/份",
            InDeliveryArea:"True",
        };
        if(commodity.InDeliveryArea&&commodity.Stock!= "无货"&& commodity.State == 1)
        {
            product.GetCommodityPromotion(commodity);
        }
        product.GetHotCommodity (commodity.CommodityId);
        product.GetArtical(commodity.CommodityId);
        //product.LikeMoreCommodity(commodity.CommodityId);
        if(product.WebId == 8 &&product.Spec!=undefined&& (product.Spec.indexOf("磅")>0 || product.Spec.indexOf("cm")>0))
        {
            product.CakeParts();
        }
        product.ProductAttribute(commodity.CommodityId);

    })
    

</script>







<script src="js/stats.js"></script>



<div class="popout Dailog-poput" style="z-index:999999999;display:none;"><div class="popout-wrap">
    <div class="popout-con">            	                <div class="title"><i></i>提 示</div>
        <div class="con">            		                <p style="text-align: center; font-size: 14px; padding-top: 15px;"></p>
            <div class="btnbox" style="margin-top: 45px;"><a class="confirm" href="javascript:">确定</a></div>
        </div>
    </div>
</div>
    <div class="popout-bg">&nbsp;</div>
</div>
</body>
</html>
<script>
    $(function () {
        var showa= $("#checks");
        showa.onclick(function () {
            if (showa().name === "detailss") {
                $("#details").hide();
                $("#comment").show();
            } else {
                $("#comment").hide();
                $("#details").show();
            }
        });
    });
</script>