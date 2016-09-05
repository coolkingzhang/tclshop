<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        <title>关于TCL</title>

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
                <nav class="about_nav ">
                    <ul class="about_nav_s1 y_w92 fs24 bor-bott rj_nav">
                        <li class="active liw192">
                            <a href="${pageContext.request.contextPath}/companyInfo/index">公司介绍</a>
                        </li>
                        <li class="liw192">
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoArch">公司架构</a>
                        </li>
                        <li class="liw192">
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoRDev">技术研发</a>
                        </li>
                    </ul>
                    <div class="swiper-container">
                        <ul class="about_nav_s2 fs22 swiper-wrapper cls_flex rj_nav">
                            <li class="swiper-slide active" data-type="1">
                                <a href="javascript:void(0);">董事长致辞</a>
                            </li>
                            <li class="swiper-slide" data-type="0">
                                <a href="javascript:void(0);">TCL简介</a>
                            </li>
                            <li class="swiper-slide" data-type="3">
                                <a href="javascript:void(0);">发展历程</a>
                            </li>
                            <li class="swiper-slide">
                                <a href="javascript:void(0);">企业理念</a>
                            </li>
                            <li class="swiper-slide" data-type="18">
                                <a href="javascript:void(0);">公司荣誉</a>
                            </li>
                        </ul>
                    </div>

                </nav>
            </header>
            <div class="y_w92 bor-bott"></div>

            <div class="layout">
                <article>
                    <div class="dtc_content fs24 rj_updataPage">
                        <ul class="img_list">
                            <li>
                                <a href="javascript:void(0);">
                                    <img src="${speech.pic}" alt=""/>
                                </a>
                            </li>
                        </ul>

                        ${speech.content}

                    </div>

                    <%-- <div class="rj_more">
                        <a class="get_more fs22" href=" javascript:void(0);">
                            查看更多<span class="icf">&#xe608;</span>
                        </a>
                    </div> --%>
                </article>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>

    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mPaginator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
    <script type="text/javascript">
        mobe.init();
        mobe.aboutTCL({url: "${pageContext.request.contextPath }/companyInfo/reloadContentData"});
        mobe.rmlc();
    </script>
</html>
