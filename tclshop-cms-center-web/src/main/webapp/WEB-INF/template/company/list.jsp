 	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
<title>
   发展历程-TCL官网
</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">

<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
</head>
<body>

   <!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %> 
    <div class="mT74">
        <div class="crumbs">
             <div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
			<a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt; 
			<a href="#">发展历程</a></div>
        </div>	
	    <div class="about_content" id="targetDiv">
		</div>
    </div>
     <!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>

     <input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="company_list" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>	
</body>
</html>