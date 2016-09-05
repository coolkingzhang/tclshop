<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="format-detection" content="telephone=no"/>
        <meta name="renderer" content="webkit"/>
        <title>新闻中心</title>

        <!-- independent -->
        <link rel="stylesheet" href="../static/common/css/style.css"/>
        <link rel="stylesheet" href="../static/common/css/home.css"/>

        <!-- common static start -->
        <%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
        <!-- common static end -->
    </head>

    <body>
        <!-- common header start -->
        <%@ include file="/WEB-INF/template/common/header.jsp" %>
        <!-- common header end -->

        <div id="main" class="main">
            <header>
                <nav class="about_nav">
                    <div class="rct_banner_list swiper-container-banne">
                        <ul class="swiper-wrapper"></ul>
                        <div class="swiper-pagination"></div>
                    </div>
                    <div class="swiper-container y_w92 bor-bott">
                        <ul class="about_nav_s1 news_nav fs24 swiper-wrapper cls_flex rj_nav">
                            <c:forEach items="${typeAndNews.data.title }" var="newType">
                                <c:if test="${newType.key != 7}">
                                    <!-- 屏蔽掉新媒体 -->
                                    <li class="swiper-slide" data-type="${newType.value.id}" data-maxPage="${newType.value.pic }">
                                        <a href="javascript:void(0);">${newType.value.name }</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                </nav>
            </header>
            <div class="layout">
                <div class="pictext_list bor-bott rps_bility rj_updataPage">
                    <c:forEach items="${typeAndNews.data.news }" var="news">
                        <a class="setblock" href="${pageContext.request.contextPath }/news/newsDetails?id=${news.id}">
                            <dl class="pictext_cell y_w92 bor-bott">
                                <dd class="pictext_cell_left">
                                    <img src="${news.pic }" alt="" width="100%" height="100%"/>
                                </dd>
                                <dd class="pictext_cell_right fs28 color_333">
                                    <p class="pictext_title">${news.title }</p>
                                    <p class="abreast fs20">
                                        <span class="abreast_text">
                                            <jsp:setProperty name="dateValue" property="time" value="${news.issueTime * 1000}"/>
                                            <fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd"/>
                                        </span>
                                        ${typeAndNews.data.typeNeme }
                                    </p>
                                </dd>
                            </dl>
                        </a>
                    </c:forEach>

                </div>
                <div class="rj_more">
                    <a class="get_more fs22 bor-bott" href=" javascript:void(0);">
                        查看更多<span class="icf">&#xe608;</span>
                    </a>
                </div>
            </div>

            <!-- footer start -->
            <!-- 引入公共尾部-->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- footer end -->

        </div>

    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mPaginator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
    <script type="text/javascript">
        mobe.init();
        mobe.news({url: "${pageContext.request.contextPath }/news/newsList"});
        mobe.banneSwipe({url: "${pageContext.request.contextPath }/news/newsbanne"});
        mobe.rmlc();
    </script>

</html>
