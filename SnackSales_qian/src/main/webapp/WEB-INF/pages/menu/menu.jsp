<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0025)http://article.yiguo.com/ -->
<html>
    <head>
        <base href="<%=request.getContextPath()%>/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" async="" src="js/dc.js">

        </script>

    <title>易果生鲜_全球精选</title>
    <meta name="Keywords" content="水果，进口水果，国产水果，易果网">
    <meta name="Description" content="易果网是全国最大的专业精品水果网之一，从事高品质水果及健康食品销售，提供各类进口水果，国产水果，以专业便捷的配送服务让易果迅速布遍全国各地，使您第一时间品尝到最优质最新鲜的水果。电话：400-820-8251,800-820-8251">
    <meta property="qc:admins" content="15753240576117576375">
    <link rel="shortcut icon" href="">
    <link href="css/public.css" rel="stylesheet" type="text/css">
    <link href="css/yiguo.css" rel="stylesheet" type="text/css">
    <link href="css/search.css" rel="stylesheet" type="text/css">
    <link href="css/recipe.css" rel="stylesheet" type="text/css">
    <link href="css/menu.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" async="" src="js/yiguoStats.min.js"></script><script type="text/javascript" async="" src="js/collect.js"></script><script type="text/javascript" async="" src="js/vds.js"></script><script type="text/javascript" async="" src="js/adw.js"></script><script src="js/tm.js" async=""></script><script>
        yg_x = new Date();
    </script>
    <script src="js/topdsp.js"></script><script type="text/javascript" async="" src="http://configch2.veinteractive.com/tags/CBD65260/4995/49F7/B51A/5963EB93BD47/tag.js"></script>
</head>
<body id="body">
<div class="w">
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
                    <li><a href="" target="_blank">银行专区</a></li>
                    <li><a href="menu/list1/" target="_blank">菜谱专栏</a></li>
                </ul>
            </div>
        </div>
    </div>



    <link href="css/recipe.css" rel="stylesheet" type="text/css">
    <div class="wrap">
        <!--广告位-->
        <div class="page_ad clearfix">
            <a href="" target="_blank"><img src="images/9288684767354682.jpg" width="1200" height="360"></a>
        </div>
        <div class="recipe-select clearfix">
            <ul>
                <li class=""><a href="menu/list1"><i><img src="images/icon_shenyeshipu.png" height="27"></i><span>深夜食堂（13）</span></a></li>
                <li class=""><a href="menu/list1"><i><img src="images/icon_kaiweicaiqiancai.png" height="27"></i><span>简单轻食（29）</span></a></li>
                <li class=""><a href="menu/list1"><i><img src="images/icon_zhucai.png" height="27"></i><span>饕餮大餐（156）</span></a></li>
                <li class=""><a href="menu/list1"><i><img src="images/icon_tanglei.png" height="27"></i><span>至纯汤品（19）</span></a></li>
                <li class=""><a href="menu/list1"><i><img src="images/icon_zhushi.png" height="27"></i><span>丰盛主食（15）</span></a></li>
                <li class="on"><a href="menu/list1"><i><img src="images/icon_all.png" height="27"></i><span>所有食谱（232）</span></a></li>

            </ul>
        </div>
        <div class="recipe-list clearfix">
            <div class="title"><i></i>易食谱</div>
            <ul class="recipe-pageList">
                <c:forEach items="${menuList}" var="menu">
                    <li class="recipe-item">
                        <div class="img clearfix">
                            <a href="menu/detail/${menu.menuId}" target="_blank"><img src="shows/${menu.menuImg}" width="270" height="270"></a>
                        </div>
                        <div class="info clearfix">
                            <div class="name"><a href="menu/detail/${menu.menuId}" target="_blank">${menu.menuName}</a>
                            </div>
                            <div class="like ArticleVote" data-id="c399cebd-f482-4ac2-b6c5-6c6005208247">
                                    <i></i><span class="VoteCount">254</span>人想吃
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
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
                    <p><a href="">会员等级</a></p>
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
                    <p><a href="">投诉与建议</a></p>
                </dd>
            </dl>
            <dl class="col5">
                <dt>关于我们</dt>
                <dd>
                    <p><a href="">公司介绍</a></p>
                    <p><a href="">联系我们</a></p>
                    <p><a href="">业务合作</a></p>
                    <p><a href="">友情链接</a></p>
                    <p><a href="">客户端下载</a></p>
                </dd>
            </dl>
            <div class="service"><span>客服热线 400-000-7788</span><span>周一至周日 8:00-20:00</span></div>
            <div class="copyright">
                <p>所有图片均受著作权保护，未经许可任何单位与个人不得使用、复制、转载、摘编，违者必究法律责任。</p>
                <p>版权所有<a href="http://www.yiguo.com/">上海易果电子商务有限公司</a>  2005-2017 Copyright @ 2005-2017 _www.yiguo.com, All rights reserved 沪ICP备09008015号<br><br></p>
                <p class="authentication">
                    <a href="" target="_blank"><img src="images/footer_copy.gif" width="47px" height="47px"></a>
                    <a target="_blank" href="" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="images/ghs.png" style="float:left;"><span style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">沪公网安备 31010502000002号</span></a>
                </p>
            </div>
        </div>
    </div>

    <!------- 侧边悬浮 ------->
    <div class="sidebar" id="sidebar">
        <a href="http://article.yiguo.com/#body" class="s-btn goTop" style="display: block;"></a>
    </div>
</div>
<script src="js/jquery-1.7.2-min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/handlebars-v3.0.1.js"></script>
<script src="js/utaste.js"></script>
<script src="js/base.js"></script>
<script src="js/jquery.superslide.js"></script>

<script src="js/global-v2.js"></script>
<script src="js/search.js"></script>
<script src="js/app.js"></script>
<script src="js/common.js"></script>
<script src="js/util.js"></script>
<script src="js/sidebar.js"></script><script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script>
<script src="js/article.js"></script>
<script src="js/city.js"></script>
<script>
    $(function () {
        app.init();
    })
</script>
<!--yiguoStats-->
<script type="text/javascript">
    var _yaq = _yaq || [];
    _yaq.push(['_operate', 'view']);
    _yaq.push(['_site', 'Article']);
    _yaq.push(['categoryid', '']);
    _yaq.push(['behaviorid', '']);
    _yaq.push(['behavior', '']);

    (function () {
        var ya = document.createElement('script'); ya.type = 'text/javascript'; ya.async = true;
        ya.src = "http://tracker.yiguo.com/Scripts/yiguoStats.min.js";
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ya, s);
    })();

</script>
<script src="js/stats.js"></script>

<script>
    $(function() {
        Article.init();
        util.Waterfull.init($('.recipe-pageList').eq(0), {
            url: '/Recipes/GetRecipesList',
            pageIndex: 1,
            pageSize: 8,
            code: ''
        }, function(result) {
            if (result.data) {
                $.each(result.data, function(i, e) {
                    var id = e.EfruitArticleId;
                    var url = '/Recipes/Detail/' + e.EfruitArticleId;
                    var imgUrl = e.PictureUrl;
                    var voteCount = e.ArticleVote;
                    var title = e.EfruitArticleTitle;
                    var isVideo = 0;
                    if ('' == e.OtherCategoryId) {
                        isVideo = 1;
                    }
                    var videoDomain = 'http://static01.yiguo.com/' + 'article/images/recipe/tag_video.png';
                    var videoImg = isVideo ? '<p class="tag"><img src="' + videoDomain + '" width="60" height="60"></p>' : '';

                    $('.recipe-pageList').eq(0).append('<li class="recipe-item">\
                                                                <div class="img clearfix">\
                                                                   ' + videoImg + '<a href="' + url + '" target="_blank"><img src="' + imgUrl + '" width="270" height="270" /></a>\
                                                                </div>\
                                                                <div class="info clearfix">\
                                                                    <div class="name"><a href="' + url + '" target="_blank">' + title + '</a></div>\
                                                                    <div class="like ArticleVote" data-id="' + id + '"><i></i><span class="VoteCount">' + voteCount + '</span>人想吃</div>\
                                                                </div>\
                                                            </li>');
                });
            }
        });
    });
</script>


<noscript>&lt;img src="//stats.ipinyou.com/adv.gif?a=6y..SrO6vljE2uhkqi03vEbY8_&amp;e=" style="display:none;" /&gt;</noscript>

<div class="popout Dailog-poput" style="z-index:999999999;display:none;"><div class="popout-wrap">                            <div class="popout-con">            	                <div class="title"><i></i>提 示</div>            	                <div class="con">            		                <p style="text-align: center; font-size: 14px; padding-top: 15px;"></p>                                    <div class="btnbox" style="margin-top: 45px;"><a class="confirm" href="javascript:">确定</a></div>            	                </div>                            </div>                        </div>                        <div class="popout-bg">&nbsp;</div></div><iframe src="images/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe></body></html>
