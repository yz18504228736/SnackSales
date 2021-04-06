<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>进口水果_优质新鲜进口水果在线购买_新鲜水果网上订购_易果生鲜Yiguo官网</title>
    <meta name="Keywords" content="水果,进口水果,国产水果,蔬菜,肉类,海鲜,禽蛋,粮油,甜点,葡萄酒,易果网">
    <meta name="Description" content="易果生鲜Yiguo网是专业的进口生鲜水果食品网络购物平台，在这里您可以购买到精心挑选的优质健康易果进口水果，最新价格、优惠促销、实物图片等信息尽在易果网yiguo.com。">
    <meta property="qc:admins" content="15753240576117576375" />
    <link rel="shortcut icon" href="http://static01.yiguo.com/common/images/yiguo.ico" />
    <link rel="dns-prefetch" href="/img01.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img02.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img03.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img04.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img05.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img06.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img07.yiguoimg.com" />
    <link rel="dns-prefetch" href="/img08.yiguoimg.com" />
    <link href="css/public.css?v20160816" rel="stylesheet" type="text/css">
    <link href="css/customer.css" rel="stylesheet" type="text/css">
    <link href="css/pageguide.css" rel="stylesheet" type="text/css">


    <link href="css/goods_list.css?v20150427" rel="stylesheet" type="text/css">
    <link href="css/product_detail.css?v20150427" rel="stylesheet" type="text/css">
    <link href="css/yiguo.css?v20150427" rel="stylesheet" type="text/css">

    <!--IE6png兼容-->
    <!--[if IE 6]>
    <script type="text/javascript" src="js/DD_belatedPNG.js" ></script>
    <script type="text/javascript" src="js/ie6_loading.js"></script>
    <![endif]-->

    <script src="js/jquery.js"></script>
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
    <script type="text/javascript" src="http://img02.yiguo.com/e/web/130101/cdn/login/scripts/ygm.dplus-0.5.js"></script>

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
                        <div class="tit" id="div1"><a rel="nofollow" href=""><i></i>
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
        <!--广告位-->
        <div class="page_ad clearfix">
            <a class="big" href="" target="_blank"><img src="shows/${btypeImgLists.get(0).btypeName}" width="1200" height="300"></a>
            <a class="medium mr" href="" target="_blank"><img src="shows/${btypeImgLists.get(1).btypeName}" width="405" height="180"></a>
            <a class="medium mr" href="" target="_blank"><img src="shows/${btypeImgLists.get(2).btypeName}" width="405" height="180"></a>
            <a class="small mr" href="" target="_blank"><img src="shows/${btypeImgLists.get(3).btypeName}" width="180" height="180"></a>
            <a class="small" href="" target="_blank"><img src="shows/${btypeImgLists.get(4).btypeName}" width="180" height="180"></a>
        </div>
        <!--筛选-->
        <div class="select">

            <div class="all clearfix">
                <div class="tit">►所有分类</div>
                <ul>
                    <li class=" "><a href="product/stypeList/1">奇异果</a></li>
                    <li class=" "><a href="product/stypeList/2">李</a></li>
                    <li class=" "><a href="product/stypeList/3">莓</a></li>
                    <li class=" "><a href="product/stypeList/4">牛油果</a></li>
                    <li class=" "><a href="product/stypeList/5">提子</a></li>
                    <li class=" "><a href="product/stypeList/6">苹果</a></li>
                    <li class=" "><a href="product/stypeList/7">柑桔橙柚</a></li>
                    <li class=" "><a href="product/stypeList/8">香蕉</a></li>
                    <li class=" "><a href="product/stypeList/9">火龙果</a></li>
                    <li class=" "><a href="product/stypeList/10">椰子</a></li>
                    <li class=" "><a href="product/stypeList/11">凤梨</a></li>
                    <li class=" "><a href="product/stypeList/12">热带水果</a></li>
                    <li class=" "><a href="product/stypeList/13">时令水果</a></li>
                    <li class=" last"><a href="product/stypeList/14">原箱水果</a></li>
                </ul>
            </div>





        </div>
        <!--排序-->
        <div id="formCx" class="filter clearfix">
            <div class="filter_sort">
                <a class="on" href="javascript:;" _sort="0">默认排序</a>
                <a class="" href="javascript:;" _sort="1">销量<i class="dowm"></i></a>
                <a class="price" href="javascript:;" _sort="3">价格<i class="sort_down"></i></a>
                <a class="" href="javascript:;" _sort="5">评论<i class="dowm"></i></a>
            </div>
        </div>
        <div class="filter_space"></div>
        <!--商品列表-->
        <div class="goods_list clearfix" _category="01_channelhome" _page="2" _end="false" _maxpage="4">
            <ul>
                <c:forEach items="${stypeListVoList}" var="stype">
                    <li class="product_item j_product" _type="0" _productid="1271965">
                        <div class="p_img clearfix">

                            <p class="tag"><img src="images/ICON06.png" width="46" height="46"></p>
                            <a href="product/findProduct/${stype.proId}" target="_blank">
                                <img src="shows/${stype.proImg.proDisplayImg}" width="290" height="290" class="j_product_img">

                            </a>
                        </div>
                        <div class="p_info clearfix">
                            <div class="p_name"><a href="product/findProduct/${stype.proId}" target="_blank">${stype.proName}</a></div>
                            <div class="p_price">
                                <span class="price">
                                    <strong>¥${stype.proPrice}</strong>
                                </span>
                            </div>
                        </div>
                        <div class="p-buy">
                            <span>${btype.proDesc}</span>

                            <a class="btn-buy" href="javascript:;" onclick="G.app.cart.module.addToCart(this,'1271965',1,app.referCart);">加入购物车</a>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

    <input type="hidden" value="0" name="productType" id="productType" />


    <div class="modal cake" style="display:none;" id="cakeparts">
        <div class="modal-content">
            <div class="modal-header"><i></i>请选择蛋糕配件</div>
            <div class="modal-body">
                <div class="cakemodal-tab">
                    <ul class="cakemodal-ul">
                        <li class="cutlery"><a href="javascript:void(0);"><i></i>餐具</a></li>
                    </ul>
                </div>
                <div class="cakemodal-content">
                    <div class="cakemodal-item" style="display: none;">
                        <p>1磅及1.5磅蛋糕送4份餐具1把竹刀； 2.5磅蛋糕送8份餐具1把竹刀； 3.5磅蛋糕送12份餐具1把竹刀。 如需额外的配件，请在下面选择。</p>
                        <div class="cakemodal-list clearfix">
                            <ul>
                                <li class="product">
                                    <div class="img"><a href="product/317031.html" target="_blank"><img src="http://img08.yiguoimg.com/e/web/151010/145708/151010145708922_317031_500.jpg" width="70" height="70"></a></div>
                                    <div class="name"><a href="product/317031.html" target="_blank">餐具</a></div>
                                    <div class="price">¥2.00</div>
                                    <div class="number"><a class="number-reduce">-</a><input class="number-input" type="text" readonly="readonly" value="0" _type="G03" _data="578aca52-1084-47a7-9fd6-fb3c74dd4398"><a class="number-add">+</a></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cakemodal-total clearfix">
                    <p id="tips"></p>
                    <a class="btn-confirm" href="#">确&nbsp;定</a>
                    <a class="btn-cancel" href="#">取&nbsp;消</a>
                </div>
            </div>
        </div>
        <div class="modal-bg">&nbsp;</div>
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
                    <p><a href="help/registersteps.html">账户注册</a></p>
                    <p><a href="help/gouwuliucheng.html">购物流程</a></p>
                    <p><a href="help/ordering.html">订购方式</a></p>
                    <p><a href="help/ubremark.html">悠币说明</a></p>
                    <p><a href="activity/sale/2999">会员等级<i class="ml5"><img src="http://img06.yiguoimg.com/e/web/170315/00941/154425/icon-new.png"></i></a></p>

                </dd>
            </dl>
            <dl class="col2">
                <dt>付款方式</dt>
                <dd>
                    <p><a href="help/payment.html">支付方式</a>/<a href="help/invoiceremark.html">发票说明</a></p>
                    <p><a href="help/chongzhiliucheng.html">充值说明</a>/<a href="help/usechuzhika.html">储值卡说明</a></p>
                    <p><a href="help/usegiftcard.html">优惠代码/礼品卡说明</a></p>
                    <p><a href="help/cardbuynotes.html">卡券购买章程</a></p>
                </dd>
            </dl>
            <dl class="col3">
                <dt>配送方式</dt>
                <dd>
                    <p><a href="help/sendyuefei.html">配送运费</a></p>
                    <p><a href="help/sendquyu.html">配送范围</a></p>
                    <p><a href="help/sendtime.html">配送时间</a></p>
                </dd>
            </dl>
            <dl class="col4">
                <dt>售后服务</dt>
                <dd>
                    <p><a href="help/tuihuanhuoshuoming.html">退换货政策</a></p>
                    <p><a href="help/huanhuolc.html">退换货流程</a></p>
                    <p><a href="help/qa.html">常见问题</a></p>
                    <p><a href="help/quicknessrefund.html">极速退款</a><p>
                    <p><a href="http://home.yiguo.com/Trade/Advice">投诉与建议</a></p>
                </dd>
            </dl>
            <dl class="col5">
                <dt>关于我们</dt>
                <dd>
                    <p><a href="help/introduction.html">公司介绍</a></p>
                    <p><a href="help/contact.html">联系我们</a></p>
                    <p><a href="help/procooperation.html">业务合作</a></p>
                    <p><a href="help/chengxinjubao.html">诚信举报</a></p>
                    <p><a href="http://yiguo.zhiye.com/home" target="_blank" rel="nofollow">人才招聘</a></p>
                    <p><a href="help/friendurl.html">友情链接</a></p>

                </dd>
            </dl>
            <div class="service"><span>客服热线 400-000-7788 企业采购或团购，请转2号键咨询</span><span>周一至周日 9:00-21:00</span></div>
            <div class="copyright">
                <p>所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
                <p> <a href="http://www.miibeian.gov.cn/state/outPortal/loginPortal.action" target="_blank" rel="nofollow">沪ICP备09008015号 </a>  Copyright © 2005-2017 <a href="">上海易果电子商务有限公司</a>版权所有</p>
                <p class="authentication">
                    <a href="legal" target="_blank" rel="nofollow"><img src="http://img09.yiguoimg.com/e/albums/2017/170309/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="http://shwg.dianping.com/index.html" target="_blank" rel="nofollow"><img src="http://img05.yiguoimg.com/e/web/160420/01632/141253/2517491005058doc.png" height="47"></a>
                    <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110512114405424" target="_blank"><img src="http://img03.yiguo.com/images/footer_copy.gif" width="47px" height="47px"></a>
                    <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502000002" style="display: inline-block; text-decoration: none; height: 20px; line-height: 20px;"><img src="http://www.beian.gov.cn/file/ghs.png" style="float: left;" /><span style="float: left; height: 20px; line-height: 20px; margin: 0px 0px 0px 5px; color: #939393;">沪公网安备 31010502000002号</span></a>
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
<script src="js/base.js"></script>
<script src="js/jquery.superslide.js"></script>
<script src="js/sidebar.js"></script>
<script src="js/floor-guide.js"></script>
<script src="http://static01.yiguo.com/common/global-v2.js"></script>
<script src="js/search.js?v20150427"></script>
<script src="js/city.js?v20160816"></script>
<script src="js/app.js?v20160816"></script>
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


<script src="js/goods_list.js?v20150427"></script>
<script>
    app.waterfull(".goods_list", 0);
    app.productfilter();
    app.fixedheader();

    yw_data = { pagetype: "2", data: "01_channelhome$进口水果" };

</script>
<script type="text/javascript">
    var ids = "1271965,1271966,1103008,1312603,1312385,1291452,1310159,1295252,1318296,1294029".split(',');
    window.__zp_tag_params = {
        pagetype: "category",
        categoryID: "01_channelhome",
        status: (ids.length > 0 && ids[0] != "") ? 1 : 0,
        productID_list: ids
    };

    $(function () {



    })

</script>


<script src="http://static01.yiguo.com/common/stats.js?v20170410"></script>


</body>
</html>
