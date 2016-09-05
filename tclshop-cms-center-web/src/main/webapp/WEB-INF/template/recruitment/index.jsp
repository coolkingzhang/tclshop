<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html>
<head>
	<!--人才招聘-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
	<title>人才招聘-TCL官网</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>

</head>
  
<body>

	<!-- 引入公共头部-->
	<%@ include file="/WEB-INF/template/common/header.jsp" %>
    <div class="mT74">
	<div>
	   <%-- ${pictureFont.records[0].webPic }
       ${pictureFont.records[0].title }
       ${pictureFont.records[0].shorttile } --%>
     <!--   <select> 
          <option>-社会招聘-</option>
          
       </select> -->
	</div>

	<div class="invest recruitmentBar" style="background:url(${pictureFont.records[0].webPic }) no-repeat center center">
		   <ul class="recruitmentNav">
	     <li><a href="http://campus.tcl.com/" target="_blank">校园招聘</a></li>
	     <li id="bannerMoreBtn"><a href="javascript:void(0);">社会招聘<span class="arrow-down"></span></a>
	          <ul class="recruitmentNavList" id="bannerMoreLayer" style="display:none">
	             <c:forEach items="${socialRecruitmentList }" var="obj">
		             <li><a href="${obj.url }" target="_blank">${obj.name }</a></li>		             
                  </c:forEach>
	          </ul>
	     </li>
	     <div class="clear"></div>
	   </ul>
	   <div class="big_Tit"><h4>${pictureFont.records[0].title }</h4>
         <h6> ${pictureFont.records[0].shorttile }</h6></div> 
	</div>
	<div class="invest box talent-box">
		<h3>认识我们</h3>
		<ul class="talent-list">
			<li class="talent-item">
				<p class="ifont talent-o">&#xe648;</p>
				<p class="title">校招指南</p>
				<p class="text">
					${campusRecruitment.records[0].description }
				</p>
				<p ><a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${campusRecruitment.records[0].id}" target="_blank"> 了解更多>> </a></p>
			</li>
			<li class="talent-item">
				<p class="ifont talent-b">&#xe647;</p>
				<p class="title">社招指南</p>
				<p class="text">
			     	${socialRecruitment.records[0].description }
				</p>
				<p ><a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${socialRecruitment.records[0].id}" target="_blank"> 了解更多>> </a></p>
			</li>
			<li class="talent-item">
				<p class="ifont talent-y">&#xe646;</p>
				<p class="title">员工发展</p>
				<p class="text">
				   ${empDevelopment.records[0].description }
				</p>
				<p class=""><a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${empDevelopment.records[0].id}" target="_blank"> 了解更多>> </a></p>
			</li>
			<li class="talent-item">
				<p class="ifont talent-g">&#xe645;</p>
				<p class="title">员工生活</p>
				<p class="text">
				   ${empLife.records[0].description }
				</p>
				<p ><a href="${pageContext.request.contextPath }/recruitment/recruitmentDetails?id=${empLife.records[0].id}" target="_blank"> 了解更多>> </a></p>
			</li>
		</ul>
	</div>

	<div class="invest box-white talent-box">
		<h3>热招岗位</h3>
		<table class="talent-list talent-tab" cellpadding="0" cellspacing="0" id="Searchresult">
			<tr>
				<th>职位</th>
				<th>所属企业</th>
				<th>工作地点</th>
				<th>更新时间</th>
				<th></th>
			</tr>
			<c:forEach items="${job.records }" var="obj">
			   <tr>
				<td>${obj.title }</td>
				<td>${obj.company }</td>
				<td>${obj.address }</td>
				<td>
				<jsp:setProperty name="dateValue" property="time" value="${obj.createtime * 1000}"/>
                <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/></td>
				<td><a href="${obj.url }" class="submit" target="_blank">我要应聘</a></td>
			</tr>
			</c:forEach>
		</table>
		<div id="pagingDv" class="talent-list talent-page">
			<div class="fl">共有 <span class="red">${job.total }</span> 个职位</div>
			<div class="padding-box fr setR">
				<div class="padding clearmar" data-obj='{total:${job.total},totalPage:${job.pages},size:${job.size}}' id="pagination-js">
		        </div>
			</div>
		</div>
		
		
		<input id="typeStorage" type="hidden" value="${type}">
		<div id="hiddenresult" style="display:none;"> <!--分页隐藏数据-->
	
         </div>
  
		
		
	</div>
	</div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>
	
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}"> 
	
	<script id="currentPage" data-targetpage="recruitment" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main"></script>
</body>
</html>