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
        ${detail.title}-TCL官网
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
<c:if test="${type == 11 }">
   <div class="main">
      <a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
      <a href="${pageContext.request.contextPath}/societyDuty/index">企业社会责任</a>
      &gt; <a href="${pageContext.request.contextPath}/societyDuty/socialActivityList">企业公民活动</a> &gt; <a href="#">${detail.title }</a>
      </div>
   </c:if>
<c:if test="${type == 12 }">
    <div class="main">
      <a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
      <a href="${pageContext.request.contextPath}/societyDuty/index">企业社会责任</a>
      &gt; <a href="${pageContext.request.contextPath}/societyDuty/societyDutyFund">华萌基金</a>&gt; <a href="#">${detail.title }</a>
      </div>
</c:if>
<c:if test="${type == 13 }">
    <div class="main">
      <a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
      <a href="${pageContext.request.contextPath}/societyDuty/index">企业社会责任</a>
      &gt; <a href="${pageContext.request.contextPath}/societyDuty/societyDutyVolunteers">志愿者风采</a>&gt; <a href="#">${detail.title }</a>
      </div>
</c:if >
<c:if test="${type == 14 }">
    <div class="main">
      <a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
      <a href="${pageContext.request.contextPath}/societyDuty/index">企业社会责任</a>
      &gt; <a href="${pageContext.request.contextPath}/societyDuty/">社会责任报告</a>&gt; <a href="#">${detail.title }</a>
      </div>
</c:if>
</div>


<div class="dot-main">
		<div class="dot-main">
			<div class="invest new-white">
			    <h3 class="text-center"> <span class="title">"${detail.title}"</span></h3>
			     
				<div class="new-content mT60">
                      ${detail.content}
				</div>
			</div>
		</div>
		
	</div>


</div>
<!-- 引入公共尾部-->
<%@ include file="/WEB-INF/template/common/footer.jsp" %>
<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
<script id="currentPage" data-targetpage="global_list"
        src="${pageContext.request.contextPath}/static/js/lib/require.min.js"
        data-main="${pageContext.request.contextPath}/static/js/main">
</script>
</body>
</html>