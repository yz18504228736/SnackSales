<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0117)https://login.yiguo.com/ub/login.aspx?Url=http%3a%2f%2fhome.yiguo.com%3a80%2fTrade%2fOrderList%3fRndNumber%3d94939%26 -->
<html>
<head>
    <base href="<%=request.getContextPath()%>/">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>零食在售网</title>
    <link rel="shortcut icon" href="">
    <script type="text/javascript" async="" src="login_files/collect.js.下载"></script><script type="text/javascript" async="" src="login_files/dc.js.下载"></script><script type="text/javascript" async="" src="login_files/vds.js.下载"></script><script type="text/javascript" async="" src="login_files/adw.js.下载"></script><script src="login_files/tm.js.下载" async=""></script><script src="login_files/jquery.js.下载"></script>

    <link href="login_files/public.css" rel="stylesheet">


    <link href="login_files/login.css" rel="stylesheet" type="text/css">

    <link href="login_files/themes.css" rel="stylesheet">

    <script src="login_files/tab.js.下载"></script>

    <script src="login_files/FormValidate.js.下载"></script>

    <script type="text/javascript">
        $(function () {
            //手机零食在售
            $('.mobile .mobile-tit').wrap('<div class="mobile-tit-w"></div>');
            $('.mobile').hover(function () {
                $(this).addClass('mobile-hover');
            }, function () {
                $(this).removeClass('mobile-hover');
            });

            Form.VC = '有无效字符，请重新输入'
        });
    </script>

    <!--IE6png兼容-->
    <!--[if IE 6]>
    <script src="/Content/DD_belatedPNG.js"></script>
    <script src="/Content/IE6png.js"></script>
    <![endif]-->
    <script src="login_files/topdsp.js.下载"></script><script type="text/javascript" async="" src="js/tag.js"></script>
</head>


<body id="body">
<!------- 顶部工具栏开始 ------->
<div class="w">

    <!------- 顶部工具栏结束 ------->
    <div class="header clearfix">
        <div class="wrap">
            <div class="logo">
                <a href="" target="_blank"></a>
                <span class="h-tit">登录</span>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(function () {
            $('#Pwd').keydown(function (e) {

                if (e.keyCode == 13) {
                    document.getElementById("btnLogin").click(); //调用登录按钮的登录事件
                }
            });

            $("#btnLogin").click(function () {
                if (Form.Validate($("#UserName").val())) {
                    $("#msg-wrap").addClass("msg-wrap").children("div").addClass("msg-error").html(Form.VC);
                    return false;
                }

                $('form').submit();
            });

            $(".gray").click(function () {
                $("#imgcode").attr("src", "/verifycode" + "?_t=" + new Date().getTime());
            });

            $("#p-code-btn").on("click", ".qq,.sina", function () {
                $("#p-code").show();
            })
            $("#p-code").on("click", ".close", function () {
                $("#p-code").hide();
            })

        });

    </script>

    <form action="user/login" method="post">    <div class="login">
        <div class="wrap clearfix">
            <div class="fl"><a href="" target="_blank"><img width="666" height="418" src="login_files/9288707397067429.jpg"></a></div>
            <div class="fr">
                <p class="right"></p>
                <div class="login-main">
                    <p><strong>欢迎登录</strong><span>还没有账号？<a class="green" href="user/doRegister">立即注册</a></span></p>

                    <div id="msg-wrap"><div> </div></div>

                    <p>
                        <span class="input-phone-icon">&nbsp;</span><input class="input input-phone" id="userName" name="userTel" placeholder="邮箱/账号/已验证手机" type="text" value="">
                    </p>
                    <p><span class="input-key-icon">&nbsp;</span><input class="input input-key" id="Pwd" name="userPwd" placeholder="密码" type="password"></p>
                    <p><label><input data-val="true" data-val-required="自动登录 字段是必需的。" id="UserNameRemeber" name="UserNameRemeber" type="checkbox" value="true"><input name="UserNameRemeber" type="hidden" value="false"> 自动登录</label><span> <a class="gray" href="https://login.yiguo.com/FindPwd">忘记登录密码？</a>   </span></p>
                    <p><button id="btnLogin" type="submit" class="btn-green-l">登 &nbsp; 录</button></p>
             </div>
            </div>
        </div>
    </div>
    </form>

    <!------- 页尾开始 ------->
    <div class="footer">
        <div class="wrap">
            <dl class="col1">
                <dt>新手指南</dt>
                <dd>
                    <p><a href="">账户注册</a></p>
                    <p><a href="">购物流程</a></p>
                    <p><a href="">订购方式</a></p>
                    <p><a href="">会员等级</a></p>

                </dd>
            </dl>
            <dl class="col2">
                <dt>付款方式</dt>
                <dd>
                    <p><a href="">支付方式</a>/<a href="http://www.yiguo.com/help/invoiceremark.html">发票说明</a></p>
                    <p><a href="">充值说明</a>/<a href="http://www.yiguo.com/help/usechuzhika.html">储值卡说明</a></p>
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
                <p>沪ICP备09008015号 Copyright © 2005-2017 <a href="http://www.yiguo.com/">上海零食在售电子商务有限公司</a>版权所有</p>
                <p class="authentication">
                    <a href="http://www.yiguo.com/legal" target="_blank" rel="nofollow"><img src="login_files/153685368061665897_121x29.png" style="height:29px;"></a>
                    <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110512114405424" target="_blank"><img src="login_files/footer_copy.gif" width="47px" height="47px"></a>
                    <a href="https://180.169.127.46:9090/?sn=310100102001">
                        <img src="login_files/picp_bg.png" alt="»¦¹«θ±¸" border="0">
                        <span>310100102001</span>
                    </a>
                </p>
            </div>
        </div>
    </div>
    <!------- 页尾结束 ------->

</div>
<script src="login_files/o_code.js.下载"></script>


<script type="text/javascript">
    $(document).ready(function () {
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
    });
</script>


<script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '62b87db', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script><iframe src="login_files/_adw.html" id="emar_box_pv" style="width: 1px; border: 0px; position: absolute; left: -100px; top: -100px; height: 1px;"></iframe></body></html>