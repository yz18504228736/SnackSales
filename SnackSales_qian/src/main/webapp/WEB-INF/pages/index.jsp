<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>易果生鲜Yiguo网_全球精选_生鲜果蔬 品质食材_易果网yiguo.com</title>
    <meta name="Keywords" content="水果,进口水果,国产水果,蔬菜,肉类,海鲜,禽蛋,粮油,甜点,葡萄酒,易果网">
    <meta name="Description" content="易果生鲜Yiguo网是专业的进口生鲜水果食品网络购物平台，为您精选全球3000多种生鲜果蔬品质食材，在体验网上购物新模式的同时享尽各国新鲜美味，易果网是您悠悦生活的品质之选。">
    <meta property="qc:admins" content="15753240576117576375" />
    <link rel="shortcut icon" href="mages/yiguo.ico" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link rel="dns-prefetch" href="" />
    <link href="css/public.css?v20160816" rel="stylesheet" type="text/css">
    <link href="css/customer.css" rel="stylesheet" type="text/css">
    <link href="css/pageguide.css" rel="stylesheet" type="text/css">


    <link href="css/index.css" rel="stylesheet" type="text/css">

    <!--IE6png兼容-->
    <!--[if IE 6]>
    <script type="text/javascript" src="http://static01.yiguo.com/www/js/DD_belatedPNG.js" ></script>
    <script type="text/javascript" src="http://static01.yiguo.com/www/js/ie6_loading.js"></script>
    <![endif]-->

    <script src="http://static01.yiguo.com/www/js/jquery.js"></script>
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
                }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "/w.cnzz.com/dplus.php?token=1915ef989c5aence66fa", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d)
            }
        }(document, window.dplus || []), dplus.init("1915ef989c5aence66fa");
    </script>
    <!-- end Dplus -->
    <script type="text/javascript" src="js/ygm.dplus-0.5.js"></script>

</head>
<body id="body">
<div class="w">
    <div id="topads">
        <script id="topadstpl" type="text/x-handlebars-template">
            {{#TopAds}}
            <a href="{{Link}}">
                <img src="{{Image}}" style="width:100%;" />
            </a>
            {{/TopAds}}
        </script>
    </div>
    <!------- 顶部工具栏 ------->
    <div class="site-nav">
        <div class="wrap">
            <ul class="fl">
                <li>欢迎光临易果生鲜！</li>
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
                     <div class="tit" id="div1"><i></i>
                         <span>${currentUser.userTel}</span>
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
                    <input type="text" id="keyword" name="keyword" class="search-input" value="输入商品名／编号／拼音" onfocus=" if (this.value == '输入商品名／编号／拼音') {this.value = '';this.style.color = '#000';} " onblur=" if (this.value == '') {this.value = '输入商品名／编号／拼音';this.style.color = '#999';} " style="color: rgb(153, 153, 153);">
                    <input class="search-btn" type="submit" value="搜索">
                </div>
                <ul class="hide" id="shelper" style="display: none;"></ul>
                <div class="search-keywords" id="keywords">
                    <script id="keywordstpl" type="text/x-handlebars-template">
                        {{#KeyWords}}
                        {{#equal IsImportant true}}
                        <a href="{{Link}}" class="hot" target="_blank">{{Text}}</a>
                        {{else}}
                        <a href="{{Link}}" target="_blank">{{Text}}</a>
                        {{/equal}}
                        {{/KeyWords}}
                    </script>
                </div>
            </div>
            
        </div>
    </div>



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
        </div>
    </div>
    <!------- 轮播广告 ------->
    <div class="banner-slider">
        <ul class="b-slider">
            <li style="background:#efefef;" _begintime="2017/10/27 11:19:08" _endtime="2017/11/5 23:59:59" _title="“猕”足珍贵">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288714323764059.jpg)"></div>
                </a>
            </li>
            <li style="background:#efefef;" _begintime="2017/10/30 0:00:00" _endtime="2017/11/5 23:59:49">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288714354729819.jpg)"></div>
                </a>
            </li>
            <li style="background:#efefef;" _begintime="2017/10/30 0:00:00" _endtime="2017/11/6 0:00:00" _title="快手晚餐">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288714335691611.jpg)"></div>
                </a>
            </li>
            <li style="background:#efefef;" _begintime="2017/10/30 0:00:00" _endtime="2017/11/6 0:00:00" _title="零食">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288714244170585.jpg)"></div>
                </a>
            </li>
            <li style="background:#efefef;" _begintime="2017/5/5 10:59:41" _endtime="2018/5/5 10:59:43" _title="注册礼">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288707394970277.jpg)"></div>
                </a>
            </li>
            <li style="background:#efefef;" _begintime="2017/5/17 9:57:13" _endtime="2018/5/17 9:57:15" _title="三同">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288714283754330_1000x500.jpg)"></div>
                </a>
            </li>
            <li style="background:#efefef;" _begintime="2017/2/8 13:48:52" _endtime="2018/3/8 13:48:55">
                <a href="" target="_blank">
                    <div class="slider-wrap">
                            <span class="banner-text">
                                <img height="500" />
                            </span>
                    </div>
                    <div class="banner-main" style="background:url(images/9288700930171464.jpg)"></div>
                </a>
            </li>
        </ul>
        <div class="b-btn">
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)"></a>
        </div>
        <div class="b-dot">
            <ul></ul>
        </div>
    </div>
    <!------- 活动、广告位 ------->

    <div class="wrap ad-item">
        <ul>
            <li>
                <a href="newarrival/list" target="_blank">
                    <img src="images/9288692687216739.jpg" width="290">
                    <p><b>新品专区</b>探访源头产地 臻选当令时鲜</p>
                </a>
            </li>
            <li>
                <a href="exquisiteLifeStyle/list" target="_blank">
                    <img src="images/9288692888445038.jpg" width="290">
                    <p><b>优质生活</b>美食有态度，生活更有味</p>
                </a>
            </li>
            <li>
                <a href="" target="_blank">
                    <img src="images/9288692687347811.jpg" width="290">
                    <p><b>银行专区 </b>银行卡专享 超值购实惠</p>
                </a>
            </li>
            <li>
                <a href="menu/list1/" target="_blank">
                    <img src="images/9288709403714262.jpg" width="290">
                    <p><b>菜谱专栏</b>大厨私房菜 餐桌新食尚</p>
                </a>
            </li>
        </ul>
    </div>

    <!------- 商品楼层 ------->
    <div class="floor wrap 01_channelhome clearfix loadfloor loaded" id="t01_channelhome" data-url="/Home/Floor?floorId=01_channelhome">

        <div class="floor-title ">
            <h2><a href="" target="_blank"><i>F1</i>进口水果</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">进口苹果</a>
                <a href="" target="_blank" class="">佳沛专区</a>
                <a href="" target="_blank" class="last">泰国鲜果</a>
        </span>
        </div>
        <div class="floor-con floor-layout2">
            <div class="floor-side"><a href="product/stypeList/1" target="_blank"><img src="images/9288701136937553.jpg" width="275" height="463"></a></div>
            <div class="floor-main">
                <ul>


                    <li><a href="product/findProduct/544" target="_blank"><img src="images/9288712486363944.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/545" target="_blank"><img src="images/9288711524164366.jpg" width="230" height="230"></a></li>
                    <li class="wide"><a href="product/stypeList/6" target="_blank"><img src="images/9288713209652021.jpg" width="461" height="230"></a></li>
                    <li class="wide"><a href="product/findProduct/73" target="_blank"><img src="images/9288712158257949.jpg" width="461" height="230"></a></li>
                    <li><a href="product/findProduct/50" target="_blank"><img src="images/9288712316560164.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/92" target="_blank"><img src="images/9288713209455413.jpg" width="230" height="230"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="floor wrap 02_channelhome clearfix loadfloor loaded" id="t02_channelhome" data-url="/Home/Floor?floorId=02_channelhome">

        <div class="floor-title ">
            <h2><a href="" target="_blank"><i>F2</i>国产水果</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">芒香四溢</a>
                <a href="" target="_blank" class="">南国风情</a>
                <a href="" target="_blank" class="last">精选苹果</a>
        </span>
        </div>
        <div class="floor-con floor-layout2">
            <div class="floor-side"><a href="product/stypeList/25" target="_blank"><img src="images/9288711993271064.jpg" width="275" height="463"></a></div>
            <div class="floor-main">
                <ul>


                    <li><a href="product/findProduct/83" target="_blank"><img src="images/9288712571953963.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/86" target="_blank"><img src="images/9288712038556441.jpg" width="230" height="230"></a></li>
                    <li class="wide"><a href="product/findProduct/17" target="_blank"><img src="images/9288700985745994.jpg" width="461" height="230"></a></li>
                    <li class="wide"><a href="product/findProduct/96" target="_blank"><img src="images//9288712038621977.jpg" width="461" height="230"></a></li>
                    <li><a href="product/findProduct/86" target="_blank"><img src="images//9288713746948937.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/85" target="_blank"><img src="images//9288712703845167.jpg" width="230" height="230"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="floor wrap 03_channelhome clearfix loadfloor loaded" id="t03_channelhome" data-url="/Home/Floor?floorId=03_channelhome">

        <div class="floor-title ">
            <h2><a href="product/btypeList/8" target="_blank"><i>F3</i>新鲜蔬菜</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">即食色拉</a>
                <a href="" class="">人气粗粮</a>
                <a href="" target="_blank" class="last">健康有机</a>
        </span>
        </div>
        <div class="floor-con floor-layout2">
            <div class="floor-side"><a href="product/findProduct/87" target="_blank"><img src="images/9288698866639225.jpg" width="275" height="463"></a></div>
            <div class="floor-main">
                <ul>


                    <li><a href="product/findProduct/84" target="_blank"><img src="images/9288707491766952.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/91" target="_blank"><img src="images/9288709365834453.jpg" width="230" height="230"></a></li>
                    <li class="wide"><a href="product/stypeList/49" target="_blank"><img src="images/9288698271998307.jpg" width="461" height="230"></a></li>
                    <li class="wide"><a href="product/findProduct/94" target="_blank"><img src="images/9288697955328345.jpg" width="461" height="230"></a></li>
                    <li><a href="product/findProduct/78" target="_blank"><img src="images/9288713468289852.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/97" target="_blank"><img src="images/9288713468388156.jpg" width="230" height="230"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="floor wrap 04_channelhome clearfix loadfloor loaded" id="t04_channelhome" data-url="/Home/Floor?floorId=04_channelhome">

        <div class="floor-title ">
            <h2><a href="product/stypeList/57" target="_blank"><i>F4</i>海鲜水产</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">刺身专区</a>
                <a href="" target="_blank" class="">东海水产</a>
                <a href="" target="_blank" class="last">海产干货</a>
        </span>
        </div>
        <div class="floor-con floor-layout2">
            <div class="floor-side"><a href="product/stypeList/57" target="_blank"><img src="images/9288711929504534.jpg" width="275" height="463"></a></div>
            <div class="floor-main">
                <ul>


                    <li><a href="product/findProduct/103" target="_blank"><img src="images/9288711286039305.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/109" target="_blank"><img src="images/9288699026514302.jpg" width="230" height="230"></a></li>
                    <li class="wide"><a href="product/findProduct/11" target="_blank"><img src="images/9288708394394299.jpg" width="461" height="230"></a></li>
                    <li class="wide"><a href="product/findProduct/14" target="_blank"><img src="images/9288712681530158.jpg" width="461" height="230"></a></li>
                    <li><a href="product/findProduct/15" target="_blank"><img src="images/9288699281514888.jpg" width="230" height="230"></a></li>
                    <li><a href="product/findProduct/18" target="_blank"><img src="images/9288711929537302.jpg" width="230" height="230"></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="floor wrap 05_channelhome clearfix loadfloor loaded" id="t05_channelhome" data-url="/Home/Floor?floorId=05_channelhome">

        <div class="floor-title">
            <h2><a href="product/btypeList/3" target="_blank"><i>F5</i>精选肉类</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">欧洲天然猪</a>
                <a href="" target="_blank" class="">澳洲牛肉</a>
                <a href="" target="_blank" class="last">肉类制品</a>
        </span>
        </div>
        <div class="floor-con floor-layout3">
            <div class="floor-side"><a href="product/findProduct/3" target="_blank"> <img src="images/9288712415519526.jpg" width="275" height="463"></a></div>

            <div class="floor-main">
                <div class="col1"><a href="product/findProduct/7" target="_blank"><img src="images/9288707378258596.jpg" width="234" height="383"></a></div>
                <div class="col2">
                    <ul>
                        <li class="narrow"><a href="product/findProduct/10" target="_blank"><img src="images/9288712415650598.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/12" target="_blank"><img src="images/9288700023808549.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/16" target="_blank"><img src="images/9288712415585062.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/17" target="_blank"><img src="images/9288699249566087.jpg" width="220" height="191"></a></li>
                    </ul>
                </div>
                <div class="col3"><a href="" target="_blank"><img src="images/9288707279823522.jpg" width="246" height="461"></a></div>
                <div class="logo-list clearfix">
                    <a href="" target="_blank"><img src="images/9288693612060820.jpg" height="52"></a>
                    <a href="" target="_blank"><img src="images/9288685776248637.jpg" height="52"></a>
                    <a href="" target="_blank"><img src="images/9288693154226301.jpg" height="52"></a>
                    <a href="" target="_blank"><img src="images/9570169907257553.png" height="52"></a>
                    <a href="" target="_blank"><img src="images/9570173033816412.png" height="52"></a>
                </div>
            </div>
        </div></div>
    <div class="floor wrap 06_channelhome clearfix loadfloor loaded" id="t06_channelhome" data-url="/Home/Floor?floorId=06_channelhome">

        <div class="floor-title">
            <h2><a href="product/btypeList/4" target="_blank"><i>F6</i>禽类蛋品</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">原味蒸品</a>
                <a href="" target="_blank" class="">原汁煲汤</a>
                <a href="" target="_blank" class="last">禽类分割品</a>
        </span>
        </div>
        <div class="floor-con floor-layout3">
            <div class="floor-side"><a href="product/findProduct/27" target="_blank"> <img src="images/9288706104468097.jpg" width="275" height="463"></a></div>

            <div class="floor-main">
                <div class="col1"><a href="product/findProduct/28" target="_blank"><img src="images/9288712344314660.jpg" width="234" height="383"></a></div>
                <div class="col2">
                    <ul>
                        <li class="narrow"><a href="product/findProduct/29" target="_blank"><img src="images/9288707404604069.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/30" target="_blank"><img src="images/9288712344281892.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/31" target="_blank"><img src="images/9288712336188196.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/32" target="_blank"><img src="images/9288712344249124.jpg" width="220" height="191"></a></li>
                    </ul>
                </div>
                <div class="col3"><a href="product/findProduct/33" target="_blank"><img src="images/9288712415748902.jpg" width="246" height="461"></a></div>
                <div class="logo-list clearfix">
                    <a href="product/findProduct/34" target="_blank"><img src="images/9288685535567675.jpg" height="52"></a>
                    <a href="product/findProduct/32" target="_blank"><img src="images/9288685535436603.jpg" height="52"></a>
                    <a href="product/findProduct/31" target="_blank"><img src="images/9288689588215654.jpg" height="52"></a>
                    <a href="product/findProduct/30" target="_blank"><img src="images/9288689776533360.jpg" height="52"></a>
                </div>
            </div>
        </div></div>
    <div class="floor wrap 07_channelhome clearfix loadfloor loaded" id="t07_channelhome" data-url="/Home/Floor?floorId=07_channelhome">

        <div class="floor-title">
            <h2><a href="product/btypeList/10" target="_blank"><i>F7</i>粮油杂货</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class=""> 休闲零食</a>
                <a href="" target="_blank" class=""> 健康杂粮</a>
                <a href="" target="_blank" class="last"> 进口食用油</a>
        </span>
        </div>
        <div class="floor-con floor-layout3">
            <div class="floor-side"><a href="product/findProduct/527" target="_blank"> <img src="images/9288705349755505.jpg" width="275" height="463"></a></div>

            <div class="floor-main">
                <div class="col1"><a href="product/findProduct/528" target="_blank"><img src="images/9288707710132908.jpg" width="234" height="383"></a></div>

                <div class="col2">
                    <ul>
                        <li class="wide"><a href="product/findProduct/529" target="_blank"><img src="images/9288707997082289.jpg" width="441" height="191"></a></li>
                        <li class="wide"><a href="product/findProduct/530" target="_blank"><img src="images/9288707875676847.jpg" width="441" height="191"></a></li>
                    </ul>
                </div>
                <div class="col3"><a href="product/findProduct/531" target="_blank"><img src="images/9288712332518180.jpg" width="246" height="461"></a></div>

                <div class="logo-list clearfix">
                    <a href="product/findProduct/532" target="_blank"><img src="images/9570169801515213.png" height="52"></a>
                    <a href="product/findProduct/533" target="_blank"><img src="images/9288694301040818.jpg" height="52"></a>
                    <a href="product/findProduct/534" target="_blank"><img src="images/9288691149414289.jpg" height="52"></a>
                    <a href="product/findProduct/535" target="_blank"><img src="images/9288690712092539.jpg" height="52"></a>
                    <a href="product/findProduct/536" target="_blank"><img src="images/9288691149479825.jpg" height="52"></a>
                    <a href="product/findProduct/537" target="_blank"><img src="images/9288692500406358.jpg" height="52"></a>
                </div>
            </div>
        </div></div>
    <div class="floor wrap 08_channelhome clearfix loadfloor loaded" id="t08_channelhome" data-url="/Home/Floor?floorId=08_channelhome">

        <div class="floor-title">
            <h2><a href="product/btypeList/7" target="_blank"><i>F8</i>乳品糕点</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">味全乳品</a>
                <a href="" target="_blank" class="">精选蛋糕</a>
                <a href="" target="_blank" class="last">try me 小蛋糕</a>
        </span>
        </div>
        <div class="floor-con floor-layout3">
            <div class="floor-side"><a href="product/findProduct/48" target="_blank"> <img src="images/9288712324588324.jpg" width="275" height="463"></a></div>

            <div class="floor-main">
                <div class="col1"><a href="product/findProduct/52" target="_blank"><img src="images/9288699442438542.jpg" width="234" height="383"></a></div>
                <div class="col2">
                    <ul>
                        <li class="narrow"><a href="product/findProduct/56" target="_blank"><img src="images/9288713812419404.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/58" target="_blank"><img src="images/9288708075889331.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/61" target="_blank"><img src="images/9288705202528878.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="=product/findProduct/64" target="_blank"><img src="images/9288699556438419.jpg" width="220" height="191"></a></li>
                    </ul>
                </div>
                <div class="col3"><a href="product/findProduct/67" target="_blank"><img src="images/9288708172030646.jpg" width="246" height="461"></a></div>
                <div class="logo-list clearfix">
                    <a href="product/findProduct/58" target="_blank"><img src="images/9288689523662692.jpg" height="52"></a>
                    <a href="product/findProduct/61" target="_blank"><img src="images/9288700927287880.jpg" height="52"></a>
                    <a href="product/findProduct/64" target="_blank"><img src="images/9288692501618774.jpg" height="52"></a>
                    <a href="product/findProduct/67" target="_blank"><img src="images/9288692473241683.jpg" height="52"></a>
                </div>
            </div>
        </div></div>
    <div class="floor wrap 09_channelhome clearfix loadfloor loaded" id="t09_channelhome" data-url="/Home/Floor?floorId=09_channelhome">

        <div class="floor-title">
            <h2><a href="product/btypeList/11" target="_blank"><i>F9</i>饮料酒水</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class=""> 饮用水</a>
                <a href="" target="_blank" class=""> 果汁</a>
                <a href="" target="_blank" class="last"> 白葡萄酒</a>
        </span>
        </div>
        <div class="floor-con floor-layout3">
            <div class="floor-side"><a href="product/findProduct/66" target="_blank"> <img src="images/9288706365563531.jpg" width="275" height="463"></a></div>

            <div class="floor-main">
                <div class="col1"><a href="product/findProduct/68" target="_blank"><img src="images/9288709184463568.jpg" width="234" height="383"></a></div>

                <div class="col2">
                    <ul>
                        <li class="wide"><a href="product/findProduct/70" target="_blank"><img src="images/9288704727917154.jpg" width="441" height="191"></a></li>
                        <li class="wide"><a href="product/findProduct/72" target="_blank"><img src="images/9288705358013041.jpg" width="441" height="191"></a></li>
                    </ul>
                </div>
                <div class="col3"><a href="product/findProduct/75" target="_blank"><img src="images/9288699318608265.jpg" width="246" height="461"></a></div>

                <div class="logo-list clearfix">
                    <a href="product/findProduct/77" target="_blank"><img src="images/9288701232128597.jpg" height="52"></a>
                    <a href="product/findProduct/79" target="_blank"><img src="images/9288685536812859.jpg" height="52"></a>
                    <a href="product/findProduct/81" target="_blank"><img src="images/9288685536943931.jpg" height="52"></a>
                    <a href="product/findProduct/77" target="_blank"><img src="images/9288695009779925.jpg" height="52"></a>
                </div>
            </div>
        </div></div>
    <div class="floor wrap 10_channelhome clearfix loadfloor loaded" id="t10_channelhome" data-url="/Home/Floor?floorId=10_channelhome">

        <div class="floor-title">
            <h2><a href="product/btypeList/9" target="_blank"><i>F10</i>方便速食</a></h2>
            <span class="keyword">
                <a href="" target="_blank" class="">避风塘</a>
                <a href="" target="_blank" class="">湾仔码头</a>
                <a href="" target="_blank" class="last">龙凤</a>
        </span>
        </div>
        <div class="floor-con floor-layout3">
            <div class="floor-side"><a href="product/findProduct/515" target="_blank"> <img src="images/9288706367070859.jpg" width="275" height="463"></a></div>

            <div class="floor-main">
                <div class="col1"><a href="product/findProduct/503" target="_blank"><img src="images/9288712561042219.jpg" width="234" height="383"></a></div>
                <div class="col2">
                    <ul>
                        <li class="narrow"><a href="product/findProduct/504" target="_blank"><img src="images/9288699211653510.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/516" target="_blank"><img src="images/9288697425273148.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/517" target="_blank"><img src="images/9288704702685793.jpg" width="220" height="191"></a></li>
                        <li class="narrow"><a href="product/findProduct/518" target="_blank"><img src="images/9288698679501170.jpg" width="220" height="191"></a></li>
                    </ul>
                </div>
                <div class="col3"><a href="product/findProduct/519" target="_blank"><img src="images/9288708540179137.jpg" width="246" height="461"></a></div>
                <div class="logo-list clearfix">
                    <a href="product/findProduct/520" target="_blank"><img src="images/9288686653382472.jpg" height="52"></a>
                    <a href="product/findProduct/521" target="_blank"><img src="images/9570164236722007.png" height="52"></a>
                    <a href="product/findProduct/522" target="_blank"><img src="images/9288691261546390.jpg" height="52"></a>
                    <a href="product/findProduct/523" target="_blank"><img src="images/9288685537206075.jpg" height="52"></a>
                </div>
            </div>
        </div></div>
    <!--腰线 开始-->
    <!------- 楼层引导 ------->

    <div class="floor-guide" style="display: none;">
        <div class="mui-nav">
            <a href="#t01_channelhome">
                <b class="icon_01_channelhome">&nbsp;</b>
                <em>进口水果</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t02_channelhome">
                <b class="icon_02_channelhome">&nbsp;</b>
                <em>国产水果</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t03_channelhome">
                <b class="icon_03_channelhome">&nbsp;</b>
                <em>新鲜蔬菜</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t04_channelhome">
                <b class="icon_04_channelhome">&nbsp;</b>
                <em>海鲜水产</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t05_channelhome">
                <b class="icon_05_channelhome">&nbsp;</b>
                <em>精选肉类</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t06_channelhome">
                <b class="icon_06_channelhome">&nbsp;</b>
                <em>禽类蛋品</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t07_channelhome">
                <b class="icon_07_channelhome">&nbsp;</b>
                <em>粮油杂货</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t08_channelhome">
                <b class="icon_08_channelhome">&nbsp;</b>
                <em>乳品糕点</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t09_channelhome">
                <b class="icon_09_channelhome">&nbsp;</b>
                <em>饮料酒水</em>
                <i>&nbsp;</i>
            </a>
            <a href="#t10_channelhome">
                <b class="icon_10_channelhome">&nbsp;</b>
                <em>方便速食</em>
                <i>&nbsp;</i>
            </a>
        </div>
    </div>

    <!--腰线 结束-->
    <!--摇一摇-->

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
                    <p><a href="">会员等级<i class="ml5"><img src="./images/icon-new.png"></i></a></p>

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
                    <p><a href="">极速退款</a><p>
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
                    <p><a href="">友情链接</a></p>

                </dd>
            </dl>
            <div class="service"><span>客服热线 400-000-7788 企业采购或团购，请转2号键咨询</span><span>周一至周日 9:00-21:00</span></div>
            <div class="copyright">
                <p>所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
                <p> <a href="" target="_blank" rel="nofollow">沪ICP备09008015号 </a>  Copyright © 2005-2017 <a href="">上海易果电子商务有限公司</a>版权所有</p>
                <p class="authentication">
                    <a href="legal" target="_blank" rel="nofollow"><img src="http://images/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="" target="_blank" rel="nofollow"><img src="./images/2517491005058doc.png" height="47"></a>
                    <a href="" target="_blank"><img src="http://images/footer_copy.gif" width="47px" height="47px"></a>
                    <a target="_blank" href="" style="display: inline-block; text-decoration: none; height: 20px; line-height: 20px;"><img src="http://images/ghs.png" style="float: left;" /><span style="float: left; height: 20px; line-height: 20px; margin: 0px 0px 0px 5px; color: #939393;">沪公网安备 31010502000002号</span></a>
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
        <a href="javascript:void(0);" class="s-btn service"></a>
        <a href="#body" class="s-btn goTop"></a>
    </div>
</div>

<script src="http://static01.yiguo.com/control/jquery.cookie.js?v20150427"></script>
<script src="http://static01.yiguo.com/utaste/js/handlebars-v3.0.1.js"></script>
<script src="http://static01.yiguo.com/utaste/js/utaste.js"></script>
<script src="http://static01.yiguo.com/www/js/base.js"></script>
<script src="http://static01.yiguo.com/www/js/jquery.superslide.js"></script>
<script src="http://static01.yiguo.com/www/js/sidebar.js"></script>
<script src="http://static01.yiguo.com/www/js/floor-guide.js"></script>
<script src="http://static01.yiguo.com/common/global-v2.js"></script>
<script src="http://static01.yiguo.com/www/js/search.js?v20150427"></script>
<script src="http://static01.yiguo.com/www/js/city.js?v20160816"></script>
<script src="http://static01.yiguo.com/www/js/app.js?v20160816"></script>
<script src="http://static01.yiguo.com/common/common.js?v20150427"></script>
<script src="http://static01.yiguo.com/common/util.js?v20150427"></script>
<!--[if lt IE 9]>
<script src="https://g.alicdn.com/aliww/ww/json/json.js" charset="utf-8"></script>
<![endif]-->
<!-- 自动适配移动端与pc端 -->
<script src="https://g.alicdn.com/aliww/??h5.imsdk/2.1.5/scripts/yw/wsdk.js,h5.openim.kit/0.4.0/scripts/kit.js?pc=1" charset="utf-8"></script>
<script src="http://yunwang.yiguo.com/Scripts/chat.js"></script>
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
        ya.src = "http://tracker.yiguo.com/Scripts/yiguoStats.min.js";
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ya, s);
    })();

</script>



<script>

    $(function () {
        app.floorscroll(".loadfloor", 0);
        app.changeCategory();
        app.fixedheader();
        $(".prev,.next").hover(function () {
            $(this).fadeTo("show", 0.7);
        }, function () {
            $(this).fadeTo("show", 0.3);
        })
        //首页焦点图
        $(".banner-slider").hover(function () {
            $(this).find(".prev,.next").fadeTo("show", 0.3);
        }, function () {
            $(this).find(".prev,.next").hide();
        })
        $(".banner-slider").slide({
            titCell: ".b-dot ul", mainCell: ".b-slider", effect: "fold", autoPlay: true, interTime: 4500, autoPage: true,
            endFun: function (i, c) {
                $(".b-slider li").removeClass("current").eq(i).addClass("current");
            }
        });


        $(".banner-slider li").click(function () {
            var vdsjson = {
                "event_target": this
                , "page_name": "首页"
                , "page_number": 1
                , "page_widget_name": "首页顶部滚动广告栏"
                , "page_widget_position": $(this).index() + 1
                , "city": "1"
                , "promo_type": $(this).attr("_title")
                , "promo_date_begin": $(this).attr("_beginTime")
                , "promo_date_end": $(this).attr("_endtime")
            };
            _vds.track("ad_click", vdsjson);
        })

        //$(function () {
        //    if ($.cookie('firstvisit') == "true") {
        //        $(".page-tips").remove();
        //    } else {
        //        $(".page-tips").show();
        //        $(".page-tips a").click(function () {
        //            $(this).parent().remove();
        //            $.cookie("firstvisit", "true", { expires: 365, path: '', domian: 'yiguo.com' });
        //        });
        //    }
        //    if ($.cookie('activity') != 'true') {
        //        if ($("#tenyears_ad")) {
        //            $("#tenyears_ad").show();
        //            $("#tenyears_ad .close").click(function () {
        //                $.cookie("activity", "true", { path: '' });
        //            });
        //        }
        ////    }
        //})

    })
</script>
<script type="text/javascript">
    window.__zp_tag_params = {
        pagetype: "shouye",
    };
</script>


<script src="js/stats.js?v20170410"></script>


</body>
</html>
<script>
var b=document.getElementById("span1");
    function div1() {
alert(b);
    }
</script>
