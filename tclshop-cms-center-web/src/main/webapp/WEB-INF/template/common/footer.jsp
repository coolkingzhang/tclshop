<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!-- Help center html start -->
	<div class="help">
		<div class="min-wid">
			<dl>
				<dt>帮助中心</dt>
				
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toHelp?hid=1">购物指南</a></dd>
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toHelp?hid=2">支付方式</a></dd>
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toHelp?hid=3">配送方式</a></dd>
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toHelp?hid=4">交易条款</a></dd>
				
				
			</dl>
			<dl>
				<dt>服务支持</dt>
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toService#policy">售后服务</a></dd>
				<!-- <dd><a target="_blank"  href="http://news.tcl.com/Service/self_service.html?cid=1">自助服务</a></dd> -->
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toService">自助服务</a></dd>
				<dd><a target="_blank"  href="http://www.tcl.com:80/tclchannel/toService#policye">电子保单</a></dd>
			</dl>
					
			<dl>
				<dt>关于TCL</dt>
				<dd><a target="_blank"  href="http://www.tcl.com/group/companyInfo/slipPath?type=1">了解TCL</a></dd>
				<dd><a target="_blank"  href="http://www.tcl.com/group/recruitment/index">人才招聘</a></dd>
				<!-- <dd><a target="_blank"  href="http://news.tcl.com/About/index_cn.html">联系我们</a></dd> -->
				<dd><a target="_blank"  href="http://www.tcl.com:80/connectWithUs.jsp">联系我们</a></dd> 
			</dl>
			<dl>
				<dt>关注我们</dt>				
				<dd><a target="_blank"  href="http://fans.tcl.com/">铁粉社区</a></dd>
				<dd><a target="_blank" class="botSina"  href="http://widget.weibo.com/dialog/follow.php?fuid=1741028690&refer=www.tcl.com&language=zh_cn&type=widget_page&vsrc=app_followbutton&backurl=http%3A%2F%2Fwww.tcl.com%2F&rnd=1453360859071">新浪微博</a></dd>
				<!-- <dd><a target="_blank"  href="#">官方微信</a></dd> -->
				<dd><a target="_blank" href="http://www.shifendaojia.com/pc.html">十分到家</a></dd>
				<dd><a target="_blank" href="http://www.tcl.com/group/companyInfo/slipPath?type=6">成员网站</a></dd>	
			</dl>
			<dl>
				<dt>特色服务</dt>
				
				<dd><a target="_blank"  href="http://www.tcl.com:80/frontshow/content/getContent/0a4e159304144d22a289a8eb498e9c88">全场包邮</a></dd>			
				<dd><a target="_blank"  href="http://www.tcl.com:80/frontshow/content/getContent/4822a43dd59f4dcab6ea13f307bbb2dc">全国联保</a></dd>
			</dl>
			<dl>
			    <dt>应用服务</dt>
			    <dd><a target="_blank" href="http://www.huan.tv/toIndex.action">欢网</a></dd>
			    <dd><a target="_blank" href="https://jr.tcl.com/home.html">金融</a></dd>
			    <dd><a target="_blank" href="http://www.imooc.com/">教育</a></dd>
			    <dd><a target="_blank" href="http://www.golive-tv.com/">全球播</a></dd>
			    <dd><a target="_blank" href="http://www.tcl-smarthome.com/">智能家居</a></dd>
			</dl>						
			<dl class="last-r">
				<!-- <p class="title">售后热线</p> -->
				<p class="red phone">4008-123456</p>
				<p class="grey">（24小时在线，仅收市话费）</p>
				<!-- <p class="grey">（仅收市话费）</p> -->
				<a href="http://www.tcl.com:80/servicecenter/customerServiceKuyu" target="_self"><i>&#xe64a;</i>24小时在线客服</a>
				
			</dl>
		</div>
	</div>
	<!-- Help center html end -->
	<!-- go to top html-->
	<div class="goTop">
		
		<a href="http://www.tcl.com:80/servicecenter/customerServiceKuyu">
			<div class="item">&#xe64a;</div><!-- id="baiduChat" -->
		</a>
		<a onclick="$('body,html').animate({scrollTop: 0 },500);">&#xe639;</a>
	</div>
	<script>
		$("#baiduChat").click(function() {			
			if (typeof (qiao) != "undefined") {
				//悠易监测 start
				//  try{ 
				// _ymp = ((typeof(_ymp)!= "undefined")?_ymp:[]);  
				// _ymp.push({"action":"trackEvent", "point":"2671", "options": []});
				// //悠易监测 end
				// }catch(e){
				// 	console.log(e.name+":"+e.message);
				// }
				qiao.require([ "front/base/emitter" ], function(exports) {
					exports.emit("webim:open")
				});
			}
		});
		
		$(".botSina").click(function() {
			//悠易监测 start
			// 	try{ 
			// _ymp = ((typeof(_ymp)!= "undefined")?_ymp:[]);  
			// _ymp.push({"action":"trackEvent", "point":"2664", "options": []});
			// 	}catch(e){
			// 		console.log(e.name+":"+e.message);
			// 	}
			//悠易监测 end
			
		})
	</script>
	<!-- go to top html-->
<!-- 品友互动 start --> 
<script type="text/javascript">
try{
var _py = _py || [];
_py.push(['a', 'PJs..kri_YpL1ygyEsbqOFS_wiP']);
_py.push(['domain','stats.ipinyou.com']);
_py.push(['e','']);
-function(d) {
	var s = d.createElement('script'),
	e = d.body.getElementsByTagName('script')[0]; e.parentNode.insertBefore(s, e),
	f = 'https:' == location.protocol;
	s.src = (f ? 'https' : 'http') + '://'+(f?'fm.ipinyou.com':'fm.p0y.cn')+'/j/adv.js';
}(document);
}catch(e){
	console.log(e.name+":"+e.message);
}
</script>
<noscript><img src="//stats.ipinyou.com/adv.gif?a=PJs..kri_YpL1ygyEsbqOFS_wiP&e=" style="display:none;"/></noscript>

<!-- 品友互动 end --> 
<!-- 悠易监测 start -->
<script>
function getCookie(name)
{
var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
if(arr=document.cookie.match(reg))
return unescape(arr[2]);
else
return null;
}
/* try {
 	var yyhCookie = getCookie("customerLoginName");
 var imgsrc="http://mapping.yoyi.com.cn/s/mapping?tcl_id="+yyhCookie+"&ext=tcl";
 $("body").append("<img src="+imgsrc+" style='display:none'/>");
 }catch(e){
	 console.log(e.name);
 }  */
/*品友互动 start  */
try {
 var imgsrctwo="http://cm.ipinyou.com/xcms/tcl/s.gif?tid="+yyhCookie;
 $("body").append("<img src="+imgsrctwo+" style='display:none'/>");
 }catch(e){
	 console.log(e.name);
 } 
/*品友互动 end  */
 
 
</script>
<!--悠易监测 end -->	


<!-- footer html end -->
<div class="footer">
	<div>
		<div class="foot-logo"><img src="http://www.tcl.com:80/static/frontpage/common2/img/logo.png" /></div>
		<p class="blod"><a target="_blank"  href="http://www.tcl.com/group/companyInfo/index">关于TCL</a>   |   <a target="_blank"  href="http://www.tcl.com/group/societyDuty/index">社会责任</a>   |   <a target="_blank"  href="http://www.tcl.com/group/investors/index">投资者关系</a>   |   <a target="_blank"  href="http://www.tcl.com/group/news/index">新闻中心</a>   |   <a target="_blank"  href="/dealer/toLogin">经销商之家</a>   |   <a target="_blank" href="http://www.tcl.com:80/bulkpurchase/service">大宗采购</a>   |   <a href="http://www.tcl.com/group/companyInfo/slipPath?type=5">法律声明</a>   |   <a href="http://www.tcl.com/group/companyInfo/slipPath?type=4">隐私保护</a>   |   <a href="http://news.tcl.com/English.php/index/index.html">English</a></p>
		<p>©2010-2016 TCL CORPORATION All Rights Reserved.   <a target="_blank"  href="http://www.tcl.com:80/frontshow/content/getContent/bf9d8fe2ec834c178f7bd2ba2272adfa">使用条款</a>   TCL集团股份有限公司版权所有  粤ICP备05040863号</p>
		<div class="foot-r"> <span><em>&#xe63a;</em></span>诚信网站</div>
	</div>
</div>
<!-- footer html end -->