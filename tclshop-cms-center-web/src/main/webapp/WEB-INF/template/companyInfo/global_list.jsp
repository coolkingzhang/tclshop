<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
<title>
   发展历程
</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/lib/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">
<script type="text/javascript">
   $(function(){
	   ajax(3,1);   
   });
   function reload(type,name){
		ajax(type,name);
   }
   function ajax(type,name){
	   $.get(
			  '${pageContext.request.contextPath }/companyInfo/companyInfoCourseList',
			  {type : type , name : name , time:new Date()},
			  function(_data){
				  var courseType = _data.data.courseType;//发展历程规模类型
				  var data =  _data.data.data;//发展历程内容
				  var pictureFont =  _data.data.pictureFont;//头图
				  $('.about_content').children().remove();//清空内容
				  var tp ='<img src="'+pictureFont.records[0].webPic+'" alt="公司展示图片" class="top">';//设置头图
				  $('.about_content').append(tp);
				  var str = '<div class="devel_details_title"><ul>';
				  $.each(courseType, function(i,val){    //循环规模类型
					  	 //后台数据data[0]的name值从1开始，判断name值是否等于i+1，从而给li加hover样式实现切换效果
					  	 if(data[0].name == i+1){
					  		str =str + '<li class="hover"><a href="javascript:reload('+3+','+val.id+')">'+val.title+'</a></li>';
					  	 }else{
					  		str =str + '<li><a href="javascript:reload('+3+','+val.id+')">'+val.title+'</a></li>';
					  	 }
				  }); 
				  str = str + '</ul></div>';
				  $('.about_content').append(str);  
				  var i = 0 ;
				  var div ='<div class="details_01"><ul>';
				  var content = ''; 
				  for(i=0 ; i<data.length; i++){//循环主内容
					  if(i==0){//数据第一条
						  content = content
			    	           +  '<span class="title"><a href=${pageContext.request.contextPath}/companyInfo/companyInfoDetails?type=3&years='
					           +  data[i].years
					           +  '>'
					           +  data[i].years
					           +  '</a></span><div class="details_01"><ul>'
					           +  '<li><span class="deta">'
			    	           +  data[i].title+'</span><span class="des">'
			    	           +  data[i].content+'</span></li>';
					  }else if(i >0 && data[i].years != data[i-1].years){//如果和上一条数据的年份不相等  那么就要显示years
						  content = content
			    	           + '</ul></div><span class="title"><a href=${pageContext.request.contextPath}/companyInfo/companyInfoDetails?type=3&years='
					           +  data[i].years
					           +  '>'
					           +  data[i].years
					           +  '</a></span><div class="details_01"><ul>'
					           +  '<li><span class="deta">'
			    	           +  data[i].title+'</span><span class="des">'
			    	           +  data[i].content+'</span></li>';
					  }else{//同一年
						  content = content
							   + '<li><span class="deta">'
		    	               +  data[i].title+'</span><span class="des">'
		    	               +  data[i].content+'</span></li>';
					  }
				  }
				  $('.about_content').append(content);
			  },'Json'
		   );
   }
</script>
<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
</head>
<body>

   <!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %> 
    <div class="mT74">
        <div class="crumbs">
             <div class="main"><a href="http://www.tcl.com">首页</a> &gt;&gt;
			<a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt;&gt; 
			<a href="#">发展历程</a></div>
        </div>	
	    <div class="about_content">
		</div>	

    </div>
     <!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>

     <input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="about_tcl" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>