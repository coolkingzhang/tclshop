<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!--新闻中心-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<title>新闻中心</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css">
	
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>

</head>
<body>
	<!-- 引入公共头部-->
	<%@ include file="/WEB-INF/template/common/header.jsp" %>
     <div class="mT74">
	 <div class="invest news_banner" style="background: url(${pictureFont.records[0].webPic }) no-repeat center top;">
     
       <div class="news_TCL_nav">
			<ul id="banner_nav_wrap" style="display:none">
			    <c:forEach items="${title.data }"  var="obj" begin="0" end="${title.data.size() }"><li><a href="${pageContext.request.contextPath}/news/newsList?type=${obj.id }" >${obj.name }</a></li></c:forEach>
			</ul>
            <a href="${pictureFont.records[0].buttonUrl}" target="_blank" class="nwsbnr_seemore">查看更多</a>
		</div>
		 <div class="big_Tit"><h4>${pictureFont.records[0].title }</h4>
         <h6> ${pictureFont.records[0].shorttile }</h6></div> 
	</div>
	<div class="invest box">
		<h3 class="news-title pr">第三方观点<span class="border_botm02 pa"></span></h3>
		<ul class="news-list">
		    <c:forEach items="${viewPoint.data }" var="obj">
		       <li class="news-item">
				<div>
					<img src="${obj.pic}" />
				</div>
				<p class="news-line">
				    ${obj.title }
				</p>
				<p class="textl"><a href="${pageContext.request.contextPath }/news/newsDetails?id=${obj.id}&type=${obj.type}">查看全文</a></p>
			</li>
		    </c:forEach>
		</ul>
		<div class="more"><a href="${pageContext.request.contextPath }/news/newsList?type=${viewPoint.data[0].type}">查看更多 >> </a></div>
	</div>

	<div class="invest box-white">
		<h3 class="news-title pr">新媒体<span class="border_botm02 pa"></span></h3>
		<ul class="new-media" id="newMediaLayer">
		     <c:forEach items="${media}" var="obj">
			<li class="media-item">
				<div class="media-back">
					<p class="title">${obj.title}</p>
					<p class="ellipsis">${obj.description}</p>
					<a href="${obj.shorttitle}">${obj.keywords }</a>
				</div>
			</li>
			<li class="media-item">
				<img src="${obj.pic }" />
				<div class="comm-l comm-d-js"></div>
			</li>
			 </c:forEach>
		</ul>
		<div class="more"><a href="${pageContext.request.contextPath }/news/newsList?type=${media[0].type}">查看更多 >> </a></div>
	</div>
	
	

	<div class="invest box">
		<h3 class="news-title pr">视频新闻<span class="border_botm02 pa"></span></h3>
		<ul class="video-list">
		    <c:forEach items="${videl.data }" var="obj">
		       <li class="video-item">
				<div class="pr">
				   <a href="${obj.shorttitle }" target="_blank">
					 <img class='bg-biger' src="${obj.pic}" />
					    <span class="sp_arrow pa">
					       <img src="${pageContext.request.contextPath}/static/img/sp_arrow.png">
					    </span>
				   </a>
				</div>
				<div class="comm">
				   ${obj.title }
				</div>
			   </li>
		    </c:forEach>
		</ul>
		<div class="more"><a href="${pageContext.request.contextPath }/news/newsList?type=${videl.data[0].type}">查看更多 >> </a></div>
	</div>
<!-- 
    <div class="subscribe_box01">
  <div class="contaier">
    <div class="email_subscribe01">
      <p>邮寄订阅<br /><i>SUBSCRIPTION</i></p>
      <a href="javascript:;" target="_blank" class="btn_sub">点击订阅</a></div>
  </div>
</div> -->
<!-- main end-->
<div id="mask"></div>
<div class="contaier">
  <div id="sub_pop"> <a class="sub_close pa"><img src="${pageContext.request.contextPath}/static/img/close.png"></a>
    <div class="sub_content">
      <h4>欢迎订阅投资者关系<br />
        我们将会以Email形式把投资者关系发送至您的邮箱！</h4>
      <form class="contact_form" action="#" method="post" name="contact_form">
        <label>
          <input name="name" type="text" class="sub_name" placeholder="姓名" required>
        </label>
        <label>
          <input name="email" type="email" class="sub_email" placeholder="xxx@kuyumall.com" required ng-model="user.email">
        </label>
        <button type="submit" class="sub_bottom">提交</button>
      </form>
    </div>
  </div>
</div>
</div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>

	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="news_center"  src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main"></script>
</body>
</html>