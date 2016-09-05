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
        <title>新闻内容详情</title>
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
            <!-- 新闻中心内容 -->
            <div class="layout">
                <article>
                    <header class="dtc_info_title">
                        <h4 class="hm_title fs36">${news.title }</h4>
                        <time class="dtc_time fs22" datetime="2016-07-28">
                            <jsp:setProperty name="dateValue" property="time" value="${news.issueTime * 1000}"/>
                            <fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd"/></time>
                    </header>
                    <div class="dtc_content fs24">
                        <c:choose>
                            <c:when test="${news.type == 6 }">
                                <ul class="img_list">
                                    <li>
                                        <a href="${news.shorttitle }">
                                            <img src="${news.pic }" alt=""/></a>
                                    </li>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                ${news.content }
                            </c:otherwise>
                        </c:choose>
                    </div>
                </article>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>

    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
    <script type="text/javascript">
        mobe.rmlc();
    </script>

</html>
