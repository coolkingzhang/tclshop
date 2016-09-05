<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>





                        
           


<!-- IE版本判断，版本IE7以下页面跳转 -->
<!--[if lte IE 7]>
     <div class="updata-brower" style="height: 60px;line-height: 60px;
    background: #F5F0E1; color: #A28102; border-bottom: 1px solid #eee; font-size: 14px; position: relative; z-index: 999;text-align: center;">
     	<p class="updata-brower-tip">为了获得更好的浏览体验，请升级您的浏览器  
	     	<a href="browser/upgrade.jsp" class="go-brower" style="color: #FF0000; margin: 0 10px;">升级</a>   
	     	<a href="javascript:;" class="no-brower" style="color: #999;">继续使用</a>
	     <p>
     </div>
    <script>
    	$(function() {
	    	$(".no-brower").click(function() {
	    		$(".updata-brower").slideUp();
	    	})
    	})
    </script> 
<![endif]-->  

    <link rel="icon" href="http://www.tcl.com:80/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="http://www.tcl.com:80/favicon.ico" type="image/x-icon">   
<!-- 百度统计 start --> 
 <script>
	var _hmt = _hmt || [];
	(function() {
	  var hm = document.createElement("script");
	  hm.src = "//hm.baidu.com/hm.js?694df7a62c6407bdb5e2aacfe4c22bf9";
	  var s = document.getElementsByTagName("script")[0]; 
	  s.parentNode.insertBefore(hm, s);
	})();
</script>
<script type="text/javascript" src="http://www.tcl.com:80/static/kuyu/common/js/core/jquery-1.9.1.min.js"></script>
<!-- 百度统计 end -->
 <!-- Top html start -->
	<div class="header translucent">
		<div class="nav">
			<div class="nav-bor">
				<span class="close">&#xe60f;</span>
				<div class="nav-bar">
					<div class="hea-box"><a href="http://www.tcl.com:80/index.jsp"><img src="http://www.tcl.com:80/static/kuyu/common/img/logo.png" /></a></div>
					<div class="hea-box hot"></div>
					<div class="saerch">
						<input type="text" class="nav-saerch"   value="" placeholder="输入查询的商品"/>
						<span class="fr">&#xe614;</span>
						<div class="hot-words">
						</div>
					</div>
					<div class="fr">
						





<div class="menu">
	<i></i>
	<!-- <div class="all"><a href="#" >全部商品</a><i></i></div> -->
	<div class="ds" ><a href="http://www.tcl.com:80/tclchannel/toTV" >电视</a></div>
	<div class="sj" ><a href="http://www.tcl.com:80/tclchannel/toMobile" >手机</a></div>
	<div class="kt" ><a href="http://www.tcl.com:80/tclchannel/toAir" >空调</a></div>
    <div class="bx" ><a href="http://www.tcl.com:80/tclchannel/toIcebox" >冰箱</a></div>
 	<div class="xij" ><a href="http://www.tcl.com:80/tclchannel/toIceWash" >洗衣机</a></div>
	<div class="jk" ><a href="http://www.tcl.com:80/tclchannel/toStoreHome" >健康电器</a></div>
	<div class="fw" ><a href="http://www.tcl.com:80/tclchannel/toService" target="_blank">服务</a></div>
	<div class="sq"><a href="http://fans.tcl.com/" target="_blank">社区</a></div>
	<div class="jf"><a href="http://hy.tcl.com/" target="_blank">积分兑换</a></div>
	<div class="xw"><a href="http://www.tcl.com/group/index" target="_blank">新闻动态</a></div>
</div>
<script type="text/javascript" src="http://www.tcl.com:80/static/kuyu/common/js/core/jquery.cookie.js"></script>
						<div class="nav-r fl">
							<span class="sear">&#xe614;</span>
							
								<span  class="shoping">&#xe60c;</span>
						    
							<span class="admin">&#xe624;</span>
							<font id="span_customerName" title="">
								
							</font>
						</div>
					</div>
				</div>
				
			</div>
			<div class="menu-list">


                        
 




<!-- <script type="text/javascript">
function getPriceByUuidHeadItem(uuid){
	
	//param_paramhead_param_-514b023d7a6d4782bb28b7186d0b622b
	/* var parmVal = $("#param_paramhead_param_-" + uuid).val();
	if(typeof(parmVal) !="undefined" && parmVal != "") {
		$("#plathead_"+uuid).html("" + parmVal + "元");
		return false;
	} */
	
	if(uuid != "" && typeof(uuid) !="undefined") {
	$.getJSON("/front/product/getPromotionsByProductUuid",
			{"productUuid" : uuid,"privonceId":"","time":Math.random()},
			function(data){
				var price = data.productPrice;
				if(data.promotion){
					price = data.promotion.price;
				}
				if(price !="" && typeof(price) != "undefined") {
					$("#plathead_"+uuid).html("" + price + "元");
					//console.log(uuid + " : " + price);
				}
			});
		}
}
</script> -->


<div class="xij">
	<ul>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/e44d490c208146569b7c55506eb1aee1">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116265.fid" /></span>
				 <p class="m_tit">德国工艺波轮7公斤</p>

				 <p class="red" id="plathead_e44d490c208146569b7c55506eb1aee1">
				 	 
	 					 
  						 
  						 	899元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('e44d490c208146569b7c55506eb1aee1');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/6bd84c870fef424d81c6b8e0c546e140">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116264.fid" /></span>
				 <p class="m_tit">德国工艺波轮 6公斤</p>

				 <p class="red" id="plathead_6bd84c870fef424d81c6b8e0c546e140">
				 	 
	 					 
  						 
  						 	749元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('6bd84c870fef424d81c6b8e0c546e140');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/9e8fc39599fe49339fc453082ee0731f">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/155/0000155360.fid" /></span>
				 <p class="m_tit">家用节能变频滚筒 8公斤</p>

				 <p class="red" id="plathead_9e8fc39599fe49339fc453082ee0731f">
				 	 
	 					 
  						 
  						 	1699元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('9e8fc39599fe49339fc453082ee0731f');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/eba962e6c6f64b218dc5db1a4ff6466b">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116267.fid" /></span>
				 <p class="m_tit">大屏滚筒 7公斤</p>

				 <p class="red" id="plathead_eba962e6c6f64b218dc5db1a4ff6466b">
				 	 
	 					 
  						 
  						 	1299元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('eba962e6c6f64b218dc5db1a4ff6466b');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/4f875fbea2184a2aa1f1928ca64477d0">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116266.fid" /></span>
				 <p class="m_tit">大容量的波轮 8公斤</p>

				 <p class="red" id="plathead_4f875fbea2184a2aa1f1928ca64477d0">
				 	 
	 					 
  						 
  						 	999元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('4f875fbea2184a2aa1f1928ca64477d0');
				 </script> -->
				</a>
			</li>
		
	</ul>
</div>



<div class="kt">
	<ul>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProductKuyu/e8a8c2c77ba1438f9fe27c551557154e">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/155/0000155452.fid" /></span>
				 <p class="m_tit">智能云钛金节能型 1.5匹</p>

				 <p class="red" id="plathead_e8a8c2c77ba1438f9fe27c551557154e">
				 	 
	 					 
  						 
  						 	1899元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('e8a8c2c77ba1438f9fe27c551557154e');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProductKuyu/28ca18b4b8a545cc8dbafe02905ef228">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116255.fid" /></span>
				 <p class="m_tit">北斗天玑智能钛金 大2匹</p>

				 <p class="red" id="plathead_28ca18b4b8a545cc8dbafe02905ef228">
				 	 
	 					 
  						 
  						 	3999元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('28ca18b4b8a545cc8dbafe02905ef228');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/79075d3ecd324fe582b801097a0ad144">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116251.fid" /></span>
				 <p class="m_tit">单冷型移动空调 小1匹</p>

				 <p class="red" id="plathead_79075d3ecd324fe582b801097a0ad144">
				 	 
	 					 
  						 
  						 	1899元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('79075d3ecd324fe582b801097a0ad144');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/d88b3abd95c540dfbc05436513e8bbb2">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116256.fid" /></span>
				 <p class="m_tit">天阔 纯铜冷暖 大1.5匹</p>

				 <p class="red" id="plathead_d88b3abd95c540dfbc05436513e8bbb2">
				 	 
	 					 
  						 
  						 	1799元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('d88b3abd95c540dfbc05436513e8bbb2');
				 </script> -->
				</a>
			</li>
		
	</ul>
</div>



<div class="bx">
	<ul>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/312585b66f8c482e99c3778e140c4323">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116179.fid" /></span>
				 <p class="m_tit">精准控温对开门 515L</p>

				 <p class="red" id="plathead_312585b66f8c482e99c3778e140c4323">
				 	 
	 					 
  						 
  						 	2699元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('312585b66f8c482e99c3778e140c4323');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/8791e668a1294cf886f47b7681c88ec8">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116061.fid" /></span>
				 <p class="m_tit">家用小双门 芭蕾白 118L</p>

				 <p class="red" id="plathead_8791e668a1294cf886f47b7681c88ec8">
				 	 
	 					 
  						 
  						 	699元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('8791e668a1294cf886f47b7681c88ec8');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/931674b455924694aea8538e39a3e957">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116125.fid" /></span>
				 <p class="m_tit">德式经典三门 205L</p>

				 <p class="red" id="plathead_931674b455924694aea8538e39a3e957">
				 	 
	 					 
  						 
  						 	1099元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('931674b455924694aea8538e39a3e957');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/f0fcdee9bd0043b1b657d8de8e8d2cc8">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116178.fid" /></span>
				 <p class="m_tit">法式智能多门 288L</p>

				 <p class="red" id="plathead_f0fcdee9bd0043b1b657d8de8e8d2cc8">
				 	 
	 					 
  						 
  						 	1999元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('f0fcdee9bd0043b1b657d8de8e8d2cc8');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/3b1afd7a1daa48bb96e97afb7aeadfd4">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116064.fid" /></span>
				 <p class="m_tit">德式经典双门 171L</p>

				 <p class="red" id="plathead_3b1afd7a1daa48bb96e97afb7aeadfd4">
				 	 
	 					 
  						 
  						 	899元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('3b1afd7a1daa48bb96e97afb7aeadfd4');
				 </script> -->
				</a>
			</li>
		
	</ul>
</div>



<div class="sj">
	<ul>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProductKuyu/37f11efdd26d4c0b8856a51d05724759">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116261.fid" /></span>
				 <p class="m_tit">老人机升级版 纯净白</p>

				 <p class="red" id="plathead_37f11efdd26d4c0b8856a51d05724759">
				 	 
	 					 
  						 
  						 	199元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('37f11efdd26d4c0b8856a51d05724759');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProductKuyu/e70bc3a70eb64986aa6c0ba3fbd78ff9">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/153/0000153553.fid" /></span>
				 <p class="m_tit">TCL-750 宛如初现  雅金</p>

				 <p class="red" id="plathead_e70bc3a70eb64986aa6c0ba3fbd78ff9">
				 	 
	 					 
  						 
  						 	1599元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('e70bc3a70eb64986aa6c0ba3fbd78ff9');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProductKuyu/6a3ba9861feb4c0196b0e15976661b97">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/155/0000155455.fid" /></span>
				 <p class="m_tit">TCL-750 宛如初现  月白</p>

				 <p class="red" id="plathead_6a3ba9861feb4c0196b0e15976661b97">
				 	 
	 					 
  						 
  						 	1599元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('6a3ba9861feb4c0196b0e15976661b97');
				 </script> -->
				</a>
			</li>
		
	</ul>
</div>



<div class="ds">
	<ul>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/750340a9b60f4272b035b7215f8afafa">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116634.fid" /></span>
				 <p class="m_tit">真4K 561系列 55英寸</p>

				 <p class="red" id="plathead_750340a9b60f4272b035b7215f8afafa">
				 	 
	 					 
  						 
  						 	2999元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('750340a9b60f4272b035b7215f8afafa');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/e07d222b1ab941aab7c7a37f5da7254f">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116631.fid" /></span>
				 <p class="m_tit">观影王高色域版55英寸</p>

				 <p class="red" id="plathead_e07d222b1ab941aab7c7a37f5da7254f">
				 	 
	 					 
  						 
  						 	3599元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('e07d222b1ab941aab7c7a37f5da7254f');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/29bf9d55ab4f49c6b71c0efce2ac5e43">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116632.fid" /></span>
				 <p class="m_tit"> 观影王曲面版 55英寸</p>

				 <p class="red" id="plathead_29bf9d55ab4f49c6b71c0efce2ac5e43">
				 	 
	 					 
  						 
  						 	4999元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('29bf9d55ab4f49c6b71c0efce2ac5e43');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/1ffa4ff89390411fba54aa75d4e539b6">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116630.fid" /></span>
				 <p class="m_tit">观影王2代纤薄版55英寸</p>

				 <p class="red" id="plathead_1ffa4ff89390411fba54aa75d4e539b6">
				 	 
	 					 
  						 
  						 	4999元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('1ffa4ff89390411fba54aa75d4e539b6');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/0ca46175908640d4ab3e21f323f747b0">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/155/0000155224.fid" /></span>
				 <p class="m_tit">观影王4K护眼版49英寸</p>

				 <p class="red" id="plathead_0ca46175908640d4ab3e21f323f747b0">
				 	 
	 					 
  						 
  						 	2549元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('0ca46175908640d4ab3e21f323f747b0');
				 </script> -->
				</a>
			</li>
		
	</ul>
</div>



<div class="jk">
	<ul>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/3dd64e3e1c784c828aba3d71f26a05c4">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116248.fid" /></span>
				 <p class="m_tit">全罩式RO智能净水机</p>

				 <p class="red" id="plathead_3dd64e3e1c784c828aba3d71f26a05c4">
				 	 
	 					 
  						 
  						 	1899元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('3dd64e3e1c784c828aba3d71f26a05c4');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/7a28a0ea9c844561957f734c959f7f97">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116249.fid" /></span>
				 <p class="m_tit">阿里云小智土豪金净化器</p>

				 <p class="red" id="plathead_7a28a0ea9c844561957f734c959f7f97">
				 	 
	 					 
  						 
  						 	899元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('7a28a0ea9c844561957f734c959f7f97');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/2d3748d909cf49008efc1c94e9a2c7f2">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116190.fid" /></span>
				 <p class="m_tit">床铺除螨仪 白色</p>

				 <p class="red" id="plathead_2d3748d909cf49008efc1c94e9a2c7f2">
				 	 
	 					 
  						 
  						 	399元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('2d3748d909cf49008efc1c94e9a2c7f2');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/b1fdae825a674a0fa588b6f2cafc8f16">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116191.fid" /></span>
				 <p class="m_tit">干湿两用 扫拖一体机</p>

				 <p class="red" id="plathead_b1fdae825a674a0fa588b6f2cafc8f16">
				 	 
	 					 
  						 
  						 	1099元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('b1fdae825a674a0fa588b6f2cafc8f16');
				 </script> -->
				</a>
			</li>
		
			<li>
				<a target="_blank" href="http://www.tcl.com/front/product/toProduct/42936c06da3a431aa2c29a6665487095">
				 <span class="m_img"><img src="http://img.mall.tcl.com/dev1/0/000/116/0000116250.fid" /></span>
				 <p class="m_tit">第三代原汁魔法师</p>

				 <p class="red" id="plathead_42936c06da3a431aa2c29a6665487095">
				 	 
	 					 
  						 
  						 	599元
 						  
					 
				 </p>

				 <!-- <script>
				 	getPriceByUuidHeadItem('42936c06da3a431aa2c29a6665487095');
				 </script> -->
				</a>
			</li>
		
	</ul>
</div>


<script>
var nav = ['ds','sj','kt','bx','xij','jk','fw','sq'];
</script>
				
			</div>
		</div>
	</div>
	<!-- Top html end -->
	
	
	<!-- Right slide bar html end -->
	<div class="mask"></div>
	<div class="slidebar">
		<!-- Shopping Cart html start -->
		<span class="close">&#xe60f;</span>
		<div class="cart" id="dvPlatTopCart">
			<h3 class="cart-head">
				<div class="black"><span class="shoping">&#xe60c;</span>我的购物车
					<img class="loading" style="display:none" src="http://www.tcl.com:80/static/usercenter/img/loading.gif"/>
				</div>
			</h3>
		</div>
		<!-- Shopping Cart html end -->
		<!-- Registration html start -->
		<div class="regist">
			<h3>
				<span class="shoping">&#xe624;</span>注册
			</h3>
			<div class="login-inp">
				<div><input type="text" placeholder="手机或邮箱"/></div>
				<div class="verify"><input type="text" placeholder="图片验证码"/><span><img src="http://www.tcl.com:80/static/kuyu/common/img/verify.gif" /></span></div>
				<div><input type="text" placeholder="密码6~16位，数字/字母/字符至少两种"/></div>
				<div><input type="text" placeholder="确认密码"/></div>
				<p class="grey">注册TCL，即表示同意TCL的用户协议。</p>
				<div><button class="buy zhuce">注册</button></div>
				<p class="login-text"><span class="fr regis">登录</span></p>
			</div>
		</div>
		<!-- Registration html end -->
		<!-- login html start -->
		<div class="login" id="slideLoginSide">

			 
 				<h3>
					<span class="shoping">&#xe624;</span>登录<img class="loading" style="display:none" src="http://www.tcl.com:80/static/usercenter/img/loading.gif"/>
				</h3>
	 			<div class="login-inp">
				    <span class="msg" style="color: red"></span>
					<div class="uname">
						<input type="text" name="loginName" id="loginName" placeholder="邮箱/手机号码/TCL账号" />
						<span class="msgLogin"></span>
					</div>
					<div class="upas">
						<input type="password" name="loginPwd" id="loginPwd" placeholder="密码" style="width: 300px;height: 52px;padding: 6px 10px;line-height: 40px;color: #333;margin-bottom: 20px;border: 1px solid #ccc;"/>
						<span class="msgPwd"></span>
					</div>
					<div class="verify dvVerify" style="display: none">
						<input type="hidden" name="captchakey" id="captchakey"/>
						<input type="text" name="validateCode" id="captchadata" placeholder="输入验证码" maxlength="4"/><span>
						<a href="javascript:getValidateCode();"><img src="" id="imgUrl"></a></span>
						<span class="msgValidateCode"></span>
					</div>
					
					<div class="ulog"><button class="buy" id="loginBtn">登录</button></div>
					<p class="login-text"><span class="fl log">注册TCL账号</span><span class="fr forgetPwd">忘记密码?</span></p>
				</div>
				<div class="quick-logon">
					<p class="title">其他登录方式</p>
					<ul>
						<li><a href="http://www.tcl.com:80/tclcustomer/toThirdLogin?type=1">&#xe628;</a></li>
						<li><a href="http://www.tcl.com:80/tclcustomer/toThirdLogin?type=2">&#xe629;</a></li>
						<li><a href="http://www.tcl.com:80/tclcustomer/toThirdLogin?type=3">&#xe62b;</a></li>
					</ul>
				</div>
 			
			
			
		</div>
		<input type="text" id="test"/>
		<!-- 判断是否已经登录，同步登录用于判断 -->
		<input type="hidden" name="userloginname" id="userloginname" value=""/>
		<input type="hidden" name="isRefresh" id="isRefresh" value="null"/>
		<!-- login html end -->
	</div>
		<!-- go to top html-->
	<div class="goTop"><a onclick="$('body,html').animate({scrollTop: 0 },500);"></a></div>
	<!-- go to top html-->
	<!-- 注入cookie-->
	<div id="insertc"></div>
	<script type="text/javascript" src="http://www.tcl.com:80/static/kuyu/common/js/core/sso.min.js"></script>  <!-- 同步登录 -->
	<script src="http://www.tcl.com:80/static/kuyu/common/js/components/base64.js"></script>
<script>

	function userInfo() {//异步获取用户登录状态
		var userInfoUrl = "http://www.tcl.com:80/tclcustomer/userInfo";
		$.get(userInfoUrl, {ranNum : Math.random()} ,function(data) {
			if(data != null) {
				if(data.indexOf('login-success') > -1) {
					//如是用户登录状态 则显示登录样式
					$("#slideLoginSide").html(data);
				}
			}
		});
	}

	$(function(){
		
			 	userInfo();//异步判断是否已登录，给外部子系统的头部才会执行此
		
		function ssoOK(data){  //登录成功
			if(null!=data){
				if("1"==data.status){  //验证成功
					 var userloginname=$('#userloginname').val();
					 if(!userloginname.length > 0){
						 userInfo();
					 }
				}
			 }
		}
		if($("#isRefresh").val() ==  "null"){
			//同步登录
			 $(window).bind("load",function(e){
					 sso.init({clientId: "14046695",jsonpURL:"https://login.tclclouds.com/account/verifyUsernameToken",localValidateUrl:"http://www.tcl.com:80/tclcustomer/syncLogin", callbacks: {ssoOK: ssoOK}});
			 });
		
		}
			
	});
	/* 刷新验证码 */
	function getValidateCode(){
		
		$.get("http://www.tcl.com:80/tclcustomerregist/getcaptcha",{ranNum:Math.random()},function(data){
			var result = eval("("+data+")");
			if(result.status == '1'){
				$("#imgUrl").attr("src",result.url);
				$("#captchakey").val(result.key);
			}
		});
			
	}	

	//:登录  
	$("#loginBtn").click(function(){
		var loginName = $("#loginName").val();
		var loginPwd = $("#loginPwd").val();
		var captchadata = $("#captchadata").val();
		var captchakey = $("#captchakey").val();
		if($.trim(loginName) == ""){
			$("#loginName").focus();
			$(".msgLogin").text("用户名不能为空!");
			setTimeout("$('.msgLogin').text('')",3000);
			return;
		}
		if($.trim(loginPwd) == ""){
			$("#loginPwd").focus();
			$(".msgPwd").text("密码不能为空!");
			setTimeout("$('.msgPwd').text('')",3000);
			return;
		}
		var hasVilidateCode = "false";
		if($(".dvVerify:visible").length > 0){
			hasVilidateCode = "true";
			if($.trim(captchadata) == ""){
				$("#captchadata").focus();
				$(".msgValidateCode").text("验证码不能为空!");
				setTimeout("$('.msgValidateCode').text('')",3000);
				return;
			}
		}
		loginName = base64encode(loginName);
		loginPwd = base64encode(loginPwd);
		toggleLoadding();
		var url = "http://www.tcl.com:80/tclcustomer/LoginKuyu"
			$.post(url,{"loginName":loginName,"pwd":loginPwd,"captchadata":captchadata,"captchakey":captchakey},
					function(data){
						var result = eval("("+data+")");
						if(result.success == "success"){
							var url=result.url;
							var username=result.username;
							var code=result.code;
							var appId=result.appId;
							var sign=result.sign;
							var baseUrl=url+"?username="+username+"&code="+code+"&appId="+appId+"&sign="+sign;
							try{
								//保存到cookie,在其他页面调用。
								setCookie("memberlogin_url",baseUrl,5 * 60);
							}
							catch(e){}
							jQuery('#insertc').html("<script src='"+baseUrl+"'><"+"/script>");
							var jifenUrl="http://www.tcl.com:80/usercenter/tclcustomer/getIntegralFromMassMember";
							$.getJSON(jifenUrl,{ranNum:Math.random() } ,function(data){
								if(data!=null){
									$("#jifen").html(data.integral) ;//用户积分
								}
							});
							var couponurl="http://www.tcl.com:80/usercenter/tclcustomer/getCouponCount";
							$.getJSON(couponurl,{ranNum:Math.random() } ,function(data){	
								if(data!=null){
									$("#coupon").html(data.couponNum) ;//用户积分
								}
							});

							//国双登录注册代码
							console.log("ffff")
							try {
								if (window._gsTracker) {
							        _gsTracker.track("/targetpage/loginOk");
							    }
							}catch(e) {console.log(e)}

							window.location.reload();
							//window.location.href= "/tclcustomer/toIndex";
						}else if(result.success == "error"){
							if(result.status ==  '-1'){
								$(".msg").text("密码或用户名不正确");
								getValidateCode();
								$(".dvVerify").show();
							}else if(result.status ==  '-5'){
								$(".msg").text("验证码错误");
								getValidateCode();
								$(".dvVerify").show();
							}else if(result.status ==  '-4'){//需要验证码
								getValidateCode();
								$(".msg").text("需要验证码");
								$(".dvVerify").show();
							}else if(result.status=='4'){
								getValidateCode();
								$(".msg").text("超过最大失败次数，已锁定");
								$(".dvVerify").show();
							}else{
								getValidateCode();
								$(".dvVerify").show();
								$(".msg").text("密码或用户名不正确");
							}
						}
						setTimeout("$('.msg').text('')",3000);

						toggleLoadding();
				});//post
	});
	$("#loginPwd").keydown(function(e){
		if(e.keyCode == 13){
			$("#loginBtn").trigger("click");
		}
	});
	
	 function toggleLoadding(){
	     $("img.loading").toggle();
	 }   
</script>
	
 
	<!--侧栏  end  -->
	<script type="text/javascript">
	$(function(){
		$("#adminLogin").click(function(){
			var loginHomePath = $("#loginHomePath").val();
			var loginAddress = "https://login.tclclouds.com/page/1.2/web/o2o_login.html";
			loginAddress = loginAddress + "?appid=14046695&callback=http://"+loginHomePath+"/tclcustomer/ssologin&returnUrl="+encodeURIComponent(window.top.location);
			var registerAddress = "https://login.tclclouds.com/page/1.2/web/o2o_register.html";
			registerAddress = registerAddress + "appid=14046695&callback=http://"+loginHomePath+"/tclcustomer/ssologin&returnUrl="+encodeURIComponent(window.top.location);
			$("#loginPath").attr('href',loginAddress);
			$("#registerPath").attr('href',registerAddress);
		});
		
		 var logincustomerName = $("#logincustomerName").val();
		 //如果用户的登录cookie被不正确删除，从后台异步获取登录信息
		 if(logincustomerName == ""){
			//头部显示个人信息栏
			 $.get("http://www.tcl.com:80/cart/ajaxtopcartshowKuyu?ranNum="+Math.random()+"&currentUrl="+encodeURIComponent(window.top.location)+"&currentUri="+encodeURIComponent('http://www.tcl.com/WEB-INF/jsp/kuyu/common/platHead.jsp'),
					function(data){
				 		$("#showPersonal").html("");//清空之前的html
						$("#showPersonal").html(data);
			});	
		}  
		 
	})
	</script>