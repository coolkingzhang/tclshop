<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="renderer" content="webkit">
<jsp:useBean id="dateValue" class="java.util.Date"/>
<title>公平在身边详情</title>
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
     <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt;&gt; 
		<a href="${pageContext.request.contextPath }/investors/investorsList?type=6">列表</a>&gt;&gt; 
		<a href="#">${result.title }</a>
	</div>
	</div>
	<div class="dot-main">
		<div class="dot-main">
			<div class="invest new-white">
			    <h3 class="text-center"><c:out value="${result.title}"/></h3>
			     <div class="text-center">
				<div class="new-content">
				   <i>
					 <jsp:setProperty name="dateValue" property="time" value="${result.issueTime * 1000}"/>
		            	<fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
		            </i>
                      ${result.content }
				</div>
			</div>
		</div>
		
	</div>
   </div>
    </div>
<!-- 引入公共尾部-->
<%@ include file="/WEB-INF/template/common/footer.jsp" %>
</body>
</html>