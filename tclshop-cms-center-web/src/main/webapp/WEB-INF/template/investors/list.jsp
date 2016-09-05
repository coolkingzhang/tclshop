<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
<title>
   <c:if test="${result.records[0].type eq 1 }">定期经营报告分析-TCL官网</c:if>
   <c:if test="${result.records[0].type eq 2 }">上市公司报告-TCL官网</c:if>
   <c:if test="${result.records[0].type eq 3 }"> 投资机构报告-TCL官网</c:if>
   <c:if test="${result.records[0].type eq 4 }">上市公司管理制度-TCL官网</c:if>
   <c:if test="${result.records[0].type eq 6 }">公平在身边-TCL官网</c:if>
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
<input id="typeStorage" type="hidden" value="${result.records[0].type }"/>
<div class="crumbs">
   <c:if test="${result.records[0].type eq 1 }">
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt; 
		<a href="#">定期经营报告分析</a></div>
   </c:if>
   <c:if test="${result.records[0].type eq 2 }">
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt; 
		<a href="#">上市公司报告</a></div>
   </c:if>
   <c:if test="${result.records[0].type eq 3 }"> 
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt; 
		<a href="#">投资机构报告</a></div>
   </c:if>
   <c:if test="${result.records[0].type eq 4 }">
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt; 
		<a href="#">上市公司管理制度</a></div>
   </c:if>
   <c:if test="${result.records[0].type eq 6 }">
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt; 
		<a href="#">公平在身边</a></div>
   </c:if>
</div>
   <div class="gmxd_content" id="Searchresult">
   <c:choose>
      <c:when test="${result.records[0].type eq 6 }">
         <c:forEach items="${result.records}" var="obj">
            <ul class="huameng">
	            <li class="font">
	                <a href="${pageContext.request.contextPath}/societyDuty/getSolDetail?id=${obj.id}"
	                   target="_blank"><c:out value="${obj.title}"/></a>
	                <i>
	                    <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
	                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
	                </i>
	            </li>
	        </ul>
         </c:forEach>
      </c:when>
      <c:otherwise>
         <c:forEach items="${result.records}" var="obj">
	        <ul class="huameng">
	            <li class="font">
	                <a href="${pageContext.request.contextPath}/societyDuty/getSolDetail?id=${obj.url}"
	                   target="_blank"><c:out value="${obj.title}"/></a>
	
	                <i>
	                    <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
	                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
	                </i>
	                <i><a href="${obj.url }">PDF下载</a></i>
	            </li>
	        </ul>
	    </c:forEach>
      </c:otherwise>
   </c:choose>
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
   <input type="hidden" id="setPath" value="${pageContext.request.contextPath}"> 
<script id="currentPage" data-targetpage="investorsList" 
        src="${pageContext.request.contextPath}/static/js/lib/require.min.js"
        data-main="${pageContext.request.contextPath}/static/js/main">
</script>	
</div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>

</body>
</html>