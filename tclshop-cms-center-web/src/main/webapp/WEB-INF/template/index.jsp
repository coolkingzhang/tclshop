<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
    <title>TCL官方网站-TCL官网</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css">
     <!-- 引入公共静态文件-->
    <%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
    <!-- 引入公共头部-->
    <%@ include file="/WEB-INF/template/common/header.jsp" %>
</head>
<body>
    <section>
        <!--头图-->
        <div class="channel_img" style="background-image:url(${pictureFont.records[0].webPic });">
        </div>
        <!--新闻资讯-->
        <div class="channel_new">
            <h1>
                新闻资讯
            </h1>
            <ul class="channel_newCont">
               <c:forEach items="${message}" var="obj">
                  <li>
                    <div class="newsPic"><a href="${pageContext.request.contextPath }/news/newsDetails?id=${obj.id}&type=${obj.type}" target="_blank"><img src="${obj.pic }" alt=""></a></div>
                    <a href="${pageContext.request.contextPath }/news/newsDetails?id=${obj.id}&type=${obj.type}" target="_blank">${obj.title }</a>
                    <%-- <p>${obj.shorttitle }</p>
                    <a href="${pageContext.request.contextPath }/news/newsDetails?id=${obj.id}&type=${obj.type}" target="_balnk">查看更多&gt;</a> --%>
                 </li>
               </c:forEach>
            </ul>
            <a href="${pageContext.request.contextPath }/news/index" class="seemore" target="_blank">查看更多&gt;&gt;</a>
        </div>
        <!--报告分析-->
        <div class="channel_report">
            <h1>定期经营报告分析</h1>
            <ul class="channel_reportCont"><!--1226px-->
               <c:forEach items="${report }" var="obj">
                  <li>
                    <p>
                       <a href="${obj.url }" target="_blank">${obj.title }</a>
                    </p>
                    <a href="${obj.url }" class="downPDF">PDF下载</a>
                 </li>
               </c:forEach> 
            </ul>
            <a href="${pageContext.request.contextPath }/investors/index" class="seemore" target="_blank">查看更多&gt;&gt;</a>
        </div>
        <div class="channel_action">
            <h1>企业公民行动</h1>
            <ul class="channel_actionCont">
	            <c:forEach items="${activity }"  var="obj">
	               <li>
	                    <div class="actionPic">
	                    	<a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${obj.id}&type=${obj.type}" target="_blank">
	                    		<img src="${obj.pic }" alt="">
	                    	</a>
	                    </div>
	                    <h2>
	                    	<a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${obj.id}&type=${obj.type}" target="_blank">
	                    		${obj.title }
	                    	</a>		
	                    </h2>

	                    <p>${obj.description }</p>
	                    <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${obj.id}&type=${obj.type}" target="_blank" class="check-detail">查看详情&gt;</a>

	                </li>
	            </c:forEach>
            </ul>
            <a href="${pageContext.request.contextPath }/societyDuty/index" class="seemore" target="_blank">查看更多&gt;&gt;</a>
        </div>
    </section>
    <!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>	
	<input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="index" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>