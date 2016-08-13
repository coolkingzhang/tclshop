<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
    <jsp:useBean id="dateValue" class="java.util.Date"/>
    <title>
        ${title}
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
<input id="pagetype" type="hidden" value="">
<div class="crumbs">
    <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;<a href="${pageContext.request.contextPath}/societyDuty/index">企业社会责任</a> &gt;&gt; <a href="#">${title}</a></div>
</div>
<div class="gmxd_content" id="Searchresult">
    <c:forEach items="${result.records}" var="obj">
        <ul class="huameng">
            <li class="font">
                <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${obj.id}&type=${obj.type}" target="_blank">
                ${obj.title}</a>

                <i>
                    <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                </i>
            </li>
        </ul>
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
<script id="currentPage" data-targetpage="hm_fundList" 
        src="${pageContext.request.contextPath}/static/js/lib/require.min.js"
        data-main="${pageContext.request.contextPath}/static/js/main">
</script>
</body>
</html>