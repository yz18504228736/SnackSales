<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script charset="utf-8" type="text/javascript" src="address_files/pckit.js">

    </script>

    <title>零食在售_全球精选</title>

    <meta name="Keywords" content="水果，进口水果，国产水果，零食在售网">
    <meta name="Description" content="零食在售//鲜Yiguo网是专业的进口生鲜水果食品网络购物平台，为您精选全球3001多种生鲜果蔬品质食材，在体验网上购物新模式的同时享尽各国新鲜美味，零食在售网是您悠悦生活的品质之选。">
    <meta property="qc:admins" content="15753240576117576375">
    <link rel="shortcut icon" href="http://static01.yiguo.com/common/images/yiguo.ico">
    <link href="address_files/public.css" rel="stylesheet" type="text/css">
    <link href="address_files/yg.css" rel="stylesheet" type="text/css">
    <link href="address_files/search.css" rel="stylesheet" type="text/css">
    <script charset="utf-8" src="address_files/v.js"></script><script type="text/javascript" async="" src="address_files/dc.js"></script><script type="text/javascript" async="" src="address_files/yiguoStats.min.js"></script><script type="text/javascript" async="" charset="utf-8" src="address_files/core.php"></script><script type="text/javascript" async="" src="address_files/collect.js"></script><script type="text/javascript" async="" src="address_files/vds.js"></script><script type="text/javascript" async="" src="address_files/adw.js"></script><script src="address_files/tm.js" async=""></script><script type="text/javascript" charset="utf-8" async="" src="address_files/dplus.php"></script><script src="address_files/jquery-1.7.2-min.js"></script>
    <link href="address_files/returns.css" rel="stylesheet" type="text/css">

    <link href="address_files/themes.css" rel="stylesheet" type="text/css">
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
    <script src="address_files/topdsp.js"></script><script type="text/javascript" async="" src="http://configch2.veinteractive.com/tags/CBD65260/4995/49F7/B51A/5963EB93BD47/tag.js"></script>
</head>
<body id="body">
<!------- 弹出框 ------->
<div class="popout soldOut-poput">
    <div class="popout-wrap">
        <div class="popout-con">
            <div class="title"><i></i>提 示</div>
            <div class="con">
                <h1>您设置了该商品到货通知！</h1>
                <p>
                    我们会将到货通知信息及时发送到您的邮箱：<br> <a href="http://home.yiguo.com/Account/Consignee#"><u>Xushun@yiguo.com</u></a> <a href="http://home.yiguo.com/Account/Consignee#" target="_blank">修改邮箱</a>
                </p>
                <div class="btnbox"><a class="confirm" href="javascript:">确  认</a><a class="cancel" href="javascript:">取  消</a></div>
            </div>
        </div>
    </div>
    <div class="popout-bg">&nbsp;</div>
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
                        <div class="tit" id="div1"><a rel="nofollow" href="user/doLogin"><i></i>
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
                    <li><a href="exquisiteLifeStyle/list" target="_blank">优质生活</a></li>
                    <li><a href="menu/list1/" target="_blank">菜谱专栏</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrap">
        <!--面包屑-->
        <div class="crumbs"><a class="ml0" href="">首页</a>&gt;<a href="" class="j_ygnav">我的零食在售</a><span class="j_thridcrumbs hide">&gt;<a href="javascript:void(0)" class="on j_thirdnav">收货地址管理</a></span></div>
        <div class="content myyg">
            <div class="sub">
                <div class="menu j_menu">
                    <dl>
                        <dt>交易信息</dt>
                        <dd>
                            <ul>
                                <li><a href="orders/userorders/${currentUser.userId}">我的订单</a></li>
                                <li><a href="orders/bought/${currentUser.userId}">购买过的商品</a></li>
                                <li><a href="favorite/userfavorite/${currentUser.userId}">我的收藏</a></li>
                                <li><a href="comment/userComment/${currentUser.userId}">评论商品</a></li>
                            </ul>
                        </dd>
                        <dt>账号信息</dt>
                        <dd>
                            <ul>
                                <li>
                                    <a href="user/userinfo/${currentUser.userId}">个人资料</a>
                                    <img style="height: 19px; width: 20px; margin-left: 10px;" src="address_files/icon-gift.png">
                                </li>
                                <li class="on"><a href="address/list/${currentUser.userId}">收货地址管理</a></li>



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
                        <a href="http://home.yiguo.com/Account/Consignee#" target="_blank" style="display: none"><img src="address_files/ad.jpg" width="194" height="308"></a>
                    </div>
                </div>
            </div>


            <style>
                .error {
                    color: red;
                    margin-left: 3px;
                }
                .modal .controls .adrtag{ position:relative; display:inline-block; padding: 5px 15px; margin-right:10px; background-color: #fff; border: 1px solid #ddd; cursor:pointer;}
                .modal .controls .adrtag b{ display:none;}
                .modal .controls .adrtag.selected{background-color: #f2fcf7; border-color: #7bb798;}
                .modal .controls .adrtag.selected b{ display:block;}
                .modal b{display:block;position: absolute;right: 0;bottom: 0;width: 15px;height: 12px;overflow: hidden;background-position:-80px -180px}
            </style>

            <div class="main address">
                <div class="title">收货地址管理</div>
                <div class="addrs"><a href="javascript:" data-toggle="modal" class="btn-gn addConsignee">新增收货地址</a>您已创建<b class="consigneeCount">3</b>个收货地址，最多可创建<b>20</b>个</div>
                <div class="addressList">
                    <ul>
                        <c:forEach items="${addressList}" var="address">
                            <li>
                                <dl>
                                    <dt><div class="name">${address.receiverName}<span></span><div class="del-btn" data-id="a7a632c8-2fcb-4140-af08-1a47378c604e">×</div></div></dt>
                                    <dd><span>收货人：</span>${address.receiverName}</dd>
                                    <dd><span>所在地区：</span>上海 浦东新区 浦东新区</dd>
                                    <dd><span>地址：</span>${address.addressName}</dd>
                                    <dd><span>手机：</span>${address.phonenum}</dd>
                                </dl>
                                <div class="btns"><a class="edit editConsignee" href="/address/preUpdate/${address.addressId }" data-toggle="modal" data-id="a7a632c8-2fcb-4140-af08-1a47378c604e">编辑</a></div>
                                <div class="btns"><a class="edit editConsignee" href="/address/delete/${address.addressId }" data-toggle="modal" data-id="a7a632c8-2fcb-4140-af08-1a47378c604e">删除</a></div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <!--页码 开始-->
                <div class="paging j_active j_bind" id="j_pages"><div class="paging-num">&nbsp;<a href="javascript:void(0);" class="j_pageopt" data-index="previous">上一页</a>&nbsp;<a class="this j_pageopt" href="javascript:void(0);" data-index="0">1</a>&nbsp;<a href="javascript:void(0);" class="j_pageopt" data-index="nextpage">下一页</a></div><div class="paging-total">共 1页</div><div class="paging-form"><span>到第</span><input class="j_pageval" type="text" value="1"><span>页</span><button class="j_pagebtn">确定</button></div></div>
                <!--页码 结束-->

                <%--<script id="consigneeRow" type="text/x-handlebars-template">--%>
                    <%--{{#if data}}--%>
                    <%--{{#each data}}--%>
                    <%--<li>--%>
                        <%--<dl>--%>
                            <%--<dt><div class="name">{{ConsigneeName}}<span>{{#equal IsDefault 1}}<span>默认地址</span>{{/equal}}<div class="del-btn" data-id="{{ConsigneeId}}">×</div></dt>--%>
                            <%--<dd><span>收货人：</span>{{ConsigneeName}}</dd>--%>
                            <%--<dd><span>所在地区：</span>{{AreaName}}</dd>--%>
                            <%--<dd><span>地址：</span>{{ConsigneeAddress}}</dd>--%>
                            <%--<dd><span>手机：</span>{{ConsigneeMobile}}</dd>--%>
                        <%--</dl>--%>
                        <%--<div class="btns">{{#equal IsDefault 0}}<a href="javascript:" class="setDefaultConsignee" data-id="{{ConsigneeId}}">设为默认地址</a>{{/equal}}<a class="edit editConsignee" href="javascript:" data-toggle="modal" data-id="{{ConsigneeId}}">编辑</a></div>--%>
                    <%--</li>--%>
                    <%--{{/each}}--%>
                    <%--{{/if}}--%>
                <%--</script>--%>
            </div>

            <!--使用新地址-->
            <div class="modal fade" id="myModal1" data-backdrop="static" style="display:none">
                <div class="modal-header">
                    <a class="close" data-dismiss="modal">×</a>
                    <h3><i class="i-newaddr"></i>使用新地址</h3>
                </div>
                <div class="modal-body">
                    <form id="saveConsigneeForm" novalidate="novalidate">
                        <input type="hidden" name="ConsigneeId">
                        <div class="control-group">
                            <label class="control-label" for="textarea"><span>*</span>收货人姓名：</label>
                            <div class="controls"><input type="text" class="input-l" name="ConsigneeName"></div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea"><span>*</span>手机号码：</label>
                            <div class="controls"><input type="text" class="input-l" id="NewMobile" name="NewMobile">
                                <input type="text" class="input-l" id="ConsigneeMobile" name="ConsigneeMobile" hidden="">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea"><span>*</span>收货地址：</label>
                            <div class="controls">
                                <select name="ProviceId" id="SelectProviceId">
                                    <option value="">选择省份</option>
                                    <option value="312d0556-0671-4f2e-8bac-7b8873b5a03a">上海</option>
                                    <option value="98373b1b-201c-4753-b540-14bb1cd6564e">上海(郊区)</option>
                                    <option value="eabbe02f-59e0-46e6-90e7-cd8a89dbb98f">北京</option>
                                    <option value="15b6c4e6-69f2-4001-a631-62c0c36102b1">北京(郊区)</option>
                                    <option value="93570b8c-0a0a-4818-8317-75a0d14093a5">天津</option>
                                    <option value="de66faa1-cb91-4af7-a6c9-3269f9f9e169">浙江</option>
                                    <option value="75ff9dce-aba7-4dce-a40d-d70ed77a1d22">江苏</option>
                                    <option value="da114907-9426-421c-a710-9d319e6a67fd">河北</option>
                                    <option value="d0f11a9b-602c-498e-ab10-685f4c551d3d">广东</option>
                                    <option value="69f262ff-cf4f-4920-a10a-7880e27dd440">甘肃</option>
                                    <option value="ebe771a5-36fb-4116-a98f-7afb5290b334">贵州</option>
                                    <option value="8253d296-8c94-4935-87f6-8a61cd8a9cf3">河南</option>
                                    <option value="e615d764-bdd3-4758-913a-59ed8503a5de">广西</option>
                                    <option value="a6804a4e-e46c-4121-b964-fcf80db3bf74">湖北</option>
                                    <option value="1b1bd95f-7fd4-4f6e-9e3a-340b1f6c3cc5">海南</option>
                                    <option value="64c4d7d4-e511-425e-ad09-03defd808faf">湖南</option>
                                    <option value="1935e31f-5600-48cd-9550-054a0a7c44ce">黑龙江</option>
                                    <option value="55584cd4-e249-4cd8-9895-462e637e463e">江西</option>
                                    <option value="7b98f60b-bf6b-414a-a1a4-fec9ef121b5f">吉林</option>
                                    <option value="a3fd1ee3-6ac7-4161-9393-565fc875aa2b">福建</option>
                                    <option value="322e0992-f6ea-426d-9794-a5fac5e91adf">辽宁</option>
                                    <option value="76ba776c-a7df-44f8-8932-4a5a95eef734">宁夏</option>
                                    <option value="78e4e930-5c94-4cd8-b3b9-1cbc0963efa6">内蒙古</option>
                                    <option value="8ce3d107-f0d0-42c3-bbcd-a03463fbe1f3">青海</option>
                                    <option value="09806a8f-dee4-46f6-9682-af8fb426d0e7">四川</option>
                                    <option value="8dce2e33-92de-4e38-86b8-be3e4165cca9">陕西</option>
                                    <option value="8ba9f215-379f-451d-893b-0ac3fb6b1f52">山东</option>
                                    <option value="e1071724-bdbf-4947-becd-64621f189676">山西</option>
                                    <option value="62024572-439c-46e2-816e-37f52534ef2d">安徽</option>
                                    <option value="693c737b-d014-4572-8c80-17ecf4bafd98">新疆</option>
                                    <option value="b9c713c2-aa5f-4aa3-9d26-a3494c95e739">西藏</option>
                                    <option value="7d975a49-01ff-4a74-accf-e0ef2f5bddac">云南</option>
                                    <option value="7c046210-81f3-4638-a09b-6b2e8ecbe957">重庆</option>
                                </select>
                                <select name="CityId" id="SelectCityId"><option value="">选择城市</option></select>
                                <select name="DistrictId" id="SelectDistrictId"><option value="">选择区域</option></select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea"><span>*</span>详细地址：</label>
                            <div class="controls"><input type="text" class="input-xl" name="ConsigneeAddress"></div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea">固定电话：</label>
                            <div class="controls">

                                <input type="text" class="input-m" id="ConsigneeTel" name="ConsigneeTel">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea">邮政编码：</label>
                            <div class="controls"><input type="text" class="input-m" name="PostCode"></div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea"></label>
                            <div class="controls"><label class="adrtag" data-type="2">家庭地址<b></b></label><label class="adrtag" data-type="1">公司地址<b></b></label><input id="ConsigneeType" name="ConsigneeType" type="hidden" value=""></div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="textarea"></label>
                            <div class="controls"><a href="javascript:" class="btn-save">保存并添加</a></div>
                        </div>
                    </form>
                </div>
            </div>

            <link href="address_files/address.css" rel="stylesheet" type="text/css">



        </div>
    </div>
    <!------- 页尾 ------->
    <style>
        i {
            background-image: none;
        }
    </style>
    <div class="footer">
        <div class="wrap">
            <dl class="col1">
                <dt>新手指南</dt>
                <dd>
                    <p><a href="http://www.yiguo.com/help/registersteps.html">账户注册</a></p>
                    <p><a href="http://www.yiguo.com/help/gouwuliucheng.html">购物流程</a></p>
                    <p><a href="http://www.yiguo.com/help/ordering.html">订购方式</a></p>
                    <p><a href="http://www.yiguo.com/help/ubremark.html">悠币说明</a></p>
                    <p><a href="http://www.yiguo.com/activity/sale/2999">会员等级<i class="ml5" style="display: none;"><img src="address_files/icon-new.png"></i></a></p>

                </dd>
            </dl>
            <dl class="col2">
                <dt>付款方式</dt>
                <dd>
                    <p><a href="http://www.yiguo.com/help/payment.html">支付方式</a></p>
                    <p><a href="http://www.yiguo.com/help/chongzhiliucheng.html">充值说明</a></p>
                    <p><a href="http://www.yiguo.com/help/usegiftcard.html">优惠代码/礼品卡说明</a>
                    </p><p><a href="http://www.yiguo.com/help/cardbuynotes.html">卡券购买章程</a></p>
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
                    <a href="http://www.yiguo.com/legal" target="_blank" rel="nofollow"><img src="address_files/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110512114405424" target="_blank"><img src="address_files/footer_copy.gif" width="47px" height="47px"></a>
                    <a href="https://180.169.127.46:9090/?sn=310100102001">
                        <img src="address_files/picp_bg.png" alt="»¦¹«θ±¸" border="0">
                        <span>310100102001</span>
                    </a>
                </p>
            </div>
        </div>
    </div>






    <!--yiguoStats-->
    <script type="text/javascript">
        var _yaq = _yaq || [];
        _yaq.push(['_operate', 'view']);
        _yaq.push(['_site', 'Utaste']);
        _yaq.push(['categoryid', '']);
        _yaq.push(['behaviorid', '']);
        _yaq.push(['behavior', '']);

        (function () {
            var ya = document.createElement('script'); ya.type = 'text/javascript'; ya.async = true;
            ya.src = "http://tracker.yiguo.com/Scripts/yiguoStats.min.js";
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ya, s);
        })();

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
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-20131478-1']);
        _gaq.push(['_setDomainName', 'yiguo.com']);
        _gaq.push(['_setSiteSpeedSampleRate', 50]);
        _gaq.push(['_addOrganic', 'baidu', 'word']);
        _gaq.push(['_addOrganic', 'soso', 'w']);
        _gaq.push(['_addOrganic', 'youdao', 'q']);
        _gaq.push(['_addOrganic', 'so.360.cn', 'q']);
        _gaq.push(['_addOrganic', 'sogou', 'query']);
        _gaq.push(['_setCampNameKey', 'n']);
        _gaq.push(['_setCampSourceKey', 's']);
        _gaq.push(['_setCampMediumKey', 'm']);
        _gaq.push(['_setCampTermKey', 'k']);
        _gaq.push(['_setCampContentKey', 'c']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
    <div style="display: none">
        <script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F36a486fbdec46fc52ca666dd2e98f260' type='text/javascript'%3E%3C/script%3E"));
        </script><script src="address_files/h.js" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=36a486fbdec46fc52ca666dd2e98f260" target="_blank"><img border="0" src="address_files/21.gif" width="20" height="20"></a>
    </div>
    <!------- 侧边悬浮 ------->
    <div class="sidebar" id="sidebar">
        <a href="javascript:void(0);" class="s-btn service" id="calltool_1508925528196"></a>
        <a href="http://home.yiguo.com/Account/Consignee#body" class="s-btn goTop"></a>
    </div>
</div><script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script>
<script src="address_files/handlebars-v3.0.1.js"></script>
<script src="address_files/jquery.superslide.js"></script>
<script src="address_files/utaste.js"></script>
<script src="address_files/sidebar.js"></script>
<script src="address_files/jquery.scrollLoading-min.js"></script>
<script src="address_files/search.js"></script>
<script src="address_files/global-v2.js"></script>
<script src="address_files/base.js"></script>
<script src="address_files/app.js"></script>
<script src="address_files/common.js"></script>


<script src="address_files/util.js"></script>
<script src="address_files/city.js"></script>
<!--[if lt IE 9]>
<script src="https://g.alicdn.com/aliww/ww/json/json.js" charset="utf-8"></script>
<![endif]-->
<!-- 自动适配移动端与pc端 -->
<script src="address_files/saved_resource" charset="utf-8"></script>
<script src="address_files/chat.js"></script>


<script type="text/javascript" src="address_files/modal.js"></script>
<script type="text/javascript" src="address_files/jquery.validate.min.js"></script>
<script type="text/javascript" src="address_files/consignee.js"></script>
<script type="text/javascript">
    $(function () {
        Consignee.init({});
    });
</script>


<script>
    $(function () {
        app.initLayout("/Handler/InitLayOut");
        // app.changecity();
        app.referCart();
        app.logout(".logout");
    });
</script>

<div class="popout Dailog-poput" style="z-index:999999999;display:none;"><div class="popout-wrap">                            <div class="popout-con">            	                <div class="title"><i></i>提 示</div>            	                <div class="con">            		                <p style="text-align: center; font-size: 14px; padding-top: 15px;"></p>                                    <div class="btnbox" style="margin-top: 45px;"><a class="confirm" href="javascript:">确定</a></div>            	                </div>                            </div>                        </div>                        <div class="popout-bg">&nbsp;</div></div><iframe src="address_files/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe></body></html>