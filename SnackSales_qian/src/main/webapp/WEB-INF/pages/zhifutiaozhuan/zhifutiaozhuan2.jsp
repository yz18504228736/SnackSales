<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>零食在售_支付中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="Keywords" content="水果，进口水果，国产水果，零食在售网" />
    <meta name="Description" content="零食在售网是全国最大的专业精品水果网之一，从事高品质水果及健康食品销售，提供各类进口水果，国产水果，以专业便捷的配送服务让零食在售迅速布遍全国各地，使您第一时间品尝到最优质最新鲜的水果。电话：400-820-8251,800-820-8251" />
    <link rel="shortcut icon" href="http://static01.yiguo.com/utaste/images/yiguo.ico" />
    <link href="http://static01.yiguo.com/cart/css/public.css" rel="stylesheet" type="text/css">
    <link href="http://static01.yiguo.com/cart/css/yg.css" rel="stylesheet" type="text/css">
    <link href="http://static01.yiguo.com/cart/css/PickUpCard.css" rel="stylesheet" type="text/css">

    <script>
        yg_x = new Date();
    </script>

    <script src="http://static01.yiguo.com/common/topdsp.js"></script>
</head>
<body id="body">
<div class="w">
    <!------- 头部 ------->
    <div class="header clearfix">
        <div class="wrap">
            <div class="logo">
                <a href=""></a>
            </div>
            <div class="steps">
                <ul>
                    <li class="on"><b class="b1"></b><span>我的购物车</span></li>
                    <li class="on"><i></i><b class="b2"></b><span>确认支付</span></li>
                    <li><i></i><b class="b3"></b><span>等待配送</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wrap">
        <div class="content">
            <form id="payform" action="/OrderSuccess/BankRoute">
                <div class="main PickUpCard ConfirmPay w1200">
                </div>
            </form>
        </div>


    </div>
    <div class="popout yucunkuan">
        <div class="popout-wrap">
            <div class="popout-con">
                <div class="con center">
                    <p class="mt30">为了您的账户安全，使用预存款需输入支付密码。<br>您尚未设置支付密码，请先设置支付密码再进行支付。</p>
                    <p class="btns">
                        <a class="btn-white changepayment" href="javascript:;">更换支付方式</a>
                        <a class="btn-green" href="" target="_blank">立即设置</a>
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
    <script type="text/javascript">
        window.__zp_tag_params = {
            pagetype: "orderInfo",
            p_zp_conversion: "44bd7ec47d4bce3abf242c2731ff6f0d",
            p_zp_convinfo: "0,"
        };
    </script>


    <div class="footer">
        <div class="wrap">
            <dl class="col1">
                <dt>新手指南</dt>
                <dd>
                    <p><a href="">账户注册</a></p>
                    <p><a href="">购物流程</a></p>
                    <p><a href="">订购方式</a></p>
                    <p><a href="">悠币说明</a></p>
                    <p><a href="">会员等级<i class="ml5"><img src="http://img06.yiguoimg.com/e/web/170315/00941/154425/icon-new.png"></i></a></p>

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
                <p>沪ICP备09008015号 Copyright © 2005-2017 <a href="http://www.yiguo.com/">上海零食在售电子商务有限公司</a>版权所有</p>
                <p class="authentication">
                    <a href="" target="_blank" rel="nofollow"><img src="http://img09.yiguoimg.com/e/albums/2017/170309/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="" target="_blank"><img src="http://img03.yiguo.com/images/footer_copy.gif" width="47px" height="47px"></a>
                    <a href="https://180.169.127.46:9090/?sn=310100102001">
                        <img src="http://img02.yiguo.com/e/web/150623/00841/170532/picp_bg.png" height="47" alt="»¦¹«θ±¸" border="0">
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
    <script src="http://static01.yiguo.com/control/jquery-1.7.2-min.js"></script>
    <script src="http://static01.yiguo.com/common/common.js?v20151204"></script>
    <script src="http://static01.yiguo.com/common/stats.js?v20151204"></script>

</div>
<script src="http://static01.yiguo.com/control/jquery-1.7.2-min.js"></script>
<script src="http://static01.yiguo.com/common/util.js"></script>
<script src="http://static01.yiguo.com/cart/js/ordersuccess.js"></script>





</body>
</html>
