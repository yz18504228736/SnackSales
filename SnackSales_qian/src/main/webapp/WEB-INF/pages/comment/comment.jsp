<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0041)http://home.yiguo.com/Trade/CommodityVote -->
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script charset="utf-8" type="text/javascript" src="js/pckit.js"></script>

    <title>零食在售_全球精选</title>

    <meta name="Keywords" content="水果，进口水果，国产水果，零食在售网">
    <meta name="Description" content="零食在售Yiguo网是专业的进口生鲜水果食品网络购物平台，为您精选全球3001多种生鲜果蔬品质食材，在体验网上购物新模式的同时享尽各国新鲜美味，零食在售网是您悠悦生活的品质之选。">
    <meta property="qc:admins" content="15753240576117576375">
    <link rel="shortcut icon" href="">
    <link href="css/public.css" rel="stylesheet" type="text/css">
    <link href="css/yg.css" rel="stylesheet" type="text/css">
    <link href="css/search.css" rel="stylesheet" type="text/css">
    <script charset="utf-8" src="js/v.js"></script><script type="text/javascript" async="" src="js/dc.js"></script><script type="text/javascript" async="" src="js/yiguoStats.min.js"></script><script type="text/javascript" id="veConnect" async="" crossorigin="anonymous" src="js/capture-apps-4.20.1.js"></script><script type="text/javascript" async="" src="js/collect.js"></script><script type="text/javascript" async="" charset="utf-8" src="js/core.php"></script><script type="text/javascript" async="" src="js/vds.js"></script><script type="text/javascript" async="" src="js/adw.js"></script><script src="js/tm.js" async=""></script><script type="text/javascript" charset="utf-8" async="" src="js/dplus.php"></script><script src="js/jquery-1.7.2-min.js"></script>
    <link href="css/returns.css" rel="stylesheet" type="text/css">

    <link href="css/themes.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        var _bdhm_top = 0;
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        var _bdhm_tim = new Image(1, 1);
        _bdhm_tim.id = "bdhmPerimg";
        _bdhm_tim.src = _bdhmProtocol + "hm.baidu.com/_tt.gif?si=36a486fbdec46fc52ca666dd2e98f260&rnd=" + Math.round(Math.random() * 2147483647);
        _bdhm_tim.onload = function () { _bdhm_top = 1; }
    </script>
    <script type="text/javascript">
        yg_x = new Date();
        var yw_data = {};
    </script>
    <!-- start Dplus -->
    <script type="text/javascript">!function (a, b) { if (!b.__SV) { var c, d, e, f; window.dplus = b, b._i = [], b.init = function (a, c, d) { function g(a, b) { var c = b.split("."); 2 == c.length && (a = a[c[0]], b = c[1]), a[b] = function () { a.push([b].concat(Array.prototype.slice.call(arguments, 0))) } } var h = b; for ("undefined" != typeof d ? h = b[d] = [] : d = "dplus", h.people = h.people || [], h.toString = function (a) { var b = "dplus"; return "dplus" !== d && (b += "." + d), a || (b += " (stub)"), b }, h.people.toString = function () { return h.toString(1) + ".people (stub)" }, e = "disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "), f = 0; f < e.length; f++) g(h, e[f]); b._i.push([a, c, d]) }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.php?token=1915ef989c5aence66fa", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d) } }(document, window.dplus || []), dplus.init("1915ef989c5aence66fa");</script><!-- end Dplus -->
    <script src="js/topdsp.js"></script><script type="text/javascript" async="" src="js/tag.js"></script>
</head>
<body id="body">
<!------- 弹出框 ------->
</div>
<div class="w">
    <!------- 顶部工具栏 ------->
    <div class="site-nav">
        <div class="wrap">
            <ul class="fl">
                <li>欢迎光临零食在售！</li>
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
                <a href="http://www.yiguo.com/"></a>
            </div>
            <!--搜索 开始-->
            <div class="search" style="position:relative;">
                <div class="search-bar clearfix">
                    <input type="text" id="keyword" name="keyword" class="search-input" value="输入商品名／编号／拼音" onfocus=" if (this.value == &#39;输入商品名／编号／拼音&#39;) {this.value = &#39;&#39;;this.style.color = &#39;#000&#39;;} " onblur=" if (this.value == &#39;&#39;) {this.value = &#39;输入商品名／编号／拼音&#39;;this.style.color = &#39;#999&#39;;} " style="color: rgb(153, 153, 153);">
                    <input class="search-btn" type="submit" value="搜索">
                </div>
                <ul class="hide" id="shelper" style="display: none;"></ul>
                <div class="search-keywords" id="keywords">
                    <a href="" class="hot" target="_blank">牛排</a>
                    <a href="" target="_blank">虾仁</a>
                    <a href="" class="hot" target="_blank">鳕鱼</a>
                </div>
            </div>
        </div>
    </div>
    <!--商品分类 开始-->
    <div class="header-nav">
        <div class="wrap">
            <!--商品分类 开始-->
            <div class="catalogs">

                <div class="catalogs-title"><a href="javascript:;">全部商品分类▼</a></div>
                <div class="catalogs-list" style="display:none">
                    <div class="item">
                        <h3 class="t01_channelhome"><a href="product/btypeList/1"><i></i>进口水果<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/1">进口水果</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/1" target="_blank">奇异果</a>
                                <a href="product/stypeList/2" target="_blank">李</a>
                                <a href="product/stypeList/3" target="_blank">莓</a>
                                <a href="product/stypeList/4" target="_blank">牛油果</a>
                                <a href="product/stypeList/5" target="_blank">提子</a>
                                <a href="product/stypeList/6" target="_blank">苹果</a>
                                <a href="product/stypeList/7" target="_blank">柑桔橙柚</a>
                                <a href="product/stypeList/8" target="_blank">香蕉</a>
                                <a href="product/stypeList/9" target="_blank">火龙果</a>
                                <a href="product/stypeList/10" target="_blank">椰子</a>
                                <a href="product/stypeList/11" target="_blank">凤梨</a>
                                <a href="product/stypeList/12" target="_blank">热带水果</a>
                                <a href="product/stypeList/13" target="_blank">时令水果</a>
                                <a href="product/stypeList/14" target="_blank">原箱水果</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/1"><img src="images/9570160763248445.png" alt="进口水果"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t02_channelhome"><a href="product/btypeList/2"><i></i>国产水果<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/2">国产水果</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/15" target="_blank">苹果</a>
                                <a href="product/stypeList/16" target="_blank">梨</a>
                                <a href="product/stypeList/17" target="_blank">柑桔橙柚</a>
                                <a href="product/stypeList/18" target="_blank">猕猴桃</a>
                                <a href="product/stypeList/19" target="_blank">瓜</a>
                                <a href="product/stypeList/20" target="_blank">葡萄</a>
                                <a href="product/stypeList/21" target="_blank">枣</a>
                                <a href="product/stypeList/22" target="_blank">芒果</a>
                                <a href="product/stypeList/23" target="_blank">凤梨</a>
                                <a href="product/stypeList/24" target="_blank">百香果</a>
                                <a href="product/stypeList/25" target="_blank">热带水果</a>
                                <a href="product/stypeList/26" target="_blank">时令水果</a>
                                <a href="product/stypeList/27" target="_blank">原箱水果</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/2"><img src="images/9570160763379517.png" alt="国产水果"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t05_channelhome"><a href="product/btypeList/3"><i></i>精选肉类<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/3">精选肉类</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/28" target="_blank">进口牛肉</a>
                                <a href="product/stypeList/29" target="_blank">国产牛肉</a>
                                <a href="product/stypeList/30" target="_blank">猪肉</a>
                                <a href="product/stypeList/31" target="_blank">羊肉</a>
                                <a href="product/stypeList/32" target="_blank">香肠</a>
                                <a href="product/stypeList/33" target="_blank">火腿/培根</a>
                                <a href="product/stypeList/34" target="_blank">肉制品</a>
                                <a href="product/stypeList/35" target="_blank">进口鹿肉</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/3"><img src="images/9570160763445053.png" alt="精选肉类"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t06_channelhome"><a href="product/btypeList/4"><i></i>禽类蛋品<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/4">禽类蛋品</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/36" target="_blank">鸡</a>
                                <a href="product/stypeList/37" target="_blank">鸭</a>
                                <a href="product/stypeList/38" target="_blank">鹅/鸽/特色禽类</a>
                                <a href="product/stypeList/39" target="_blank">蛋</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/4"><img src="images/9570160763510589.png" alt="禽类蛋品"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t12_channelhome"><a href="product/btypeList/5"><i></i>即烹美食<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/5">即烹美食</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/40" target="_blank">独家秘制</a>
                                <a href="product/stypeList/41" target="_blank">生猛海鲜</a>
                                <a href="product/stypeList/42" target="_blank">日韩料理</a>
                                <a href="product/stypeList/43" target="_blank">美味靓汤</a>
                                <a href="product/stypeList/44" target="_blank">经典主菜</a>
                                <a href="product/stypeList/45" target="_blank">中华美食</a>
                                <a href="product/stypeList/46" target="_blank">精致西餐</a>
                                <a href="product/stypeList/47" target="_blank">开胃小菜</a>
                                <a href="product/stypeList/48" target="_blank">东南亚风味</a>
                                <a href="product/stypeList/49" target="_blank">田园时蔬</a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t04_channelhome"><a href="product/btypeList/6"><i></i>海鲜水产<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/6">海鲜水产</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/50" target="_blank">鱼</a>
                                <a href="product/stypeList/51" target="_blank">三文鱼</a>
                                <a href="product/stypeList/52" target="_blank">虾</a>
                                <a href="product/stypeList/53" target="_blank">蟹</a>
                                <a href="product/stypeList/54" target="_blank">贝</a>
                                <a href="product/stypeList/55" target="_blank">活鲜</a>
                                <a href="product/stypeList/56" target="_blank">海产干货</a>
                                <a href="product/stypeList/57" target="_blank">特色海产</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/6"><img src="images/9570160763576125.png" alt="海鲜水产"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t08_channelhome"><a href="product/btypeList/7"><i></i>乳品糕点<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/7">乳品糕点</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/58" target="_blank">奶酪</a>
                                <a href="product/stypeList/59" target="_blank">黄油/奶油</a>
                                <a href="product/stypeList/60" target="_blank">酸奶/乳酸饮料</a>
                                <a href="product/stypeList/61" target="_blank">牛奶</a>
                                <a href="product/stypeList/62" target="_blank">面包</a>
                                <a href="product/stypeList/63" target="_blank">蛋糕</a>
                                <a href="product/stypeList/64" target="_blank">甜点</a>
                                <a href="product/stypeList/65" target="_blank">月饼</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/7"><img src="images/9570160763641661.png" alt="乳品糕点"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t03_channelhome"><a href="product/btypeList/8"><i></i>新鲜蔬菜<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/8">新鲜蔬菜</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/66" target="_blank">叶菜类</a>
                                <a href="product/stypeList/67" target="_blank">根茎类</a>
                                <a href="product/stypeList/68" target="_blank">茄果/瓜果类</a>
                                <a href="product/stypeList/69" target="_blank">花菜/豆类</a>
                                <a href="product/stypeList/70" target="_blank">菌菇</a>
                                <a href="product/stypeList/71" target="_blank">沙拉菜</a>
                                <a href="product/stypeList/72" target="_blank">冷冻蔬菜</a>
                                <a href="product/stypeList/73" target="_blank">豆制品</a>
                                <a href="product/stypeList/74" target="_blank">葱蒜类</a>
                                <a href="product/stypeList/75" target="_blank">蔬菜组合</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/8"><img src="images/9570161550040894.png" alt="新鲜蔬菜"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t10_channelhome"><a href="product/btypeList/9"><i></i>方便速食<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/9">方便速食</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/87" target="_blank">养生汤品</a>
                                <a href="product/stypeList/88" target="_blank">冷冻点心</a>
                                <a href="product/stypeList/89" target="_blank">西式主食</a>
                                <a href="product/stypeList/90" target="_blank">中式主食</a>
                                <a href="product/stypeList/91" target="_blank">火锅料</a>
                                <a href="product/stypeList/92" target="_blank">冷藏熟食</a>
                                <a href="product/stypeList/93" target="_blank">半成品菜</a>
                                <a href="product/stypeList/94" target="_blank">易盒家宴</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/9"><img src="images/9570160763838269.png" alt="方便速食"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t07_channelhome"><a href="product/btypeList/10"><i></i>粮油杂货<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/10">粮油杂货</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/76" target="_blank">米</a>
                                <a href="product/stypeList/77" target="_blank">杂粮</a>
                                <a href="product/stypeList/78" target="_blank">面/面制品</a>
                                <a href="product/stypeList/79" target="_blank">油</a>
                                <a href="product/stypeList/80" target="_blank">调味料</a>
                                <a href="product/stypeList/81" target="_blank">干货</a>
                                <a href="product/stypeList/82" target="_blank">果干/零食</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/10"><img src="images/9570160757940029.png" alt="粮油杂货"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t09_channelhome"><a href="product/btypeList/11"><i></i>饮料酒水<s>></s></a></h3>
                        <div class="sub-item">
                            <h4><a href="product/btypeList/11">饮料酒水</a></h4>
                            <div class="sub-list">
                                <a href="product/stypeList/83" target="_blank">水</a>
                                <a href="product/stypeList/84" target="_blank">果汁/饮料</a>
                                <a href="product/stypeList/85" target="_blank">冲调饮品</a>
                                <a href="product/stypeList/86" target="_blank">酒/酒具</a>
                            </div>
                            <div class="catalogs-ad">
                                <a href="product/btypeList/11"><img src="images/9570160763182909.png" alt="饮料酒水"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--商品分类 结束-->
            <div class="nav-items">
                <ul id="homenav">
                    <li><a href="newarrival/list" target="_blank">新品专区</a></li>
                    <li><a href="/exquisiteLifeStyle/list" target="_blank">优质生活</a></li>
                    <li><a href="menu/list1/" target="_blank">零食专栏</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrap">
        <!--面包屑-->
        <div class="crumbs"><a class="ml0" href="http://www.yiguo.com/">首页</a>&gt;<a href="http://home.yiguo.com/Trade/Index" class="j_ygnav">我的零食在售</a><span class="j_thridcrumbs hide">&gt;<a href="javascript:void(0)" class="on j_thirdnav">评论商品</a></span></div>
        <div class="content myyg">
            <div class="sub">
                <div class="menu j_menu">
                    <dl>
                        <dt>交易信息</dt>
                        <dd>
                            <ul>
                                <li><a href="orders/userorders/${currentUser.userId}">我的订单</a></li>
                                <li><a href="orders/bought/${currentUser.userId}">购买过的商品</a></li>
                                <li><a href="favorite/list/${currentUser.userId}">我的收藏</a></li>
                                <li class="on"><a href="comment/userComment/${currentUser.userId}">评论商品</a></li>
                            </ul>
                        </dd>
                        <dt>账号信息</dt>
                        <dd>
                            <ul>
                                <li>
                                    <a href="http://home.yiguo.com/Account/PersonalProfile">个人资料</a>
                                    <img style="height: 19px; width: 20px; margin-left: 10px;" src="js/icon-gift.png">
                                </li>
                                <li><a href="http://home.yiguo.com/Account/AccountSecurity">账号安全</a></li>
                                <li><a href="http://home.yiguo.com/Account/Consignee">收货地址管理</a></li>
                                <li><a href="http://home.yiguo.com/B2BWelfare/CorporationAccount">企业福利入口</a></li>
                            </ul>
                        </dd>
                        <dt>售后服务</dt>
                        <dd>
                            <ul>
                                <li><a href="http://home.yiguo.com/Trade/BackOrder">在线退换货</a></li>
                                <li><a href="http://home.yiguo.com/Trade/Advice">投诉建议</a></li>
                            </ul>
                        </dd>
                    </dl>
                </div>
                <div>
                    <div class="ad" style="height: 308px;">
                        <a href="http://home.yiguo.com/Trade/CommodityVote#" target="_blank" style="display: none"><img src="js/ad.jpg" width="194" height="308"></a>
                    </div>
                </div>
            </div>


            <style>
                .error {
                    color: red;
                    margin-left: 100px;
                    margin-bottom: 20px;
                    display: none;
                }
            </style>
            <div class="main comments">
                <div class="title">已评论商品</div>
                                    <table border="1" class="cart-table" style="border: #68dcae; width: 900px" align="50px" >
                                        <tr>
                                             <td class="cart-t-price">商品信息</td>
                                             <td class="cart-t-total">评论内容</td>
                                             <td class="cart-t-spec">评论分数</td>
                                             <td class="cart-t-opera">评论时间</td>
                                        </tr>
                                        <c:forEach var="comment" items="${commentVoList}">
                                        <tr>
                                             <td class="cart-t-img"><a href=""><img width="100px" height="100px" src="shows/${comment.display.proDisplayImg}"></a></td>
                                             <td class="cart-t-info"><a href="">${comment.comment.commentContent}</a></td>
                                             <td class="cart-t-price">${comment.comment.commentGrade}</td>
                                             <td class="cart-t-total">${comment.comment.commentTime}</td>
                                         </tr>
                                    </c:forEach>
                                    </table>
                </div><br/>
            <span></span>
            <br/>
            <span></span>
            <br/>
            <div class="footer" style="margin-top: auto">
                <div class="wrap">
                    <dl class="col1">
                        <dt>新手指南</dt>
                        <dd>
                            <p><a href="http://www.yiguo.com/help/registersteps.html">账户注册</a></p>
                            <p><a href="http://www.yiguo.com/help/gouwuliucheng.html">购物流程</a></p>
                        </dd>
                    </dl>
                    <dl class="col3">
                        <dt>配送方式</dt>
                        <dd>
                            <p><a href="http://www.yiguo.com/help/sendyuefei.html">配送运费</a></p>
                            <p><a href="http://www.yiguo.com/help/sendquyu.html">配送范围</a></p>
                            <p><a href="http://www.yiguo.com/help/sendtime.html">配送时间</a></p>
                        </dd>
                    </dl>
                    <dl class="col4">
                        <dt>售后服务</dt>
                        <dd>
                            <p><a href="http://www.yiguo.com/help/tuihuanhuoshuoming.html">退换货政策</a></p>
                            <p><a href="http://www.yiguo.com/help/huanhuolc.html">退换货流程</a></p>
                            <p><a href="http://www.yiguo.com/help/qa.html">常见问题</a></p>
                            <p><a href="http://home.yiguo.com/Trade/Advice">投诉与建议</a></p>
                            <p><a href="http://www.yiguo.com/help/quicknessrefund.html">极速退款</a></p>
                        </dd>
                    </dl>
                    <dl class="col5">
                        <dt>关于我们</dt>
                        <dd>
                            <p><a href="http://www.yiguo.com/help/introduction.html">公司介绍</a></p>
                            <p><a href="http://www.yiguo.com/help/contact.html">联系我们</a></p>
                            <p><a href="http://www.yiguo.com/help/procooperation.html">业务合作</a></p>
                            <p><a href="http://www.yiguo.com/help/chengxinjubao.html">诚信举报</a></p>
                            <p><a href="http://yiguo.zhiye.com/home" target="_blank" rel="nofollow">人才招聘</a></p>

                        </dd>
                    </dl>
                    <div class="service"><span>客服热线 400-000-7788</span><span>周一至周日 9:00-21:00</span></div>
                    <div class="copyright">
                        <p>所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
                        <p>版权所有<a href="http://www.yiguo.com/">上海零食在售电子商务有限公司</a>  2005-2017 Copyright @ 2005-2017 _www.yiguo.com, All rights reserved 沪ICP备09008015号<br><br></p>
                        <p class="authentication">
                            <a href="http://www.yiguo.com/legal" target="_blank" rel="nofollow"><img src="myorders_files/153685368061665897_121x29.png" style="height:29px;"></a>
                            <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110512114405424" target="_blank"><img src="myorders_files/footer_copy.gif" width="47px" height="47px"></a>
                            <a href="https://180.169.127.46:9090/?sn=310100102001">
                                <img src="myorders_files/picp_bg.png" alt="»¦¹«θ±¸" border="0">
                                <span>310100102001</span>
                            </a>
                        </p>
                    </div>
                </div>
            </div>

    <div style="display: none">
        <script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F36a486fbdec46fc52ca666dd2e98f260' type='text/javascript'%3E%3C/script%3E"));
        </script><script src="js/h.js" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=36a486fbdec46fc52ca666dd2e98f260" target="_blank"><img border="0" src="js/21.gif" width="20" height="20"></a>
    </div>
    <!------- 侧边悬浮 ------->
    <div class="sidebar" id="sidebar">
        <a href="javascript:void(0);" class="s-btn service" id="calltool_1509519137777"></a>
        <a href="http://home.yiguo.com/Trade/CommodityVote#body" class="s-btn goTop"></a>
    </div>
    <script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script><iframe src="js/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe>
    <script src="js/handlebars-v3.0.1.js"></script>
<script src="js/jquery.superslide.js"></script>
<script src="js/utaste.js"></script>
<script src="js/sidebar.js"></script>
<script src="js/jquery.scrollLoading-min.js"></script>
<script src="js/search.js"></script>
<script src="js/global-v2.js"></script>
<script src="js/base.js"></script>
<script src="js/app.js"></script>
<script src="js/common.js"></script>


<script type="text/javascript" src="js/jquery.bgiframe.js"></script>
<script src="js/swfupload.js" type="text/javascript"></script>
<script src="js/swfupload.queue.js" type="text/javascript"></script>
<script src="js/ygupload.js" type="text/javascript"></script>
<script src="js/ygupload.events.js" type="text/javascript"></script>

<script src="js/util.js"></script>
<script src="js/city.js"></script>
<!--[if lt IE 9]>
<script src="https://g.alicdn.com/aliww/ww/json/json.js" charset="utf-8"></script>
<![endif]-->
<!-- 自动适配移动端与pc端 -->
<script src="js/saved_resource" charset="utf-8"></script>
<script src="js/chat.js"></script>

<script type="text/javascript" src="js/returns.js"></script>
<script type="text/javascript" src="js/commodityVote.js"></script>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
