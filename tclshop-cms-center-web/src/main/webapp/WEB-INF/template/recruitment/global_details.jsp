<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
<title>
   <c:if test="${result.type eq 6 }">社会招聘</c:if>
   <c:if test="${result.type eq 5 }">校园招聘</c:if>
   <c:if test="${result.type eq 4 }">员工生活</c:if>
   <c:if test="${result.type eq 3 }">员工发展</c:if>
</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">

<!-- 引入公共静态文件-->
<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>

</head>
<body class="recruitment_det">

<!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %>
<div class="mT74">
<div class="crumbs">
   <c:if test="${result.type eq 6 }">
		<div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		<a href="${pageContext.request.contextPath }/recruitment/index">人才招聘</a> &gt;&gt; 
		<a href="#">社会招聘</a></div>
   </c:if>
   <c:if test="${result.type eq 5 }">
		<div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		<a href="${pageContext.request.contextPath }/recruitment/index">人才招聘</a> &gt;&gt; 
		<a href="#">校园招聘</a></div>
   </c:if>
   <c:if test="${result.type eq 4 }"> 
		<div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		<a href="${pageContext.request.contextPath }/recruitment/index">人才招聘</a> &gt;&gt; 
		<a href="#">员工生活</a></div>
   </c:if>
   <c:if test="${result.type eq 3 }">
		<div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		<a href="${pageContext.request.contextPath }/recruitment/index">人才招聘</a> &gt;&gt; 
		<a href="#">员工发展</a></div>
   </c:if>
</div>

   <c:if test="${result.type eq 6 }">
      <div class="dot-main mT0">
			<div class="invest new-white">
			    <h3>社会招聘</h3>
				<div class="new-content">
                      ${result.content }
				</div>
				<div class="socialRecruitment">
				<p style="margin-top:50px;" class="ft32">你想去哪里？</p>
				<c:forEach items="${socialRecruitmentList }" var="obj">
                      <a href="${obj.url }">${obj.name }</a>
                </c:forEach>
                </div>
			</div>
	   </div>
      
      
   </c:if>
   <c:if test="${result.type eq 5 }">
      <div class="dot-main mT0">
			<div class="invest new-white">
			    <h3 class="text-center">校园招聘</h3>
				<div class="new-content">
                      ${result.content }
				</div>
			</div>
	   </div>
   </c:if>
   <c:if test="${result.type eq 4 }">
      <div class="dot-main mT0">
			<div class="invest new-white">
			    <h3 class="text-center">${result.title }</h3>
				<div class="new-content">
                      ${result.content }
				</div>
			</div>
	   </div>
   </c:if>
   <c:if test="${result.type eq 3 }">
      <div class="dot-main mT0">
			<div class="invest new-white">
			    <h3 class="text-center">${result.title }</h3>
				<div class="new-content">
                      ${result.content }
				</div>
			</div>
	   </div>
   </c:if>
   </div>
  <!-- 引入公共尾部-->
<%@ include file="/WEB-INF/template/common/footer.jsp" %>
</body>
</html>