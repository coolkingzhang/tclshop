<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   <c:if test="${result.type eq 1 }">集团新闻</c:if>
   <c:if test="${result.type eq 2 }">产品新闻</c:if>
   <c:if test="${result.type eq 3 }">服务新闻</c:if>
   <c:if test="${result.type eq 4 }">社区新闻</c:if>
   <c:if test="${result.type eq 5 }">第三方观点</c:if>
   <c:if test="${result.type eq 6 }">视频新闻</c:if>
   <c:if test="${result.type eq 7 }">新媒体内页</c:if>
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
     <div class="crumbs">
		<div class="main">
		<a href="http://www.tcl.com">首页</a> &gt;&gt; 
		<a href="${pageContext.request.contextPath }/news/index">新闻中心</a>&gt;&gt;
		<a href="${pageContext.request.contextPath }/news/newsList?type=${result.type }">${returnPath.name }</a>&gt;&gt;
		<a href="#">${result.title}</a>
		</div>
		
	</div>
	<div class="dot-main">
		<div class="dot-main">
			<div class="invest new-white">
			    <h3 class="text-center"><c:out value="${result.title}"/></h3>
			     <div class="text-right">
			     <i>
					 <jsp:setProperty name="dateValue" property="time" value="${result.issueTime * 1000}"/>
		            	<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
		            </i>
		         </div>
				<div class="new-content">
                      ${result.content }
				</div>
			</div>
		</div>
		
	</div>
   </div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>
</body>
</html>