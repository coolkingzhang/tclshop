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
   <c:if test="${result[0].type eq 3 }">发展历程详情</c:if>
   <c:if test="${result[0].type eq 1 }">董事长致辞</c:if>
   <c:if test="${result[0].type eq 7 }">管理团队</c:if>
   <c:if test="${result[0].type eq 19 }">科技创新荣誉</c:if>
   <c:if test="${result[0].type eq 18 }">企业荣誉</c:if>
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
	  <c:choose>
	  <c:when test="${result[0].type eq 18 }">
         <div class="crumbs mT60">
         <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		 <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt;&gt; 
		 <a href="#">企业荣誉</a></div>	
	     </div>	
	       <div class="about_content">
	       <c:forEach items="${result }" var="obj"> 
		       <div class="honor_01">
		       <ul>
		          <span class="title">${obj.years }</span>
		          <li>${obj.content }</li>
	            </ul>
               </div>
            </c:forEach>
            </div>   
	     </c:when>
	  
       <c:when test="${list1[0].type eq 19 }">
        <div class="crumbs mT60">
	        <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a> &gt;&gt; 
			<a href="#">科技创新荣誉详情</a></div>
        </div>	
        <div class="about_content">
        	<div class="honor_01">
	        	<span class="title">荣誉</span>
			    <ul>
			      <c:forEach items="${list1 }" var="obj">
			       <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
			       <li><span class="des"><fmt:formatDate value="${dateValue}" pattern="yyyy年MM月"/>&nbsp;.&nbsp;${obj.description}</span></li>
			       </c:forEach>
			     </ul>
	        </div>
	        <div class="honor_01">
	        	<span class="title">新技术，新产品</span>
		        <ul>
		        <c:forEach items="${list2 }" var="obj">
		         <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
		           <li><span class="des"><fmt:formatDate value="${dateValue}" pattern="yyyy年MM月"/>&nbsp;.&nbsp;${obj.description}</span></li>
		        </c:forEach>
		        </ul>
	        </div>
	        
	        <div class="honor_01">
	        	<span class="title">专利奖</span>
	        	<ul>
			        <c:forEach items="${list3 }" var="obj">
			         <jsp:setProperty name="dateValue" property="time" value="${obj.issueTime * 1000}"/>
			           <li><span class="des"><fmt:formatDate value="${dateValue}" pattern="yyyy年MM月"/>&nbsp;.&nbsp;${obj.description}</span></li>
			        </c:forEach>
			   </ul>
	        </div>
        </div>
                 
	     </c:when>
         
	     <c:when test="${result[0].type eq 1 }">
            <div class="crumbs mT60">
               <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
				<a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt;&gt; 
				<a href="#">董事长致辞</a></div>
            </div>	
		    <div class="about_content">
	        <h4 class="maintitle">${result[0].title }</h4>    
			<p class="dsz_speech">
	            <span class="img"><img src="${result[0].pic }" alt="公司展示图片"> </span>
				${result[0].content }	
			</p>
	        <div class="about_speech">
	        <div class="speech_left">
	           <a href="http://weibo.com/lidongsheng?topnav=1&wvr=5&topsug=1&is_all=1" target="_blank" class="weibo">
	           <img src="${pageContext.request.contextPath }/static/img/weibo.png" width="48" height="38"></a>
	           <a href="http://weibo.com/lidongsheng?topnav=1&wvr=5&topsug=1&is_all=1" target="_blank" class="attentio">添加关注李东生微博</a>
	        </div>
        <div class="speech_right">
           <img src="${pageContext.request.contextPath }/static/img/ceo_name.jpg" width="160" height="60">TCL集团股份有限公司董事长兼CEO
        </div>
        </div>
        </div>	
	     </c:when>

	      <c:when test="${result[0].type eq 3 }">
	          <div class="crumbs mT60">
               <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
				<a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt;&gt; 
				<a href="${pageContext.request.contextPath }/companyInfo/developList">发展历程列表</a>&gt;&gt;
			    <a href="#">发展历程详情</a></div>
            </div>	
			 <div class="about_content">
		       <dl class="mg_team">
		         <dd><img src="${result[0].pic }"></dd>
		         <dt>
		         <p class="name">${result[0].years }</p>
		         </dt>
		       </dl>
		       
		       <ul class="skill">
		          <c:forEach items="${result }" var="obj">
		             <li><h4>${obj.title }</h4>${obj.content }</li>
		          </c:forEach>
		       </ul>
		     </div> 
	     </c:when>
	     
	      <c:when test="${result[0].type eq 7 }">
	          <div class="crumbs mT60">
               <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
				<a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt;&gt; 
				<a href="#">管理团队</a></div>
            </div>	
			 <div class="about_content">
		       <dl class="mg_team">
		         <dd><img src="${result[0].rPic }"></dd>
		         <dt>
		         <p class="name">${result[0].name }</p>
		         <p class="introduce">${result[0].description }</p>
		         </dt>
		       </dl>
		       ${result[0].content }
		       <ul class="skill">
		         <li></li>
		       </ul>
		     </div> 
	     </c:when>
	  </c:choose>
   	 </div>	
	 <!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>
	
	 <input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="about_tcl" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>