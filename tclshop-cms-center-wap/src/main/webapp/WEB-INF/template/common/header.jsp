<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<script>
    //	监测代码 start
    try {
        !(function (a, b, c, d, e, f) {
            var g = "",
                h = a.sessionStorage,
                i = "__admaster_ta_param__",
                j = "tmDataLayer" !== d
                    ? "&dl=" + d
                    : "";
            if (a[f] = {}, a[d] = a[d] || [], a[d].push({
                startTime :+ new Date,
                event: "tm.js"
            }), h) {
                var k = a.location.search,
                    l = new RegExp("[?&]" + i + "=(.*?)(&|#|$)").exec(k) || [];
                l[1] && h.setItem(i, l[1]),
                l = h.getItem(i),
                l && (g = "&p=" + l + "&t=" + + new Date)
            }
            var m = b.createElement(c),
                n = b.getElementsByTagName(c)[0];
            m.src = "//tag.cdnmaster.com/tmjs/tm.js?id=" + e + j + g,
            m.async = !0,
            n.parentNode.insertBefore(m, n)
        })(window, document, "script", "tmDataLayer", "TM-I92QS0", "admaster_tm");
    } catch (e) {
        console.log(e);
    }
    // 监测代码  end
</script>
<!-- 百度统计 -->
<!-- <script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?f58b3eb7bcf42dabbbfc2d85c7b1f5f2";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script> -->
<!-- Top html start -->
<header class="header bor-bott">
    <a href="http://m.tcl.com">
        <img class="fl logo" src="http://m.tcl.com/static/kuyu/common/img/logo.png"/>
    </a>
    <div class="fr w80">
        <a href="javascript:void(0)">
            <div class="nav">&#xe633;</div>
        </a>
        <a href="javascript:window.location.href='http://m.tcl.com/cart/cartshowKuyu';">
            <div class="cart">&#xe600;</div>
        </a>
        <a href="javascript:goSearch();">
            <div class="search">&#xe62e;</div>
        </a>
        <script>
            function goSearch() {
                var url = window.location.href;
                var base = url.split('?');
                var baseurl = base[0];
                var goSearchUrl;
                var searchUrl;
                var port = 8888;
                if (port != 80) {
                    goSearchUrl = "http://m.tcl.com/front/productList/toSearchKuyu";
                    searchUrl = "http://m.tcl.com/front/productList/searchProductKuyu";
                } else {
                    goSearchUrl = "http://10.68.212.147/front/productList/toSearchKuyu";
                    searchUrl = "http://10.68.212.147/front/productList/searchProductKuyu";
                }
                if (searchUrl != baseurl && goSearchUrl != baseurl) {
                    window.location.href = goSearchUrl + "?backurl=" + url;
                } else {
                    window.location.href = goSearchUrl + "?" + base[1];
                }

            }
            function backtopage() {
                var url = window.location.href;
                window.location.href = "http://m.tcl.com/front/productList/toSearchKuyu?backurl=" + url;
            }
        </script>
    </div>
</header>
<div id="headermenu" class="headermenu">
    <div class="header">
        <div class="img-c">
            <a href="http://m.tcl.com"><img class="fl logo" src="http://m.tcl.com/static/kuyu/common/img/logo.png"/></a>
        </div>
        <div id="closemenu" class="close">&#xe60f;</div>
        <div class="navmenu">
            <ul>
                <li class="bor-bott" style="cursor:pointer;" onclick="window.location.href='http://m.tcl.com/tclcustomer/toCustomerIndex';">
                    <span class="navicon fl">&#xe627;</span>
                    <span class="txt fl">个人中心</span>
                </li>
                <li class="bor-bott y_slidenav">
                    <span class="navicon fl">&#xe633;</span>
                    <span class="txt fl">产品分类</span>
                    <span class="arraw fr">&#xe608;</span>
                </li>
                <li class="zhidden">
                    <ul class="sub">
                        <li>
                            <a href="http://m.tcl.com/frontback/platDfFront/toChannelKuyu/100b389129474b29966fbcbcae80bbca">
                                <span class="navicon fl">&#xe610;</span>
                                <span class="txt fl">电视</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://m.tcl.com/frontback/platDfFront/toChannelKuyu/e6a8905919754222901f97193ec2fd9a">
                                <span class="navicon fl">&#xe620;</span>
                                <span class="txt fl">手机</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://m.tcl.com/frontback/platDfFront/toChannelKuyu/d1e7f190c7a24af5847a362f0c7e1903">
                                <span class="navicon fl">&#xe61e;</span>
                                <span class="txt fl">空调</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://m.tcl.com/frontback/platDfFront/toChannelKuyu/33926b5759eb4daab650c713fe2227fb">
                                <span class="navicon fl">&#xe616;</span>
                                <span class="txt fl">冰箱</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://m.tcl.com/frontback/platDfFront/toChannelKuyu/84b404ef5b73405a8a1940f4d6222e1c">
                                <span class="navicon fl">&#xe621;</span>
                                <span class="txt fl">洗衣机</span>
                            </a>
                        </li>
                        <li>
                            <a href="http://m.tcl.com/frontback/platDfFront/toChannelKuyu/28866f5e0825457e91b3301ea54c103f">
                                <span class="navicon fl">&#xe637;</span>
                                <span class="txt fl">健康电器</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="bor-bott">
                    <a href="http://ym.tcl.com/services/pid" target="_blank">
                        <span class="navicon fl">&#xe60a;</span>
                        <span class="txt fl">服务</span>
                    </a>
                </li>

                <li class="bor-bott">
                    <a href="http://fans.tcl.com" target="_blank">
                        <span class="navicon fl">&#xe618;</span>
                        <span class="txt fl">铁粉社区</span>
                    </a>
                </li>
                <li class="bor-bott">
                    <a href="http://m.tcl.com/tcldealer/dealer/toLogin">
                        <span class="navicon fl">&#xe617;</span>
                        <span class="txt fl">经销商之家</span>
                    </a>
                </li>
                <li class="bor-bott">
                    <a href="http://hy.tcl.com">
                        <span class="navicon fl">&#xe654;</span>
                        <span class="txt fl">积分兑换</span>
                    </a>
                </li>
                <li class="bor-bott" onclick="backtopage()">
                    <span class="navicon fl">&#xe62e;</span>
                    <span class="txt fl">搜索</span>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 判断是否已经登录，同步登录用于判断 -->
<input type="hidden" name="userloginname" id="userloginname" value=""/>
<input type="hidden" name="isRefresh" id="isRefresh" value="null"/>
<!--右侧返回顶部、在线客服-->
<nav class="y_rightnav">
    <a href="http://p.qiao.baidu.com//im/index?siteid=9306409&ucid=6393691" class="y_item" id="main_server">&#xe649;</a>
    <a href="#" class="y_item y_totop">
        <span>&#xe639;</span>
    </a>
</nav>
<!--右侧返回顶部、在线客服 end-->

<script type="text/javascript" src="http://m.tcl.com/static/kuyu/common/js/core/sso.min.js"></script>
<!-- 同步登录 -->
<script>
    $(function () {
        function ssoOK(data) { //登录成功
            if (null != data) {
                if ("1" == data.status) { //验证成功
                    var userloginname = $('#userloginname').val();
                    if (!userloginname.length > 0) {
                        window.location.reload();
                    }

                }
            }

        }

        //同步登录
        if ($("#isRefresh").val() == "null") {
            $(window).bind("load", function (e) {
                sso.init({
                    clientId: "14046695",
                    jsonpURL: "http://logintest.tclclouds.com/account/verifyUsernameToken",
                    localValidateUrl: "http://m.tcl.com/tclcustomer/syncLogin",
                    callbacks: {
                        ssoOK: ssoOK
                    }
                });
            });
        }

    });
</script>

<!-- 检测代码 -->
<script type="text/javascript">
    var _py = _py || [];
    _py.push(['a', 'PJs.6W.U26VcyIJ5Ykyuq0gqgCrM_']);
    _py.push(['domain', 'stats.ipinyou.com']);
    _py.push(['e', '']);
    -function (d) {
        var s = d.createElement('script'),
            e = d.body.getElementsByTagName('script')[0];
        e.parentNode.insertBefore(s, e),
        f = 'https:' == location.protocol;
        s.src = (f
            ? 'https'
            : 'http') + '://' + (f
            ? 'fm.ipinyou.com'
            : 'fm.p0y.cn') + '/j/adv.js';
    }(document);
</script>
<noscript><img src="//stats.ipinyou.com/adv.gif?a=PJs.6W.U26VcyIJ5Ykyuq0gqgCrM_&e=" style="display:none;"/></noscript>
<!-- 检测代码 end -->
