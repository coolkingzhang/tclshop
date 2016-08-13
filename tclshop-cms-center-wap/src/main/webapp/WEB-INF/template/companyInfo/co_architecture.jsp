<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>公司架构</title>

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
                </nav>
            </header>
            <div class="y_w92 bor-bott"></div>
            <!-- 员工生活 -->
            <div class="layout">
                <article>
                    <div class="dtc_content fs24">
                        <ul class="img_list">
                            <li>
                                <a href="javascript:void(0);">
                                    <img src="../static/common/imgs/banner01.jpg" alt=""></a>
                                </li>
                            </ul>
                            <div class="about_content">
                                <h4>产业业务领域（7）</h4>
                                <ol>
                                    <li>TCL多媒体（1070HK）</li>
                                    <li>TCL通讯科技（2016HK）</li>
                                    <li>华星光电</li>
                                    <li>家电产业集团</li>
                                    <li>通力电子（1249HK）</li>
                                    <li>商用系统业务群</li>
                                    <li>部品及材料业务群</li>
                                </ol>
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
