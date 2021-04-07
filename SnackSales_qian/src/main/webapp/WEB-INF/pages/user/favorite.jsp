<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script charset="utf-8" type="text/javascript" src="favorite_files/pckit.js"></script>

    <title>零食在售_全球精选</title>
    <meta name="Keywords" content="水果，进口水果，国产水果，零食在售网">
    <meta name="Description" content="零食在售Yiguo网是专业的进口生鲜水果食品网络购物平台，为您精选全球3001多种生鲜果蔬品质食材，在体验网上购物新模式的同时享尽各国新鲜美味，零食在售网是您悠悦生活的品质之选。">
    <meta property="qc:admins" content="15753240576117576375">
    <link rel="shortcut icon" href="http://static01.yiguo.com/common/images/yiguo.ico">
    <link href="favorite_files/public.css" rel="stylesheet" type="text/css">
    <link href="favorite_files/yg.css" rel="stylesheet" type="text/css">
    <link href="favorite_files/search.css" rel="stylesheet" type="text/css">
    <script charset="utf-8" src="favorite_files/v.js"></script>
    <script type="text/javascript" async="" charset="utf-8" src="favorite_files/core.php"></script>
    <script type="text/javascript" async="" src="favorite_files/collect.js"></script>
    <script type="text/javascript" async="" src="favorite_files/dc.js"></script>
    <script type="text/javascript" async="" src="favorite_files/yiguoStats.min.js"></script>
    <script type="text/javascript" async="" src="favorite_files/vds.js"></script>
    <script type="text/javascript" async="" src="favorite_files/adw.js"></script>
    <script src="favorite_files/tm.js" async=""></script>
    <script type="text/javascript" charset="utf-8" async="" src="favorite_files/dplus.php"></script>
    <script src="favorite_files/jquery-1.7.2-min.js"></script>
    <link href="favorite_files/returns.css" rel="stylesheet" type="text/css">

    <link href="favorite_files/mylist.css" rel="stylesheet" type="text/css">

    <link href="favorite_files/themes.css" rel="stylesheet" type="text/css">
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
    <script src="favorite_files/topdsp.js"></script><script type="text/javascript" async="" src="http://configch2.veinteractive.com/tags/CBD65260/4995/49F7/B51A/5963EB93BD47/tag.js"></script>
</head>
<body id="body">
<!------- 弹出框 ------->
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
                <div class="catalogs-title btn-green"><a href="javascript:;"><i></i>全部商品分类</a></div>
                <div class="catalogs-list" id="_categry" style="display:none;">

                    <div class="item">
                        <h3 class="t01_channelhome"><a href="product/btypeList/1"><i></i>进口水果<s>&gt;</s></a></h3>
                        <div class="sub-item" style="display: none;">
                            <h4><a href="product/btypeList/1"> 进口水果</a></h4>
                            <div class="sub-list">
                                <c:forEach items="${stypeList1}" var="stype1">
                                    <a href="product/stypeList/${stype1.stypeId}" target="_blank">${stype1.stypeName}</a>
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
        <div class="crumbs"><a class="ml0" href="">首页</a>&gt;<a href="" class="j_ygnav">我的零食在售</a><span class="j_thridcrumbs hide">&gt;<a href="javascript:void(0)" class="on j_thirdnav">我的收藏</a></span></div>
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
            </div>





            <!--我的收藏-->

            <div class="main mylist">
                <div class="title">我的收藏</div>
                <div class="toolbar"><label><input type="checkbox" class="j_checkall" onclick="common.checkall(this, &#39;j_favos&#39;)">全选</label>
                    <a href="javascript:void(0)" class="btn-orange j_unfavo">取消收藏</a>
                <div class="mylist-header">
                    <table class="mylist-table">
                        <tbody>
                        <tr>
                            <th class="t-check"></th>
                            <th class="t-name">商品名称</th>
                            <th class="t-price">商品价格</th>
                            <th class="t-opera">操作</th>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="mylist-list j_favos">
                    <c:forEach items="${favoriteList}" var="favorite">
                        <table class="mylist-table j_product">
                            <tbody>
                            <tr>
                                <td class="t-check">
                                    <input data-id="d3121700-e2b8-4e70-9a62-5294fbed6f65" data-cid="0c21d36b-1388-42ae-821e-74c20d7b326d" type="checkbox">
                                </td>
                                <td class="t-img"><a href=""><img class="j_product_img" src="shows/${favorite.favoriteProImg}"></a></td>
                                <td class="t-name"><a href="">${favorite.favoriteProName}</a></td>
                                <td class="t-price">￥${favorite.favoriteProPrice}</td>
                                <td class="t-opera">
                                    <br><a class="j_unfavoopt" data-id="0c21d36b-1388-42ae-821e-74c20d7b326d" href="favorite/delete/${favorite.favoriteId}">取消收藏</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </c:forEach>
                </div>
                <!--页码 开始-->
                <div class="paging j_active j_bind" id="j_pages"><div class="paging-num">&nbsp;<a href="javascript:void(0);" class="j_pageopt" data-index="previous">上一页</a>&nbsp;<a class="this j_pageopt" href="javascript:void(0);" data-index="0">1</a>&nbsp;<a href="javascript:void(0);" class="j_pageopt" data-index="nextpage">下一页</a></div><div class="paging-total">共 1页</div><div class="paging-form"><span>到第</span><input class="j_pageval" type="text" value="1"><span>页</span><button class="j_pagebtn">确定</button></div></div>
                <!--页码 结束-->


                <script id="favotpl" type="text/x-handlebars-template">
                    {{#data}}
                    <table class="mylist-table j_product">
                        <tbody>
                        <tr>
                            <td class="t-check">
                                {{#equal State 1}}
                                <input data-id="{{CommodityId}}" data-cid="{{CollectionId}}" type="checkbox">
                                {{/equal}}
                            </td>
                            <td class="t-img"><a href="{{CommodityUrl}}"><img class="j_product_img" src="{{ImgUrl}}"></a></td>
                            <td class="t-name"><a href="{{CommodityUrl}}">{{CommodityName}}</a></td>
                            <td class="t-price">￥{{Price}}</td>
                            <td class="t-opera">
                                {{#equal State 1}}
                                <a href="javascript:void(0)" onclick="G.app.cart.Facade.addToCart1_Home(this, '{{CommodityCode}}')" class="btn-orange btn-buy"><i></i>加入购物车</a>
                                {{else}}
                                {{#if IsRechargeCommod}}
                                {{else}}
                                <a href="javascript:void(0)" data-id="{{CommodityId}}" class="btn-dhtz"><i></i>到货通知</a>
                                {{/if}}
                                {{/equal}}
                                <br><a class="j_unfavoopt" data-id="{{CollectionId}}" href="javascript:void(0)">取消收藏</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    {{/data}}
                </script>
            </div>



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
                    <p><a href="">账户注册</a></p>
                    <p><a href="">购物流程</a></p>
                    <p><a href="">订购方式</a></p>
                    <p><a href="">悠币说明</a></p>
                    <p><a href="">会员等级<i class="ml5" style="display: none;"><img src="favorite_files/icon-new.png"></i></a></p>

                </dd>
            </dl>
            <dl class="col2">
                <dt>付款方式</dt>
                <dd>
                    <p><a href="">支付方式</a></p>
                    <p><a href="">充值说明</a></p>
                    <p><a href="">优惠代码/礼品卡说明</a>
                    </p><p><a href="">卡券购买章程</a></p>
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
                    <p><a href="">极速退款</a></p>
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
                <p>版权所有<a href="">上海零食在售电子商务有限公司</a>  2005-2017 Copyright @ 2005-2017 _www.yiguo.com, All rights reserved 沪ICP备09008015号<br><br></p>
                <p class="authentication">
                    <a href="" target="_blank" rel="nofollow"><img src="favorite_files/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="" target="_blank"><img src="favorite_files/footer_copy.gif" width="47px" height="47px"></a>
                    <a href="">
                        <img src="favorite_files/picp_bg.png" alt="»¦¹«θ±¸" border="0">
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
        </script><script src="favorite_files/h.js" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=36a486fbdec46fc52ca666dd2e98f260" target="_blank"><img border="0" src="favorite_files/21.gif" width="20" height="20"></a>
    </div>
    <!------- 侧边悬浮 ------->
    <div class="sidebar" id="sidebar">
        <a href="javascript:void(0);" class="s-btn service" id="calltool_1508925384426"></a>
        <a href="http://home.yiguo.com/Trade/MyCollection#body" class="s-btn goTop"></a>
    </div>
</div><script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script>
<script src="favorite_files/handlebars-v3.0.1.js"></script>
<script src="favorite_files/jquery.superslide.js"></script>
<script src="favorite_files/utaste.js"></script>
<script src="favorite_files/sidebar.js"></script>
<script src="favorite_files/jquery.scrollLoading-min.js"></script>
<script src="favorite_files/search.js"></script>
<script src="favorite_files/global-v2.js"></script>
<script src="favorite_files/base.js"></script>
<script src="favorite_files/app.js"></script>
<script src="favorite_files/common.js"></script>


<script src="favorite_files/util.js"></script>
<script src="favorite_files/city.js"></script>
<!--[if lt IE 9]>
<script src="https://g.alicdn.com/aliww/ww/json/json.js" charset="utf-8"></script>
<![endif]-->
<!-- 自动适配移动端与pc端 -->
<script src="favorite_files/saved_resource" charset="utf-8"></script>
<script src="favorite_files/chat.js"></script>


<script src="favorite_files/myfavorite.js"></script><iframe src="favorite_files/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe>

<script>
    $(function () {
        app.initLayout("/Handler/InitLayOut");
        // app.changecity();
        app.referCart();
        app.logout(".logout");
    });
</script>

<div class="popout Dailog-poput" style="z-index:999999999;display:none;"><div class="popout-wrap">
    <div class="popout-con">
        <div class="title"><i></i>提 示</div>
        <div class="con">
            <p style="text-align: center; font-size: 14px; padding-top: 15px;"></p>
            <div class="btnbox" style="margin-top: 45px;"><a class="confirm" href="javascript:">确定</a></div>
        </div>
    </div>
</div>
    <div class="popout-bg">&nbsp;</div></div>
</body>
</html>


