<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="renderer" content="webkit"/>

        <title>人才招聘</title>
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

            <header class="rct_banner" style="background: url(${pictureFont[0].webPic}) no-repeat;background-size: cover;">
                <p class="rct_banner_text fs34">
                    <a href="${pictureFont[0].webPic}">TCL人才招聘</a>
                </p>
            </header>

            <!-- 社会招聘 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <a href="javascript:void(0);">
                            <h3 class="hm_title">校园招聘</h3>                            
                            <span class="abreast_text emo1">查看职位
                                <span class="icf">&#xe62f;</span>
                            </span>
                        </a>
                    </div>

                    <div class="rct_table">
                        <h3 class="hm_title fs24 color_333">社会招聘</h3>
                        <dl>
                            <c:forEach items="${reList}" var="reModel">
                                <dd>
                                    <a href="${reModel.url}">
                                        <figure class="rct_company">
                                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt="${reModel.name}"/>
                                            <figcaption>${reModel.name}</figcaption>
                                        </figure>
                                    </a>
                                </dd>
                            </c:forEach>
                        </dl>
                    </div>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- 认识我们 -->
            <div class="layout">
                <h3 class="hm_title fs24 color_333 bor-bott">认识我们</h3>
                <ul class="img_list">
                    <li>
                        <a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${socialRecruitment.records[0].id}">
                            <img src="${socialRecruitment.records[0].pic}" alt=""/></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${campusRecruitment.records[0].id}">
                            <img src="${campusRecruitment.records[0].pic}" alt=""/>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${empDevelopment.records[0].id}">
                            <img src="${empDevelopment.records[0].pic}" alt=""/>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${empLife.records[0].id}">
                            <img src="${empLife.records[0].pic}" alt=""/>
                        </a>
                    </li>
                </ul>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>

    </body>

</html>
