<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<script>
	   var jsContextPath = 'http://10.73.128.174:20300';
</script>
<link rel="stylesheet" target="_blank" href="http://10.73.128.174:20300/static/kuyu/common/css/core/header.css ">
<link rel="stylesheet" target="_blank" href="http://10.73.128.174:20300/static/kuyu/common/css/core/footer.css ">

<script type="text/javascript" src="http://10.73.128.174:20300/static/kuyu/common/js/core/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://10.73.128.174:20300/static/kuyu/common/js/core/jquery.lazyload-min.js"></script>
<script type="text/javascript" src="http://10.73.128.174:20300/static/kuyu/common/js/core/index.js"></script>
<script type="text/javascript" src="http://10.73.128.174:20300/static/kuyu/common/js/core/platHead.js"></script>

<script type="text/javascript" src="http://10.73.128.174:20300/static/kuyu/common/js/core/opCookieUtil.js"></script>
<script>
try{
	//write cloud insert cookie interface
	var memberlogin_url = getCookie("memberlogin_url");
	if(memberlogin_url){
		$("head").eq(0).append("<script src='"+memberlogin_url+"'><"+"/script>");
		delCookie("memberlogin_url");
	}
}
catch(e){
	
}
</script>