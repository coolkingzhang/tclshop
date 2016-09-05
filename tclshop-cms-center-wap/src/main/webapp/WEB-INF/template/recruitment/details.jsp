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

        <title>
            <c:if test="${result.type eq 6 }">社会招聘</c:if>
            <c:if test="${result.type eq 5 }">校园招聘</c:if>
            <c:if test="${result.type eq 4 }">员工生活</c:if>
            <c:if test="${result.type eq 3 }">员工发展</c:if>
        </title>
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
            <div class="layout">
                <article>
                    <header class="dtc_info_title">
                        <h3 class="hm_title fs36">
                            <c:if test="${result.type eq 6 }">社会招聘</c:if>
                            <c:if test="${result.type eq 5 }">校园招聘</c:if>
                            <c:if test="${result.type eq 4 }">员工生活</c:if>
                            <c:if test="${result.type eq 3 }">员工发展</c:if>
                        </h3>
                        <time class="dtc_time fs22">
                            <jsp:setProperty name="dateValue" property="time" value="${result.createtime * 1000}"/>
                            <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd hh:mm:ss"/>
                        </time>
                    </header>
                    <div class="dtc_content fs24">
                        ${result.content}
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
