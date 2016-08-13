 $(function(){
     $.getJSON(jsContextPath + "getHotKeyWord",{},function(data){
    	 var divHotKey = $(".hot-words");  
    	 $.each(data , function(i , item){
    		 var a = $("<a></a>").attr("href" , "javascript:toSearch('" + item + "');").text(item);
    		 divHotKey.append($("<span></span>").html(a));
    	   });
     });
     //点击搜索
     $(".nav-saerch").on('keydown', function(e){
		if(e.keyCode == 13){
			toSearch();
		}
	  });
     $(document).on('click', '.saerch .fr', function(){
    	 toSearch();
     });

    //点击购物车 这里从写购物车图标点击事件
  	//重新绑定头部购物车点击事件
    $(document).off('click', '.shoping');
    $(document).on('click', '.shoping', function(event){
 		//event.stopPropagation();
 		//获取购物车数据,在platTopCart.js
 		//cartshow();
 		//$('.cart').show();
 		//显示购物车左侧块，在index.js中
 		//showSlide();
    	window.location.href = jsContextPath + "/cart/cartshowKuyu";
 	 });
 	 
 	 //首页左侧登录窗口，重新绑定注册和忘记密码按钮事件
 	$(document).off('click', '.log');
 	$(document).off('forgetPwd', '.log');
 	$(document).on('click', '.log', function(){
		window.location.href = jsContextPath + "/tclcustomerregist/tocloudRegister";
	}).on('click', '.forgetPwd', function(){
		window.location.href = jsContextPath + "/tclcustomerresetpassword/toresetpassword";
	});
 	 //头部悬浮商品加载
 	$(".header .menu-list").load(jsContextPath + "/platTopCart/getHeadFloatProduct");
 	
 	$("#span_customerName").click(function(){
 		$(this).prev().trigger("click");
 	});
 });
 //执行搜索
 function toSearch(hotkeyword){
	 //不为空，则是从点击热门搜索词
	 var keyword;
	 if(hotkeyword){
		 keyword = hotkeyword;
	 }
	 else{
		 var inputSearch = $(".nav-saerch");
		 keyword =  inputSearch.val();
		 var ovalue =  inputSearch.attr("ovalue");
		 if(keyword == ovalue){
			    inputSearch.focus();
				return;
		 }
	 }
	window.location.href = jsContextPath + "/front/productList/toProductListKuyu?keyword="+encodeURI(encodeURI(keyword))+"&sortBy=sortWeight";
 }
 //检查是否登陆 callBack是传入如果已经登陆的操作
 function loginCheckAndHandle(callBack){
		var loginUrl = jsContextPath + "/cart/isLogin";
		$.get(loginUrl,{ranNum:Math.random()} ,function(data){				
			if("0"==data) {
				var returnhref = jsContextPath + "/tclcustomer/toLoginKuyu?backUrl="+window.location.href;
				//如果是商品详情页的收藏跳转的登录
				if(returnhref.indexOf("front/product/toProduct") != "-1"){
					returnhref = returnhref + "?collect=1";
				}
				window.location.href = returnhref;
			}else{
				if(callBack)callBack();
				//$("#cartForm").submit() ;
			}
		});	
 }

/**
 * 收藏商品
 * @param productUuid 商品uuid
 * @param callback 调用收藏接口后需要执行的回调方法
 */
 function collectProduct(productUuid , callback){
  	loginCheckAndHandle(function(){
 		var url = jsContextPath + "/usercenter/productfavorite/collectProductKuyu";
 		$.post(url,{uuid:productUuid,ranNum:Math.random()},function(data){
 			if(data == "1"){
 				plugin.Alert({
 					content: "收藏成功！",
 					okText : "确认",
 					cancelText: "关闭"
 				});
 				if(callback)callback();
 			}
 				
 		}); 
 	});	 
 		
 }
 /**
  * 取消收藏商品
  * @param productUuid 商品uuid
  * @param callback 调用收藏接口后需要执行的回调方法
  */
 function cancelFavorite(productUuid , callback){
 	loginCheckAndHandle(function(){
 		var checkIds = "";
 		if(productUuid){
 			checkIds = productUuid;
 		}
 		if($.trim(checkIds) == "") {
 			//提示为空
 			alert("请选择要取消的收藏的商品") ;
 			return ;
 		} 
		var url = jsContextPath + "/usercenter/productfavorite/cancelFavoriteKuyu";
    	$.get(url,{"productUuid":checkIds,"ranNum":Math.random()},function(data){
    		var txt = "";
    		if(data=="success"){
    			txt = '取消收藏成功!';
    			if(callback)callback();
    		}else{
    			txt = '取消收藏失败!';
    		}
    		plugin.Alert({
				content: txt,
				okText : "确认",
				cancelText: "关闭"
			});
    	});//get
 	});
 }