<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script async="" src="pay_files/YGAnalytics.ashx"></script>
    <title>结算-零食在售网</title>


    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="Keywords" content="水果，进口水果，国产水果，零食在售网">
    <meta name="Description" content="零食在售网是全国最大的专业精品水果网之一，从事高品质水果及健康食品销售，提供各类进口水果，国产水果，以专业便捷的配送服务让零食在售迅速布遍全国各地，使您第一时间品尝到最优质最新鲜的水果。电话：400-820-8251,800-820-8251">
    <meta property="qc:admins" content="15753240576117576375">
    <script type="text/javascript" async="" src="pay_files/dc.js"></script><script type="text/javascript" async="" src="pay_files/collect.js"></script><script type="text/javascript" async="" charset="utf-8" src="pay_files/core.php"></script><script type="text/javascript" async="" src="pay_files/vds.js"></script><script type="text/javascript" async="" src="pay_files/adw.js"></script><script src="pay_files/tm.js" async=""></script><script type="text/javascript" charset="utf-8" async="" src="pay_files/dplus.php"></script><script type="text/javascript">
        var yg_x = new Date();
        var httpUrlOneStats="http://tracker.yiguo.com";
    </script>
    <link rel="shortcut icon" href="">
    <link href="pay_files/public.css" rel="stylesheet" type="text/css">
    <link href="pay_files/yg.css" rel="stylesheet" type="text/css">

    <style type="text/css">
        Label.error {
            color: red;
        }
    </style>
    <link href="pay_files/order.css" rel="stylesheet" type="text/css">
    <link href="pay_files/jquery-ui.css" rel="stylesheet" type="text/css">
    <link href="pay_files/msgbox.css" rel="stylesheet" type="text/css">

    <!-- start Dplus -->
    <script type="text/javascript">!function (a, b) { if (!b.__SV) { var c, d, e, f; window.dplus = b, b._i = [], b.init = function (a, c, d) { function g(a, b) { var c = b.split("."); 2 == c.length && (a = a[c[0]], b = c[1]), a[b] = function () { a.push([b].concat(Array.prototype.slice.call(arguments, 0))) } } var h = b; for ("undefined" != typeof d ? h = b[d] = [] : d = "dplus", h.people = h.people || [], h.toString = function (a) { var b = "dplus"; return "dplus" !== d && (b += "." + d), a || (b += " (stub)"), b }, h.people.toString = function () { return h.toString(1) + ".people (stub)" }, e = "disable track track_links track_forms register unregister get_property identify clear set_config get_config get_distinct_id track_pageview register_once track_with_tag time_event people.set people.unset people.delete_user".split(" "), f = 0; f < e.length; f++) g(h, e[f]); b._i.push([a, c, d]) }, b.__SV = 1.1, c = a.createElement("script"), c.type = "text/javascript", c.charset = "utf-8", c.async = !0, c.src = "//w.cnzz.com/dplus.php?token=1915ef989c5aence66fa", d = a.getElementsByTagName("script")[0], d.parentNode.insertBefore(c, d) } }(document, window.dplus || []), dplus.init("1915ef989c5aence66fa");</script><!-- end Dplus -->
    <script src="pay_files/jquery.js"></script>
    <script src="pay_files/topdsp.js"></script><script type="text/javascript" async="" src="http://configch2.veinteractive.com/tags/CBD65260/4995/49F7/B51A/5963EB93BD47/tag.js"></script>
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
                    <li class="on"><i></i><b class="b2"></b><span>确认订单信息</span></li>
                    <li><i></i><b class="b3"></b><span>成功提交订单</span></li>
                </ul>
            </div>
        </div>
    </div>




    <div class="order">
        <div class="wrap">
            <h2>填写核对订单信息</h2>
            <div class="order-alert">
                <!--收货信息-->
                <div id="order1" class="order-mode complete">
                    <h3><i class="o-i-receive"></i>收货信息</h3>
                    <div class="o-receive">
                        <div>
                            <ul id="receive1">
                                    <li>
                                    <label class="selected">
                                        <select id="userId" name="userAddressId">
                                            <option selected>=请选择=</option>
                                            <c:forEach var="adress" items="${addressList}">
                                                <option value="${adress.addressId}">${adress.receiverName}</option>
                                            </c:forEach>
                                        </select>
                                    </label>
                                    </li>
                            </ul>

                            <a id="receive3" href="" class="link oReceiveClose" style="display:none;">展开其他地址</a>
                            <a data-toggle="modal" href="" data-backdrop="static" class="link" id="theAddress" style="cursor:pointer;"><i></i>使用新地址</a>
                        </div>
                    </div>

                </div>
                <!--配送信息-->
                <div id="order2" class="order-mode complete">
                    <h3><i class="o-i-delivery"></i>配送信息</h3>
                    <div class="o-delivery"><table class="table">
                        <thead>
                          <tr>
                              <th>收货时间</th>
                              <th>运费</th>
                              <th>配送方式</th>
                           </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <span class="selected">${date}</span>
                            </td>
                            <td><span id="serverFreight">10</span>&nbsp;</td>
                            <td>零食在售物流</td>
                        </tr>
                        </tbody>
                    </table>
                    </div>
                </div>
                <!--商品信息-->
                <div id="order5" class="order-mode">
                    <h3>
                        <i class="o-i-commodity"></i>商品信息
                    </h3>
                    <div class="o-commodity">


                        <table class="table">
                            <thead>
                            <tr>
                                <th width="590">商品名称</th>
                                <th>单价</th>
                                <th>数量</th>
                                <th>规格</th>
                                <th>金额小计</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="shopping" items="${shoppingCarList}">
                            <tr>
                                <td><a target="_blank" href="">${shopping.shoppingcartProName}</a>
                                    <p class="gray2">不支持7天无理由退货</p>

                                </td>
                                <td>${shopping.shoppingcartProPrice}</td>
                                <td>${shopping.shoppingcartProNum}</td>
                                <td>${shopping.shoppingcartProSize}</td>
                                <td>￥${shopping.shoppingcartProPrice*shopping.shoppingcartProNum}</td>
                            </tr>
                            </c:forEach>
                        </table>
                        <div class="mt10 clearfix">
                            <div class="fl">补充说明：<input id="txtWebRemark" type="text" placeholder="选填，补填要求"></div>
                            <input type="hidden" id="hascard" value="0">
                            <input type="hidden" id="hasNormalCommodity" value="1">

                        </div>


                    </div>
                </div>


                    </div>
                </div>
                <div id="order7" class="statistic">
                    <p class="right">商品金额：￥<span>${price}</span></p>
                </div>
                <div class="settle-space"></div>
                <div id="order71" class="cart-footer clearfix settle settle-fixed">
                    <div class="wrap">
                        <div class="right">
                            <span class="none">运费：<em>￥</em><em>10.00</em>元</span>
                            <span class="none">商品金额：<em>￥</em><em>${price}</em>元</span>
                            <span class="fs14">应付款：<em>￥</em><em>${totalPrice}</em></span>
                            <a id="btnOrderSubmit" href="orders/notPaid" class="btn" style="background-color: rgb(255, 83, 23);">提交订单</a>
                        </div>
                    </div>
                </div>
                <div id="order72" style="display:none;">
                    <input type="hidden" id="hidCommodities" value="">
                    <input type="hidden" id="hidAllCommodityMoney" value="190.6">
                    <input type="hidden" id="hidFreight" value="0">
                    <input type="hidden" id="hidDepositDeduction" value="0">
                    <input type="hidden" id="hidDiscount" value="0">
                    <input type="hidden" id="hidUB" value="0">
                    <!--优惠金额超过的不管，直接将应付款置0-->
                    <input type="hidden" id="hidUserDiscount" value="0">
                    <input type="hidden" id="hidDiscountCoupon" value="0">
                    <input type="hidden" id="hidCategoryDiscount" value="0">
                    <input type="hidden" id="hidDiscountCashVoucher" value="0">
                    <input type="hidden" id="hidDiscountCard" value="0">
                    <!--作废-->
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade in" id="myModal1" style="display: none;">

    <div class="modal fade in" id="myModal3" style="display:none">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">×</a>
            <h3><i class="i-slctime"></i>零食在售自提服务协议</h3>
        </div>
        <div class="modal-body">
            <p>选择提货方式前，请务必仔细阅读以下条款，并确保在充分理解与认同下述条款的情况下，选择“自提形式”作为提货方式，如有任何疑问或异议请勿选择“自提形式”：</p>
            <h5>1. 提货时间：</h5><p>由于水果生鲜商品的保鲜要求等特殊性，如选择自提形式购买零食在售商品，请务必在所选择提货日期的当日11：00-19:00 到所选择的提货点完成货物自提，未按时提取造成的货物损毁、变质错过最佳赏味期限等责任，由客户自己承担，不属于甲方售后服务范围。</p>
            <h5>2. 提货方式：</h5><p> 如选择自提形式购买零食在售商品，客户凭收货人手机号码及姓名到站点登记完成提货。</p>
            <p>3. 本条未注明的签收、验收以及售后服务规则与其他配送方式一致。</p>
            <a class="btn-save" data-dismiss="modal" href="javascript:;">同意并继续</a>
        </div>
    </div>
    <script id="deliveryTmpl" type="text/x-jquery-tmpl">
    <table class="table">
        <thead>
            <tr>
                <th>收货时间</th>
                <th>运费</th>
                <th>配送方式</th>
                <th>备注</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    <a data-toggle="modal" href="#myModal2" data-backdrop="static" class="selected" id="theDeliveryDate">${DefaultDeliveryDate}</a>
                    <span id="theSelectedDeliveryDate" style="display:none;">${DefaultDateString}</span>
                    <span id="theSelectedPeriod" style="display:none;">${DefaultDeliveryPeriod}</span>
                    <span id="theDeliveryMethod" style="display:none;">${DeliveryMethod}</span>
                </td>
                <td><span id="serverFreight">${Freight}</span>&nbsp;</td>
                <td>${DeliveryMethod}</td>
                <td>${DeliveryMemo}</td>
            </tr>
        </tbody>
    </table>
</script>

    <div class="modal fade in" id="myModal2" style="display: none;">
        <div class="modal-header">
            <a id="theTimecolse" class="close" data-dismiss="modal">×</a>
            <h3><i class="i-slctime"></i>选择收货时间</h3>
        </div>
        <div class="modal-body">
            <table class="table">
                <thead>
                <tr>
                    <th class="left">时间段</th>







                    <th>星期五<br>10-27</th><th>星期六<br>10-28</th><th>星期日<br>10-29</th><th>星期一<br>10-30</th><th>星期二<br>10-31</th><th>星期三<br>11-01</th><th>星期四<br>11-02</th><th>星期五<br>11-03</th></tr>
                </thead>
                <tbody>
                <tr>
                    <td>全天09:00-21:00</td>







                    <td class="selected"><a href="">已选</a><b></b></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td><td><a href="http://trade.yiguo.com/OrderInfo/index###">可选</a></td></tr>
                <tr style="display: none;">
                    <td>上午09:00-12:00</td>
                    <td class="m-td-disabled">—</td>
                    <td><a href="">可选</a></td>
                    <td class="selected"><a href="">可选</a><b></b></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                </tr>
                <tr style="display: none;">
                    <td>下午12:00-18:00</td>
                    <td class="m-td-disabled">—</td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                </tr>
                <tr style="display: none;">
                    <td>晚上18:00-21:00</td>
                    <td class="m-td-disabled">—</td>
                    <td class="m-td-disabled">—</td>
                    <td class="m-td-disabled">—</td>
                    <td class="m-td-disabled">—</td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                    <td><a href="">可选</a></td>
                </tr>
                </tbody>
            </table>

            <p>若由于我方原因未能及时送到，将免除此单运费</p>
            <span class="selectCustomDeliveryTips" style="display:none;margin-top: 20px;line-height: 40px;color: #777;">因生鲜产品特殊性，请您在选定日期的工作时间内到您选择的自提点提货，以免逾期影响商品品质或口感。</span>
        </div>
    </div>

    <script id="paymentTmpl" type="text/x-jquery-tmpl">
    <label>
        <input type="checkbox" id="thePrePay" tagid="79D283C3-9539-48FA-BEE8-8B4D728FB5CF" tagname="预存款余额" style="cursor:pointer;" />使用预存款余额 （您当前的预存款余额：<strong>￥<span>${Deposits}</span></strong>）
    </label>

    <div class="red" id="paypasswordtips">使用预存款支付需绑定手机并设置支付密码，<a class="red underline" href="http://home.yiguo.com/Account/PayPassword" target="_blank">现在去设置</a>。完成设置后请<a class="red underline" onclick="window.location.reload();">刷新</a></div>

    <div class="method">
        支付方式：
        <span id="paymentName"></span>
        <span id="paymentIcon" style="display:none;"><img height="30" src=""></span>
        <span id="paymentId" style="display:none;"></span>
        <a class="edit" style="cursor:pointer;">修改</a>
    </div>
    <div class="o-pay">
        <div class="o-pay-label">
            <label>
                <input type="radio" name="payment" tagid="A4C0B15B-B686-48A4-9684-2CF61FAAA13D" tagname="货到付现金">
                <div class="pay-bank" style="display:none"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/paycash.png"></div>
                <span class="pay-type">货到付现金</span><span>送货上门后在付款，请您准备好现金。</span><b></b>
            </label>
        </div>
        <div class="o-pay-label">
            <label>
                <input type="radio" name="payment" tagid="065A7A0C-B42C-4445-8B80-5686C48E4666" tagname="货到刷卡">
                <div class="pay-bank" style="display:none"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/paycard.png"></div>
                <span class="pay-type">货到刷卡</span><span>支持借记卡，信用卡支付。</span><b></b>
            </label>
        </div>

        
        <div class="o-pay-label" id="803A72C9-0053-4926-9F90-0C1B9EC98FFA" style="display:none;">
            <label>
                <input type="radio" name="payment" tagid="803A72C9-0053-4926-9F90-0C1B9EC98FFA" tagname="关爱通支付">
                <span class="pay-type">关爱通支付</span><span></span><b></b>
            </label>
        </div>
        
        <div class="o-pay-label" id="03EE36AE-D760-4BC6-87B8-BEC5742D4C92" style="display:none;">
            <label>
                <input type="radio" name="payment" tagid="03EE36AE-D760-4BC6-87B8-BEC5742D4C92" tagname="兜礼积分">
                <span class="pay-type">兜礼积分</span><span></span><b></b>
            </label>
        </div>


        <div class="o-pay-label selected">
            <label>
                <input id="theOnlinePay" disabled type="radio" name="" tagid=""  />
                <span class="pay-type">在线支付</span><span>为了保证及时处理您的订单，请下单<span class="orange">3小时</span>内付款</span><b></b>
            </label>
            <div class="o-subpay onlinePaymentList">
                
                <div class="other" style="display:block;">
                    <label><input type="radio" name="payment" tagid="CE6D2CD9-2A5B-467A-96BC-3CE99135D4D0" tagname="支付宝"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/alipay.jpg"><span>支付宝</span></div></label>
                    <label><input type="radio" name="payment" tagid="C74C276F-5D21-4E2A-BCBA-EEFB84442CE8" tagname="在线支付"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankyinlian1.png"><span>快捷支付</span></div></label>
                    
                    
                    <label><input type="radio" name="payment" tagid="A45A2601-FF06-473E-AE6E-2999CDFE6C23" tagname="工商银行"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankicbc.png"></div></label>
                    
                    <label><input type="radio" name="payment" tagid="EE17AD8E-6691-4B3C-8F69-BFFC39F0902E" tagname="农行"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankabc.png"><span>借记卡</span></div></label>
                    <label><input type="radio" name="payment" tagid="1244E387-F6C1-414E-99EF-97E47A6EAA03" tagname="农行信用卡"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankabc.png"><span>信用卡</span></div></label>
                    <label><input type="radio" name="payment" tagid="A49CBA1E-D757-4691-A4C9-D85F62643180" tagname="农行K码"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankabc.png"><span>K码</span></div></label>
                    
                    <label><input type="radio" name="payment" tagid="1DB975DC-092D-407C-A3B9-7BF465DA7F29" tagname="交通银行"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankjiaotong.png"></div></label>
                    <label><input type="radio" name="payment" tagid="7E831893-EB21-4330-80C8-B891E5A5CEBC" tagname="建设银行"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankccb.png"></div></label>
                    
                    <label><input type="radio" name="payment" tagid="8F674F3C-974D-486F-B52E-CBB9E851771F" tagname="浦发银行"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankspdb.png"></div></label>
                    <label><input type="radio" name="payment" tagid="3BB40FCE-60B1-4FB4-8A73-D291BFEE182D" tagname="小浦支付"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/xiaopu.jpg"></div></label>
                    <label><input type="radio" name="payment" tagid="51CE8072-9E5F-41FB-8158-FED80C6E7D3B" tagname="翼支付"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bestpay.jpg"></div></label>
                    <label><input type="radio" name="payment" tagid="8B61B880-1D5E-46E5-96CC-ADC948C28D19" tagname="浦发银行借记卡快捷支付"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankspdb.png"><span>借记卡</span></div></label>
                    <label><input type="radio" name="payment" tagid="1292679C-71C0-4286-A9EF-2B5C80C5B9F5" tagname="交通银行信用卡快捷支付"><div class="pay-bank"><img height="30px" src="http://static01.yiguo.com/cart/images/bank/bankjtkj.png"></div></label>
                </div>
            </div>
        </div>
    </div>
    <label id="lbl100" style="margin-top:5px;cursor:pointer" for="chkIsDisplyPrice">
        <input type="checkbox" id="chkIsDisplyPrice" name="chkIsDisplyPrice" style="vertical-align: middle;">
        <span style="color: #008842;">&nbsp;&nbsp;配送单上不显示价格（仅在非货到付款时有效）</span>
    </label>
</script>

    <script id="commoditiesTmpl2" type="text/x-jquery-tmpl">
    <table class="table">
        <thead>
        <tr>
            <th width="590">商品名称</th>
            <th>单价</th>
            <th>数量</th>
            <th>规格</th>
            <th>金额小计</th>
        </tr>
        </thead>
        <tbody>
        {{each(i,o) obj}}
        <tr>
            <td>${ o.CommodityName}
                <p class="gray2">不支持7天无理由退货</p>
            </td>
                <td>￥${o.Price2}</td>
                <td>${o.num}</td>
                <td>${o.Spec}</td>
                <td>￥${o.Total2}</td>
            </tr>
            {{each}}
        </tbody>
    </table>
    <div class="mt10 clearfix">
        <div class="fl">补充说明：<input id="txtWebRemark" type="text" placeholder="选填，补填要求" /></div>
    </div>
</script>

    <textarea id="commoditiesTmpl" style="display:none;">    &lt;![CDATA[
    &lt;table class="table"&gt;
        &lt;thead&gt;
            &lt;tr&gt;
                &lt;th&gt;商品名称&lt;/th&gt;
                &lt;th&gt;单价&lt;/th&gt;
                &lt;th&gt;数量&lt;/th&gt;
                &lt;th&gt;规格&lt;/th&gt;
                &lt;th&gt;金额小计&lt;/th&gt;
            &lt;/tr&gt;
        &lt;/thead&gt;
        &lt;tbody&gt;
            {#foreach $T as o}
            &lt;tr&gt;
                &lt;td&gt;{$T.o.CommodityName}
                    &lt;p class="gray2"&gt;不支持7天无理由退货&lt;/p&gt;
                &lt;/td&gt;
                &lt;td&gt;￥{$T.o.Price}&lt;/td&gt;
                &lt;td&gt;{$T.o.num}&lt;/td&gt;
                &lt;td&gt;{$T.o.Spec}&lt;/td&gt;
                &lt;td&gt;￥{$T.o.total}&lt;/td&gt;
            &lt;/tr&gt;
            {#/for}
        &lt;/tbody&gt;
    &lt;/table&gt;
    &lt;div class="mt10 clearfix"&gt;
        &lt;div class="fl"&gt;补充说明：&lt;input id="txtWebRemark" type="text" placeholder="选填，补填要求" /&gt;&lt;/div&gt;
    &lt;/div&gt;
    ]]&gt;
</textarea>

    <div class="popout yucunkuan">
        <div class="popout-wrap">
            <div class="popout-con">
                <div class="con center">
                    <p class="mt30">为了您的账户安全，使用预存款需输入支付密码。<br>您尚未设置支付密码，请先设置支付密码再进行支付。</p>
                    <p class="btns">
                        <a class="btn-white changepayment" href="javascript:;">更换支付方式</a>
                        <a class="btn-green" href="http://home.yiguo.com/Account/PayPassword" target="_blank">立即设置</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="popout-bg" style="display: block;"></div>
    </div>
    <div class="popout peypopout" style="display: none;">
        <div class="popout-wrap">
            <div class="popout-con">
                <a class="close">×</a>
                <div class="con">
                    <p class="textleft"><strong>请输入预存款支付密码</strong></p>
                    <div class="o-prepaybox">
                        <div class="password"><span class="input"><input type="password" name="paypassword" placeholder="请输入支付密码" id="paypassword"></span></div>
                        <p class="red mt15 textleft" style="display: none;">您输入的支付密码码有误，还可输入0次</p>
                        <p class="red mt15 textleft" style="display: none;"><font>您输入错误的支付密码已达5次</font></p>
                        <p class="mt15 textleft">忘记密码了？您可以<a class="underline" href="http://home.yiguo.com/Account/PayPassword" target="_blank">重置密码</a>或<a class="underline changepayment">更改支付方式</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="popout-bg" style="display: block;"></div>
    </div>
    <!--定时达-->
    <div class="fade mask" id="myModal4" style="display:none">
        <div class="modal-header">
            <a class="close" data-dismiss="modal">×</a>
            <p class="txt1">您的等级为普通用户，不可享定时达服务</p>
            <i class="head-icon"><img src="pay_files/silver.png" alt=""></i>
        </div>
        <div class="modal-body">
            <p class="txt1">什么是定时达？</p>
            <p class="txt3">定时达是零食在售针对金卡及以上等级会员推出的专享特权服务，用户可以选择具体配送当日的具体时间段。</p>
            <p class="txt2"><i class="dian"></i>目前支持此服务的配送城市为：上海、杭州、宁波、苏州、南京、无锡、昆山（部分区域不支持）</p>
            <p class="txt2"><i class="dian"></i>可选配送时段：上午：9:00~12：00 下午：12:00~18:00 晚上：18:00~21:00  全天配送：9:00~21:00</p>
            <p class="txt2"><i class="dian"></i>此服务仅支持自配商品（不含限时配送商品）。</p>
        </div>
    </div>
    <div class="fade mask" id="myModal5" style="display:none">
        <div class="modal-header modal-header1 ">
            <a class="close" data-dismiss="modal">×</a>
            <p class="txt1">您的等级为普通用户,可享定时达服务</p>
            <i class="head-icon"><img src="pay_files/gold.png" alt=""></i>
        </div>
        <div class="modal-body">
            <p class="txt1">什么是定时达？</p>
            <p class="txt3">定时达是零食在售针对金卡及以上等级会员推出的专享特权服务，用户可以选择具体配送当日的具体时间段。</p>
            <p class="txt2"><i class="dian"></i>目前支持此服务的配送城市为：上海、杭州、宁波、苏州、南京、无锡、昆山（部分区域不支持）</p>
            <p class="txt2"><i class="dian"></i>可选配送时段：上午：9:00~12：00 下午：12:00~18:00 晚上：18:00~21:00  全天配送：9:00~21:00</p>
            <p class="txt2"><i class="dian"></i>此服务仅支持自配商品（不含限时配送商品）。</p>
        </div>
    </div>






<div class="footer">
    <div class="wrap">
        <dl class="col1">
            <dt>新手指南</dt>
            <dd>
                <p><a href="">账户注册</a></p>
                <p><a href="">购物流程</a></p>
                <p><a href="">订购方式</a></p>
                <p><a href="">悠币说明</a></p>
                <p><a href="">会员等级<i class="ml5" style="display: none;"><img src="address_files/icon-new.png"></i></a></p>

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
            <p>版权所有<a href="http://www.yiguo.com/">上海零食在售电子商务有限公司</a>  2005-2017 Copyright @ 2005-2017 _www.yiguo.com, All rights reserved 沪ICP备09008015号<br><br></p>
            <p class="authentication">
                <a href="" target="_blank" rel="nofollow"><img src="address_files/153685368061665897_121x29.png" style="height:29px;"></a>
                <a href="" target="_blank"><img src="address_files/footer_copy.gif" width="47px" height="47px"></a>
                <a href="">
                    <img src="address_files/picp_bg.png" alt="»¦¹«θ±¸" border="0">
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
    <script src="pay_files/jquery-1.7.2-min.js"></script>
    <script src="pay_files/common.js"></script>
    <script src="pay_files/stats.js"></script>

</div><script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script><iframe src="pay_files/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe>
<!--IE6png兼容-->
<!--[if IE 6]>
<script src="http://static01.yiguo.com/cart/js/DD_belatedPNG.js"></script>
<script src="http://static01.yiguo.com/cart/js/IE6png.js"></script>
<![endif]-->

<script type="text/javascript" src="pay_files/open-shut.js"></script>
<script type="text/javascript" src="pay_files/tab.js"></script>
<script type="text/javascript" src="pay_files/modal.js"></script>
<script type="text/javascript" src="pay_files/util.js"></script>
<script type="text/javascript" src="pay_files/order.js"></script>
<script type="text/javascript" src="pay_files/msgbox.js"></script>
<script type="text/javascript" src="pay_files/jquery.tmpl.js"></script>
<script type="text/javascript" src="pay_files/jquery.jTemplates.js"></script>
<script type="text/javascript" src="pay_files/orderCity.js"></script>
<script type="text/javascript" src="pay_files/orderProcess.js"></script>
<script type="text/javascript" src="pay_files/cpsOrder.js"></script>
<script type="text/javascript" src="pay_files/orderController.js"></script>


<script>
    var pageTag = "orderinfo";
    var uniqueRate = "65699785-b5dc-4102-8095-463b35d6e2d5";
    //适应分辨率
    var screenWidth = window.screen.width;
    if (screenWidth < 1300) {
        document.write()
        $('.w').addClass('w1280');
    }
    //结算样式浮动
    $(window)
        .scroll(function () {
            var spaceTop = $('.settle-space').offset().top,
                scrollTop = $(window).scrollTop(),
                windowHeight = $(window).height(),
                elementTop = spaceTop - windowHeight;
            if (elementTop < scrollTop) {
                $('.settle').removeClass('settle-fixed');
            } else {
                $('.settle').addClass('settle-fixed');
            }
        });
</script>

<script type="text/javascript">
    $(document)
        .ready(function () {
            G.app.orderController.init();
        });
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
<script src="pay_files/o_code.js"></script>


<div class="popout Dailog-poput" style="z-index:999999999;display:none;"><div class="popout-wrap">                            <div class="popout-con">            	                <div class="title"><i></i>提 示</div>            	                <div class="con">            		                <p style="text-align: center; font-size: 14px; padding-top: 15px;"></p>                                    <div class="btnbox" style="margin-top: 45px;"><a class="confirm" href="javascript:">确定</a></div>            	                </div>                            </div>                        </div>                        <div class="popout-bg">&nbsp;</div></div></body></html>