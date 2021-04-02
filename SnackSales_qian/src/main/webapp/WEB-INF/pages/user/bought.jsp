<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script charset="utf-8" type="text/javascript" src="myorders_files/pckit.js.下载"></script>
    <title>易果生鲜_全球精选</title>
    <meta name="Keywords" content="水果，进口水果，国产水果，易果网">
    <meta name="Description" content="易果生鲜Yiguo网是专业的进口生鲜水果食品网络购物平台，为您精选全球3001多种生鲜果蔬品质食材，在体验网上购物新模式的同时享尽各国新鲜美味，易果网是您悠悦生活的品质之选。">
    <meta property="qc:admins" content="15753240576117576375">
    <link rel="shortcut icon" href="http://static01.yiguo.com/common/images/yiguo.ico">
    <link href="myorders_files/public.css" rel="stylesheet" type="text/css">
    <link href="myorders_files/yg.css" rel="stylesheet" type="text/css">
    <link href="myorders_files/search.css" rel="stylesheet" type="text/css">
    <script charset="utf-8" src="myorders_files/v.js.下载"></script><script type="text/javascript" async="" charset="utf-8" src="myorders_files/core.php"></script><script type="text/javascript" async="" src="myorders_files/dc.js.下载"></script><script type="text/javascript" async="" src="myorders_files/yiguoStats.min.js.下载"></script><script type="text/javascript" async="" src="myorders_files/collect.js.下载"></script><script type="text/javascript" async="" src="myorders_files/vds.js.下载"></script><script type="text/javascript" async="" src="myorders_files/adw.js.下载"></script><script src="myorders_files/tm.js.下载" async=""></script><script type="text/javascript" charset="utf-8" async="" src="myorders_files/dplus.php"></script><script src="myorders_files/jquery-1.7.2-min.js.下载"></script>
    <link href="myorders_files/returns.css" rel="stylesheet" type="text/css">

    <link href="myorders_files/yg.css" rel="stylesheet" type="text/css">
    <link href="myorders_files/myorder.css" rel="stylesheet" type="text/css">


    <link href="myorders_files/themes.css" rel="stylesheet" type="text/css">
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
    <script src="myorders_files/topdsp.js.下载"></script><script type="text/javascript" async="" src="http://configch2.veinteractive.com/tags/CBD65260/4995/49F7/B51A/5963EB93BD47/tag.js"></script>
</head>
<body id="body">
<!------- 弹出框 ------->

<div class="w">
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
                </div>
            </div>
        </div>
    </div>
    <!--商品分类 开始-->
    <div class="header-nav">
        <div class="wrap">
            <!--商品分类 开始-->
            <div class="catalogs">
                <div class="catalogs-title btn-green"><a href=""><i></i>全部商品分类</a></div>
                <div class="catalogs-list" id="_categry" style="display:none;">
                    <div class="item">
                        <h3 class="t01_channelhome"><a href="http://www.yiguo.com/products/01_channelhome.html"><i></i>进口水果<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/01_channelhome.html"> 进口水果</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0101_qiyiguo.html" target="_blank">奇异果</a>
                                <a href="http://www.yiguo.com/products/0104_li.html" target="_blank">李</a>
                                <a href="http://www.yiguo.com/products/0106_mei.html" target="_blank">莓</a>
                                <a href="http://www.yiguo.com/products/0107_niuyouguo.html" target="_blank">牛油果</a>
                                <a href="http://www.yiguo.com/products/0108_tizi.html" target="_blank">提子</a>
                                <a href="http://www.yiguo.com/products/0109_pingguo.html" target="_blank">苹果</a>
                                <a href="http://www.yiguo.com/products/0111_ganjuchengyou.html" target="_blank">柑桔橙柚</a>
                                <a href="http://www.yiguo.com/products/0113_xiangjiao.html" target="_blank">香蕉</a>
                                <a href="http://www.yiguo.com/products/0114_huolongguo.html" target="_blank">火龙果</a>
                                <a href="http://www.yiguo.com/products/0115_yezi.html" target="_blank">椰子</a>
                                <a href="http://www.yiguo.com/products/0117_fengli.html" target="_blank">凤梨</a>
                                <a href="http://www.yiguo.com/products/0119_tropical.html" target="_blank">热带水果</a>
                                <a href="http://www.yiguo.com/products/0120_season.html" target="_blank">时令水果</a>
                                <a href="http://www.yiguo.com/products/0121_yuanxiang.html" target="_blank">原箱水果</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/01_channelhome.html"><img src="myorders_files/9570160763248445.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t02_channelhome"><a href="http://www.yiguo.com/products/02_channelhome.html"><i></i>国产水果<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/02_channelhome.html"> 国产水果</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0201_pingguo.html" target="_blank">苹果</a>
                                <a href="http://www.yiguo.com/products/0202_li.html" target="_blank">梨</a>
                                <a href="http://www.yiguo.com/products/0204_ganjuchengyou.html" target="_blank">柑桔橙柚</a>
                                <a href="http://www.yiguo.com/products/0205_mihoutao.html" target="_blank">猕猴桃</a>
                                <a href="http://www.yiguo.com/products/0206_gua.html" target="_blank">瓜</a>
                                <a href="http://www.yiguo.com/products/0207_putao.html" target="_blank">葡萄</a>
                                <a href="http://www.yiguo.com/products/0210_zao.html" target="_blank">枣</a>
                                <a href="http://www.yiguo.com/products/0212_mangguo.html" target="_blank">芒果</a>
                                <a href="http://www.yiguo.com/products/0213_fengli.html" target="_blank">凤梨</a>
                                <a href="http://www.yiguo.com/products/0216_baixiangguo.html" target="_blank">百香果</a>
                                <a href="http://www.yiguo.com/products/0217_tropical.html" target="_blank">热带水果</a>
                                <a href="http://www.yiguo.com/products/0218_season.html" target="_blank">时令水果</a>
                                <a href="http://www.yiguo.com/products/0219_yuanxiang.html" target="_blank">原箱水果</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/02_channelhome.html"><img src="myorders_files/9570160763379517.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t05_channelhome"><a href="http://www.yiguo.com/products/05_channelhome.html"><i></i>精选肉类<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/05_channelhome.html"> 精选肉类</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0501_jinkouniurou.html" target="_blank">进口牛肉</a>
                                <a href="http://www.yiguo.com/products/0502_guochanniurou.html" target="_blank">国产牛肉</a>
                                <a href="http://www.yiguo.com/products/0503_zhurou.html" target="_blank">猪肉</a>
                                <a href="http://www.yiguo.com/products/0504_yangrou.html" target="_blank">羊肉</a>
                                <a href="http://www.yiguo.com/products/0505_xiangchang.html" target="_blank">香肠</a>
                                <a href="http://www.yiguo.com/products/0506_huotui.html" target="_blank">火腿/培根</a>
                                <a href="http://www.yiguo.com/products/0507_rouzhipin.html" target="_blank">肉制品</a>
                                <a href="http://www.yiguo.com/products/0508_jinkoulurou.html" target="_blank">进口鹿肉</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/05_channelhome.html"><img src="myorders_files/9570160763445053.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t06_channelhome"><a href="http://www.yiguo.com/products/06_channelhome.html"><i></i>禽类蛋品<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/06_channelhome.html"> 禽类蛋品</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0601_ji.html" target="_blank">鸡</a>
                                <a href="http://www.yiguo.com/products/0602_ya.html" target="_blank">鸭</a>
                                <a href="http://www.yiguo.com/products/0603_egeteseqinlei.html" target="_blank">鹅/鸽/特色禽类</a>
                                <a href="http://www.yiguo.com/products/0604_dan.html" target="_blank">蛋</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/06_channelhome.html"><img src="myorders_files/9570160763510589.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t12_channelhome"><a href="http://www.yiguo.com/products/12_channelhome.html"><i></i>即烹美食<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/12_channelhome.html"> 即烹美食</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/1202_dujiamizhi.html" target="_blank">独家秘制</a>
                                <a href="http://www.yiguo.com/products/1203_shengmenghaixian.html" target="_blank">生猛海鲜</a>
                                <a href="http://www.yiguo.com/products/1204_rihanliaoli.html" target="_blank">日韩料理</a>
                                <a href="http://www.yiguo.com/products/1205_meiweiliangtang.html" target="_blank">美味靓汤</a>
                                <a href="http://www.yiguo.com/products/1206_jingdianzhucai.html" target="_blank">经典主菜</a>
                                <a href="http://www.yiguo.com/products/1207_zhonghuameishi.html" target="_blank">中华美食</a>
                                <a href="http://www.yiguo.com/products/1208_jingzhixican.html" target="_blank">精致西餐</a>
                                <a href="http://www.yiguo.com/products/1209_kaiweixiaocai.html" target="_blank">开胃小菜</a>
                                <a href="http://www.yiguo.com/products/1210_dongnanyafengwei.html" target="_blank">东南亚风味</a>
                                <a href="http://www.yiguo.com/products/1211_tianyuanshishu.html" target="_blank">田园时蔬</a>

                            </div>
                            <div class="catalogs-ad">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t04_channelhome"><a href="http://www.yiguo.com/products/04_channelhome.html"><i></i>海鲜水产<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/04_channelhome.html"> 海鲜水产</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0401_yu.html" target="_blank">鱼</a>
                                <a href="http://www.yiguo.com/products/0402_sanwenyu.html" target="_blank">三文鱼</a>
                                <a href="http://www.yiguo.com/products/0403_xia.html" target="_blank">虾</a>
                                <a href="http://www.yiguo.com/products/0404_xie.html" target="_blank">蟹</a>
                                <a href="http://www.yiguo.com/products/0405_beilei.html" target="_blank">贝</a>
                                <a href="http://www.yiguo.com/products/0406_huoxian.html" target="_blank">活鲜</a>
                                <a href="http://www.yiguo.com/products/0407_haichanganhuo.html" target="_blank">海产干货</a>
                                <a href="http://www.yiguo.com/products/0408_tesehaichan.html" target="_blank">特色海产</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/04_channelhome.html"><img src="myorders_files/9570160763576125.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t08_channelhome"><a href="http://www.yiguo.com/products/08_channelhome.html"><i></i>乳品糕点<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/08_channelhome.html"> 乳品糕点</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0801_nailao.html" target="_blank">奶酪</a>
                                <a href="http://www.yiguo.com/products/0802_huangyounaiyou.html" target="_blank">黄油/奶油</a>
                                <a href="http://www.yiguo.com/products/0803_rusuanyinliao.html" target="_blank">酸奶/乳酸饮料</a>
                                <a href="http://www.yiguo.com/products/0804_niunai.html" target="_blank">牛奶</a>
                                <a href="http://www.yiguo.com/products/0805_mianbao.html" target="_blank">面包</a>
                                <a href="http://www.yiguo.com/products/0806_dangao.html" target="_blank">蛋糕</a>
                                <a href="http://www.yiguo.com/products/0807_tiandian.html" target="_blank">甜点</a>
                                <a href="http://www.yiguo.com/products/0808_yuebing.html" target="_blank">月饼</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/08_channelhome.html"><img src="myorders_files/9570160763641661.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t03_channelhome"><a href="http://www.yiguo.com/products/03_channelhome.html"><i></i>新鲜蔬菜<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/03_channelhome.html"> 新鲜蔬菜</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0301_yecailei.html" target="_blank">叶菜类</a>
                                <a href="http://www.yiguo.com/products/0302_genjinglei.html" target="_blank">根茎类</a>
                                <a href="http://www.yiguo.com/products/0303_qieguoguaguolei.html" target="_blank">茄果/瓜果类</a>
                                <a href="http://www.yiguo.com/products/0304_huacaidoulei.html" target="_blank">花菜/豆类</a>
                                <a href="http://www.yiguo.com/products/0306_jungu.html" target="_blank">菌菇</a>
                                <a href="http://www.yiguo.com/products/0307_shalacai.html" target="_blank">沙拉菜</a>
                                <a href="http://www.yiguo.com/products/0308_lengdongshucai.html" target="_blank">冷冻蔬菜</a>
                                <a href="http://www.yiguo.com/products/0309_douzhipin.html" target="_blank">豆制品</a>
                                <a href="http://www.yiguo.com/products/0310_congsuanlei.html" target="_blank">葱蒜类</a>
                                <a href="http://www.yiguo.com/products/0311_shucaizuhe.html" target="_blank">蔬菜组合</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/03_channelhome.html"><img src="myorders_files/9570161550040894.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t10_channelhome"><a href="http://www.yiguo.com/products/10_channelhome.html"><i></i>方便速食<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/10_channelhome.html"> 方便速食</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/1008_%20healthsoup.html" target="_blank">养生汤品</a>
                                <a href="http://www.yiguo.com/products/1001_lengdongdianxin.html" target="_blank">冷冻点心</a>
                                <a href="http://www.yiguo.com/products/1002_xishizhushi.html" target="_blank">西式主食</a>
                                <a href="http://www.yiguo.com/products/1003_zhongshizhushi.html" target="_blank">中式主食</a>
                                <a href="http://www.yiguo.com/products/1004_huoguoliao.html" target="_blank">火锅料</a>
                                <a href="http://www.yiguo.com/products/1005_lengcangshushi.html" target="_blank">冷藏熟食</a>
                                <a href="http://www.yiguo.com/products/1006_banchengpincai.html" target="_blank">半成品菜</a>
                                <a href="http://www.yiguo.com/products/1007_yihejiayan.html" target="_blank">易盒家宴</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/10_channelhome.html"><img src="myorders_files/9570160763838269.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t07_channelhome"><a href="http://www.yiguo.com/products/07_channelhome.html"><i></i>粮油杂货<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/07_channelhome.html"> 粮油杂货</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0701_mi.html" target="_blank">米</a>
                                <a href="http://www.yiguo.com/products/0702_zaliang.html" target="_blank">杂粮</a>
                                <a href="http://www.yiguo.com/products/0703_mianmianzhipin.html" target="_blank">面/面制品</a>
                                <a href="http://www.yiguo.com/products/0704_you.html" target="_blank">油</a>
                                <a href="http://www.yiguo.com/products/0705_tiaoweiliao.html" target="_blank">调味料</a>
                                <a href="http://www.yiguo.com/products/0706_ganhuo.html" target="_blank">干货</a>
                                <a href="http://www.yiguo.com/products/0707_guoganlingshi.html" target="_blank">果干/零食</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/07_channelhome.html"><img src="myorders_files/9570160757940029.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t09_channelhome"><a href="http://www.yiguo.com/products/09_channelhome.html"><i></i>饮料酒水<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/09_channelhome.html"> 饮料酒水</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/0901_shui.html" target="_blank">水</a>
                                <a href="http://www.yiguo.com/products/0902_guozhiyinliao.html" target="_blank">果汁/饮料</a>
                                <a href="http://www.yiguo.com/products/0903_chongtiaoyinpin.html" target="_blank">冲调饮品</a>
                                <a href="http://www.yiguo.com/products/0904_jiujiuju.html" target="_blank">酒/酒具</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/09_channelhome.html"><img src="myorders_files/9570160763182909.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <h3 class="t11_channelhome"><a href="http://www.yiguo.com/products/11_channelhome.html"><i></i>礼品礼券<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="http://www.yiguo.com/products/11_channelhome.html"> 礼品礼券</a></h4>
                            <div class="sub-list">


                                <a href="http://www.yiguo.com/products/1101_lipinlihe.html" target="_blank">礼品礼盒</a>
                                <a href="http://www.yiguo.com/products/1102_likaliquan.html" target="_blank">礼卡礼券</a>
                                <a href="http://www.yiguo.com/products/1103_yuanshanlihe.html" target="_blank">原膳礼盒</a>
                                <a href="http://www.yiguo.com/products/1106_zhinengyingjian.html" target="_blank">智能硬件</a>

                            </div>
                            <div class="catalogs-ad">
                                <a href="http://www.yiguo.com/products/11_channelhome.html"><img src="myorders_files/9570160763903805.png"></a>
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
        <div class="crumbs"><a class="ml0" href="http://www.yiguo.com/">首页</a>&gt;<a href="http://home.yiguo.com/Trade/Index" class="j_ygnav">我的易果</a><span class="j_thridcrumbs hide">&gt;<a href="javascript:void(0)" class="on j_thirdnav">我的订单</a></span></div>
        <div class="content myyg">
            <div class="sub">
                <div class="menu j_menu">
                    <dl>
                        <dt>交易信息</dt>
                        <dd>
                            <ul>
                                <li class="on"><a href="orders/userorders/${currentUser.userId}">我的订单</a></li>
                                <li><a href="orders/bought/${currentUser.userId}">购买过的商品</a></li>
                                <li><a href="favorite/userfavorite/${currentUser.userId}">我的收藏</a></li>
                                <li><a href="/comment/userComment/${currentUser.userId}">我的评论</a></li>
                            </ul>
                        </dd>
                        <dt>账号信息</dt>
                        <dd>
                            <ul>
                                <li>
                                    <a href="user/userinfo/${currentUser.userId}">个人资料</a>
                                </li>
                                <li>
                                    <a href="address/list/${currentUser.userId}">收货地址管理</a>
                                </li>
                            </ul>
                        </dd>
                    </dl>
                </div>
                <div>
                    <div class="ad" style="height: 308px;">
                        <a href="" target="_blank" style="display: none"><img src="myorders_files/ad.jpg" width="194" height="308"></a>
                    </div>
                </div>
            </div>



            <div class="main myorder">
                <div class="title">购买过的商品</div>
                <%--<div class="mylist-header">--%>
                    <%--<table class="mylist-table">--%>
                        <%--<tbody>--%>
                        <%--<tr>--%>
                            <%--<th class="t-name">商品名称</th>--%>
                            <%--<th class="t-price">商品价格</th>--%>
                            <%--<th class="t-opera">操作</th>--%>
                        <%--</tr>--%>
                        <%--<c:forEach items="${boughtList}" var="bought">--%>
                            <%--<tr>--%>
                                <%--<td class="t-name">${bought.orderProName}</td>--%>
                                <%--<td class="t-price">${bought.orderProPrice}</td>--%>
                                <%--<td class="operate">--%>
                                    <%--<a href="product/findProducts/${bought.orderProName}">查看详情</a>--%>
                                <%--</td>--%>
                            <%--</tr>--%>
                        <%--</c:forEach>--%>
                        <%--</tbody>--%>
                    <%--</table>--%>
                <%--</div>--%>
                <div class="order-table" id="allorderlst">
                    <div class="order-list-head clearfix">
                        <span class="w520">商品名称</span>
                        <span class="w140">商品价格</span>
                        <span class="w140">操作</span>
                    </div>
                    <div class="order-list-body">
                        <ul class="j_allorderli">
                            <c:forEach items="${boughtList}" var="bought">
                            <li>
                                    <table class="order-list j_product">
                                        <tbody>
                                        <tr>
                                            <td  width="520" class="all-goods" >
                                                ${bought.orderProName}
                                            </td>
                                            <td class="amount" width="140">${bought.orderProPrice}</td>
                                            <td width="140" class="operate">
                                                <div>
                                                    <a  target="_blank" href="product/findProducts?proName=${bought.orderProName}">查看详情</a>
                                                    <a target="_blank" href="comment/preAddComment?proName=${bought.orderProName}">评论</a>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            <!--页码 开始-->
            <div class="paging j_active" id="j_pages" style="display: none;">
            </div>
                <!--页码 结束-->
            </div>






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
                    <p><a href="http://www.yiguo.com/activity/sale/2999">会员等级<i class="ml5" style="display: none;"><img src="myorders_files/icon-new.png"></i></a></p>

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
                <p>版权所有<a href="http://www.yiguo.com/">上海易果电子商务有限公司</a>  2005-2017 Copyright @ 2005-2017 _www.yiguo.com, All rights reserved 沪ICP备09008015号<br><br></p>
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
        </script><script src="myorders_files/h.js.下载" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=36a486fbdec46fc52ca666dd2e98f260" target="_blank"><img border="0" src="myorders_files/21.gif" width="20" height="20"></a>
    </div>
    <!------- 侧边悬浮 ------->
    <div class="sidebar" id="sidebar">
        <a href="javascript:void(0);" class="s-btn service" id="calltool_1508925560778"></a>
        <a href="http://home.yiguo.com/Trade/OrderList#body" class="s-btn goTop"></a>
    </div>
</div><script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script><iframe src="myorders_files/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe>
<script src="myorders_files/handlebars-v3.0.1.js.下载"></script>
<script src="myorders_files/jquery.superslide.js.下载"></script>
<script src="myorders_files/utaste.js.下载"></script>
<script src="myorders_files/sidebar.js.下载"></script>
<script src="myorders_files/jquery.scrollLoading-min.js.下载"></script>
<script src="myorders_files/search.js.下载"></script>
<script src="myorders_files/global-v2.js.下载"></script>
<script src="myorders_files/base.js.下载"></script>
<script src="myorders_files/app.js.下载"></script>
<script src="myorders_files/common.js.下载"></script>


<script src="myorders_files/util.js.下载"></script>
<script src="myorders_files/city.js.下载"></script>
<!--[if lt IE 9]>
<script src="https://g.alicdn.com/aliww/ww/json/json.js" charset="utf-8"></script>
<![endif]-->
<!-- 自动适配移动端与pc端 -->
<script src="myorders_files/saved_resource" charset="utf-8"></script>
<script src="myorders_files/chat.js.下载"></script>


<script src="myorders_files/myorder.js.下载"></script>
<script src="myorders_files/orderRefund.js.下载"></script>

<script>
    $(function () {
        app.initLayout("/Handler/InitLayOut");
        // app.changecity();
        app.referCart();
        app.logout(".logout");
    });
</script>
</body>
</html>
