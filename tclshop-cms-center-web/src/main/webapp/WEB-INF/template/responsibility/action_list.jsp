<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
    <jsp:useBean id="dateValue" class="java.util.Date"/>
    <title>
        企业公民活动-TCL官网
    </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css">
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>


</head>
<body>
<!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %>
<div class="mT74">
<input id="typeStorage" type="hidden" value="${type}">
<input id="setPath" type="hidden" value="${pageContext.request.contextPath}">

<div class="crumbs">
    <div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;<a href="${pageContext.request.contextPath}/societyDuty/index">企业社会责任</a> &gt; <a href="#">企业公民活动</a></div>
</div>
<div class="gmxd_content" id="Searchresult">
    <c:forEach items="${result.records}" var="obj">
        <dl class="gmxd_list">
            <dd>
               <a class="gmxs_title pr" href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${obj.id}&type=${obj.type}"
                   target="_blank">
                    <img src="${obj.pic}"/>
                </a>
            </dd>
            <dt>
                <a class="gmxs_title pr" href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${obj.id}&type=${obj.type}"
                   target="_blank">
                    <c:out value="${obj.title}"/>
                </a>
                <i class="getDate">
                    <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                </i>
            <p class="gmxs_des"><c:out value="${obj.description}"/></p>
            </dt>
        </dl>
    </c:forEach>
</div>
<div id="hiddenresult" style="display:none;"> <!--分页隐藏数据-->

</div>
<div id="pagingDv">
    <div class="padding-box">
        <div class="padding clearmar" data-obj='{total:${result.total},totalPage:${result.pages},size:${result.size}}'
             id="pagination-js">
        </div>
    </div>
</div>
</div>
<!-- 引入公共尾部-->
<%@ include file="/WEB-INF/template/common/footer.jsp" %>
<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
<script id="currentPage" data-targetpage="co_actionList"
        src="${pageContext.request.contextPath}/static/js/lib/require.min.js"
        data-main="${pageContext.request.contextPath}/static/js/main">
</script>
</body>
</html>