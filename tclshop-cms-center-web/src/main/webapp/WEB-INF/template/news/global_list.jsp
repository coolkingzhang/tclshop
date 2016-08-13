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
   <c:if test="${result.records[0].type eq 1 }">集团新闻</c:if>
   <c:if test="${result.records[0].type eq 2 }">产品新闻</c:if>
   <c:if test="${result.records[0].type eq 3 }">服务新闻</c:if>
   <c:if test="${result.records[0].type eq 4 }">社区新闻</c:if>
   <c:if test="${result.records[0].type eq 5 }">第三方观点</c:if>
   <c:if test="${result.records[0].type eq 6 }">视频新闻</c:if>
   <c:if test="${result.records[0].type eq 7 }">新媒体内页</c:if>
</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/datepicker.css">
	
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>

</head>
<body>
	<!-- 引入公共头部-->
	<%@ include file="/WEB-INF/template/common/header.jsp" %>
     
    <div class="mT74">
     <input id="typeStorage" type="hidden" value="${type}">
    
  
     <div class="crumbs" style="position:relative">
         <c:if test="${result.records[0].type eq 1 }">
            <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		    <a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
		    <a href="#">集团新闻</a></div>
		</c:if>
	     <c:if test="${result.records[0].type eq 2 }">
	        <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
		    <a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
		    <a href="#">产品新闻</a></div>
	     </c:if>
		 <c:if test="${result.records[0].type eq 3 }">
		    <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
			<a href="#">服务新闻</a></div>
		 </c:if>
		 <c:if test="${result.records[0].type eq 4 }">
		    <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
			<a href="#">社区新闻</a></div>
		 </c:if>
		 <c:if test="${result.records[0].type eq 5 }">
		    <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
			<a href="#">第三方观点</a></div>
		 </c:if>
		 <c:if test="${result.records[0].type eq 6 }">
		    <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
			<a href="#">视频新闻</a></div>
		 </c:if>
		 <c:if test="${result.records[0].type eq 7 }">
		    <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt;&gt; 
			<a href="#">新媒体内页</a></div>
		 </c:if>
		 
	</div>
	<div id="searchArea" class="crumbs mT20" style="background:none;display:none;">
	       <div class="main">
		   <div class="input-append">
               <input id="datepickerFrom" placeholder="开始日期" class="input-small" type="text" readonly>
               <button id="datepickerFromBtn" class="btn" type="button"><i class="icon-calendar"></i></button>
            </div>
            <div class="input-append">
               <input id="datepickerTo" placeholder="结束日期" class="input-small" type="text" readonly >
               <button id="datepickerToBtn" class="btn" type="button"><i class="icon-calendar"></i></button>
            </div>
            <div class="input-append">
                <input id="searchBar" placeholder="查询关键字" class="input-large" type="text">
                <button id="searchBtn" class="btn searchBtn" type="button">查询</button>
            </div>
           
          </div>
		</div>
	 
     <div class="gmxd_content" id="Searchresult">
    
      <c:choose>
        <c:when test="${result.records[0].type eq 6 }"> </c:when>
        <c:when test="${result.records[0].type eq 7 }"> </c:when>
        <c:otherwise>  
             <c:forEach items="${result.records }" var="obj" >
	         <dl class="gmxd_list">
	            <dd>
	            <a class="gmxs_title pr" href="${pageContext.request.contextPath }/news/newsDetails?id=${obj.id}&type=${obj.type}" target="_blank">
	            <img src="http://news.tcl.com${obj.pic}"/>
	            </a>
	            </dd>
	            <dt>
	                <a class="gmxs_title pr" href="${pageContext.request.contextPath }/news/newsDetails?id=${obj.id}&type=${obj.type}" target="_blank">
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
        </c:otherwise>
     </c:choose>
  </div>
  <div id="hiddenresult" style="display:none;"> <!--分页隐藏数据-->
	
  </div>
  <div id="pagingDv">
	 
	<div class="padding-box">
		<div class="padding clearmar" data-obj='{total:${result.total},totalPage:${result.pages},size:${result.size}}' id="pagination-js">
		</div>
	</div>
	
    </div>
    </div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>
  
  <input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
  <script id="currentPage" data-targetpage="global_list"  src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main"></script>
</body>
</html>