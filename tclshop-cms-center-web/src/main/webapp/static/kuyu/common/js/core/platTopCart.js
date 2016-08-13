 function changeBuyNumByUpDown(type,stockId){
		var input = $("#" + stockId);
		var inputValue = input.val();
		inputValue = parseInt(inputValue);
		if(type == 0 && inputValue <= 1){
			return;
		}
		else if(type == 0){
			inputValue = inputValue - 1;
		}
		else{
			inputValue = inputValue + 1;
		}
		input.val(inputValue);
		input.blur();
}
 
//页面修改购买数量
 function ajaxChangeNum(operId ,changeNum,suitUuid) {		
 	//alert("${pageContext.request.contextPath}") ;
 	var changeNumUrl = jsContextPath + "/platTopCart/changeNumsKuyu" ;		
 	toggleLoadding();
 	$.post(changeNumUrl,{productIdAndAttrId:operId,changeNum:changeNum,ranNum:Math.random(),suitUuid:suitUuid} ,
 			function(data){
 		renderToHtml(data);
 		toggleLoadding();
 	});
 }
 
//删除购物车中的商品
 function ajaxRemove(operId,suitUuid) {		
 	var changeNumUrl = jsContextPath + "/platTopCart/removeKuyu" ;		
 	toggleLoadding();
 	$.post(changeNumUrl,{productIdAndAttrId:operId,suitUuid:suitUuid,ranNum:Math.random()} ,
 			function(data){
 		renderToHtml(data);
 		toggleLoadding();
 	})
 }
 
//获取购物车商品
 function cartshow(){
 	var url =  jsContextPath + "/platTopCart/cartshowKuyu" ;
 	toggleLoadding();
 	$.post(url , {} , function(data){
 		renderToHtml(data);
 		toggleLoadding();
 	});			
 }
//动态添加到dvPlatTopCart内容
 function renderToHtml(data){
		$("#dvPlatTopCart").children().each(function(){
 			if(!$(this).hasClass("cart-head")){
 				$(this).remove();
 			}
 		});
 		$("#dvPlatTopCart").append(data);
 		 //更新购物车内容块高度
//		var cartheight=parseInt($(window).height())-parseInt(320);//底部加上头部高度320
//		$('.cart-list').css('height',cartheight+'px');
 }
 //点击分页，切换数据
 function changePage(index){
	 var pageNo = index -1;
	 var dlNo = pageNo * 3;
	 var page = $("#dvPlatTopCart").find(".paging");
	 page.children().removeClass("active");
	 page.children().eq(pageNo).addClass("active");
	 var dl = $("#dvPlatTopCart").find(".cart-dl");
	 dl.hide();
	 dl.slice(dlNo , dlNo+3).show();
 }
 //头部滚动条显示
 function toggleLoadding(){
	 $("img.loading").toggle();
 }
 
 /** 方法定义 end */
 
 $(function(){
	 //绑定购物车购买数量文本框失去焦点事件，鼠标离开文本框触发，调用后台changeNums方法
	$("#dvPlatTopCart").on("blur", "[id^='stock_']", function(){				
		var operId = $(this).attr("id") ;		
		var buyNum = $(this).val().replace(/[^\d]/g, '');
		if(buyNum == "") {
			buyNum = 1 ;
		}		
		//套装活动需同时改变数量
		if($(this).attr("suitUuid")){
		    $("input[suitUuid='" + $(this).attr("suitUuid") + "']").val(buyNum)
		}
		else{
			$(this).val(buyNum);
		}			
		ajaxChangeNum(operId ,buyNum,$(this).attr("suitUuid")) ;	
	});
	
	//删除购物车商品  弹出确认是否删除框
	$("#dvPlatTopCart").on("click", "[id^='remove_']", function(){
			var operId = $(this).attr("id") ;							
			var suitUuid = $(this).attr("suitUuid") ;							
			
			ajaxRemove(operId,suitUuid) ;
	});
/*	//删除购物车中的商品
	$("#confirmRemove").click(function(){			
			var operId = $("#needRemoveId").val() ;
			var suitUuid = $("#suitUuid").val() ;
			
			$("#sure_modal").modal("hide");
 
			ajaxRemove(operId,suitUuid) ;
	});*/
 });
