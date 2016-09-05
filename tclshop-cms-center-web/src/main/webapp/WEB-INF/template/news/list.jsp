<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>${title.name }-TCL官网</title>
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
            <div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		    <a href="${pageContext.request.contextPath }/news/index">新闻中心</a> &gt; 
		    <a href="#">${title.name }</a></div> 
	</div>
    <%-- <div class="news_TCL_nav news_list_nav">
		<ul id="banner_nav_wrap" style="display:none">
		    <c:forEach items="${title.data }"  var="obj" begin="0" end="${title.data.size() }"><li><a href="${pageContext.request.contextPath}/news/newsList?type=${obj.id }" >${obj.name }</a></li></c:forEach>
		</ul>
	         
	</div> --%>
		

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
  </div>
  <div id="hiddenresult" style="display:none;"> <!--分页隐藏数据-->
	
  </div>
  <!-- 分页模块 -->
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