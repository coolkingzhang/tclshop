<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
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
                    <ul class="about_nav_s1 y_w92 fs24 bor-bott">
                        <li>
                            <a href="${pageContext.request.contextPath }/companyInfo/index">公司介绍</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/companyInfo/companyInfoArch">公司架构</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a>
                        </li>
                    </ul>
                    <div class="swiper-container">
                        <ul class="about_nav_s2 fs22 swiper-wrapper cls_flex">
                            <li class="swiper-slide">
                                <a href="">董事长致辞</a>
                            </li>
                            <li class="swiper-slide">
                                <a href="${pageContext.request.contextPath }slipPath?type=1">TCL简介</a>
                            </li>
                            <li class="swiper-slide">
                                <a href="">发展历程</a>
                            </li>
                            <li class="swiper-slide">
                                <a href="">企业理念</a>
                            </li>
                            <li class="swiper-slide">
                                <a href="">公司荣誉</a>
                            </li>
                        </ul>
                    </div>
                    <script type="text/javascript">
                        //轮播
                        var myImgSwiper = new Swiper('.swiper-container ', {
                            freeMode: true,
                            slidesPerView: "auto"
                        });
                    </script>
                </nav>
            </header>
            <!-- 员工生活 -->
            <div class="layout">
                <article>
                    <div class="dtc_content fs24">
                        <ul class="img_list">
                            <li>
                                <a href="javascript:void(0);">
                                    <img src="${pictureFont.records[0].webPic }" alt=""></a>
                                </li>
                            </ul>
                            <div class="about_content">
                                ${speech[0].content }
                            </div>
                        </div>

                        <div class="rj_more">
                            <a class="get_more fs20" href=" javascript:void(0);">
                                查看更多<span class="icf">&#xe608;</span>
                            </a>
                        </div>

                    </article>
                </div>

                <!-- common footer start -->
                <%@ include file="/WEB-INF/template/common/footer.jsp" %>
                <!-- common footer end -->

            </div>

        </body>

    </html>
