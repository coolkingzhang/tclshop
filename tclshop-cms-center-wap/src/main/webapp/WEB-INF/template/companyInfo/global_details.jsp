<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>
                <c:if test="${result[0].type eq 3 }">发展历程详情</c:if>
                <c:if test="${result[0].type eq 1 }">董事长致辞</c:if>
                <c:if test="${result[0].type eq 7 }">管理团队</c:if>
            </title>
            <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css"/>
            <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css"/>
        </head>

        <body>
            <div class="header head-channel">
                <div class="nav channel-nav">
                    <div class="nav-bar">
                        <div class="hea-box">
                            <a href="index.html"><img src="${pageContext.request.contextPath }/static/img/logo.png"/></a>
                        </div>
                        <div class="hea-box hot"></div>
                        <div class="fr">
                            <div class="nav-r fl">
                                <span class="sear">&#xe632;</span>
                                <span class="shoping">&#xe639;</span>
                                <span class="admin">&#xe638;</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:choose>
                <c:when test="${result[0].type eq 1 }">
                    <div class="crumbs">
                        <div class="main">
                            <a href="http://www.tcl.com">首页</a>
                            &gt;&gt;
                            <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a>
                            &gt;&gt;
                            <a href="#">董事长致辞</a>
                        </div>
                    </div>
                    <div class="about_content">
                        <h4 class="maintitle">${result[0].title }</h4>
                        <p class="dsz_speech">
                            <span class="img">
                                <img src="${pageContext.request.contextPath }/static/img/lds.jpg" alt="公司展示图片"></span>
                                ${result[0].content }
                            </p>
                            <div class="about_speech">
                                <div class="speech_left">
                                    <a href="http://weibo.com/lidongsheng?topnav=1&wvr=5&topsug=1&is_all=1" target="_blank" class="weibo">
                                        <img src="${pageContext.request.contextPath }/static/img/weibo.png" width="48" height="38"></a>
                                        <a href="http://weibo.com/lidongsheng?topnav=1&wvr=5&topsug=1&is_all=1" target="_blank" class="attentio">添加关注李东生微博</a>
                                    </div>
                                    <div class="speech_right">
                                        <img src="${pageContext.request.contextPath }/static/img/ceo_name.jpg" width="160" height="60">TCL集团股份有限公司董事长兼CEO
                                        </div>
                                    </div>
                                </div>
                            </c:when>

                            <c:when test="${result[0].type eq 3 }">
                                <div class="crumbs">
                                    <div class="main">
                                        <a href="http://www.tcl.com">首页</a>
                                        &gt;&gt;
                                        <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a>
                                        &gt;&gt;
                                        <a href="${pageContext.request.contextPath }/companyInfo/companyInfoCourseList?type=3&name=${result[0].name}">发展历程</a>&gt;&gt;
                                        <a href="#">发展历程详情</a>
                                    </div>
                                </div>
                                <div class="details_01">
                                    <span class="title">2014年</span>
                                    <ul>
                                        <li>
                                            <span class="deta">2月</span>
                                            <span class="des"></span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="about_content">
                                    <dl class="mg_team">
                                        <dd>
                                            <img src="${result[0].pic }"></dd>
                                            <dt>
                                                <p class="name">${result[0].name }</p>
                                                <p class="introduce">${result[0].description }</p>
                                            </dt>
                                        </dl>
                                        ${result[0].content }
                                        <ul class="skill">
                                            <li></li>
                                        </ul>
                                    </div>
                                </c:when>

                                <c:when test="${result[0].type eq 7 }">
                                    <div class="crumbs">
                                        <div class="main">
                                            <a href="http://www.tcl.com">首页</a>
                                            &gt;&gt;
                                            <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a>
                                            &gt;&gt;
                                            <a href="#">管理团队</a>
                                        </div>
                                    </div>
                                    <div class="about_content">
                                        <dl class="mg_team">
                                            <dd>
                                                <img src="${result[0].pic }"></dd>
                                                <dt>
                                                    <p class="name">${result[0].name }</p>
                                                    <p class="introduce">${result[0].description }</p>
                                                </dt>
                                            </dl>
                                            ${result[0].content }
                                            <ul class="skill">
                                                <li></li>
                                            </ul>
                                        </div>
                                    </c:when>
                                </c:choose>

                                <div id="footerContainer"></div>
                                <!-- Right slide bar html end -->
                                <!-- go to top html -->
                                <div class="goTop">
                                    <div class="item">&#xe624;</div>
                                    <div class="item">&#xe60c;</div>
                                    <div class="item">&#xe616;
                                        <div class=""></div>
                                    </div>
                                    <div class="item">&#xe610;</div>
                                    <div class="item">&#xe61f;</div>
                                    <a href="#">&#xe639;</a>
                                </div>
                                <!-- go to top html -->
                                <!-- <script type="text/javascript" src="/static/js/core/jquery-1.9.1.min.js"></script>
                                <script type="text/javascript" src="/static/js/core/jquery.flexslider-min.js"></script>
                                <script type="text/javascript" src="/static/js/core/index.js"></script>
                                <script type="text/javascript" src="/static/js/core/Plugin.js"></script>
                                <script type="text/javascript">
                                    plugin.init();
                                </script> -->
                                <script id="currentPage" data-targetpage="chairman_speech" src="/static/js/lib/require.min.js" data-main="/static/js/main.js"></script>

                            </body>
                        </html>
