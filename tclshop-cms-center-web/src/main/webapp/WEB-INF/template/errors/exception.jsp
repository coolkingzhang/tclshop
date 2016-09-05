<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TCL - exception</title>
<script type="text/javascript">
  	function showErrorInfo(){
  		var oDiv = document.getElementById("errorInfoDiv"); 
  		oDiv.style.display = (oDiv.style.display === "none")?"":"none";
  	}
  </script>
<style>
  *{margin:0;padding:0;}
  .container {
    margin-right: auto;
    margin-left: auto;
    padding: 0;
    width: 980px;
}
  .m_paul {
    width: 677px;
    margin: 80px auto 0 auto;
    overflow: hidden;
    zoom: 1;
    text-align: center;
    padding: 150px 0 20%;
    background: url(${pageContext.request.contextPath}/static/img/m_paul.png) 0px center no-repeat;
}
.m_paul_box {
    width: 350px;
    float: right;
}
.m_paul_box h3 {
    font-size: 50px;
    font-family: "Microsoft YaHei";
    font-weight: normal;
}
.f_color1 {
    color: #d83528;
}
.m_paul_box p {
    font-size: 24px;
    color: #a4a4a4;
    font-family: "Microsoft YaHei";
    font-weight: lighter;
    margin-bottom: 15px;
}

</style>
</head>
<body style="background:#fff;">

<div class="container">
	<div class="m_paul">
		<div class="m_paul_box">
			<h3 class="f_color1" onclick="showErrorInfo()" style="cursor:hand;cursor:pointer;">exception</h3>
			<p>真抱歉，系统异常</p>
			<a href="http://www.tcl.com/" class="f_color1">返回首页</a>
		</div>
	</div>
</div>
<div id="errorInfoDiv" style="display:none;">
	
</div>
</body>

</html>

