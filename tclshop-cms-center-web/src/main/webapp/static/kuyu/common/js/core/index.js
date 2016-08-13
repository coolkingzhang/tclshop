//获取文档的高宽
var width = $('body').width();
var height = $('body').height();
var flex = true;
$(function(){
	
	
	var nav = []; //['ds','sj','kt','bx','xij','jk','fw','sq'];
	var menubool = false;
	var brow = browser();
	
	$('.menu>div').each(function(){
		var name = $(this).attr('class');
		nav.push(name);
	});
	

	getPrice();
	
	//初始化购物车位置
	//初始化评论背景位置
	// if(brow=='IE8'){
	// 	$('.slidebar').css('left', cart);
	// }else{
	// 	$('.slidebar').css('-webkit-transform', 'translate3d(' + cart + ', 0px, 0px)');
	// 	$('.slidebar').css('transform', 'translate3d(' + cart + ', 0px, 0px)');
	// 	$('.slidebar').css('-ms-transform', 'translate3d(' + cart + ', 0px, 0px)');


	// }
	//初始化可移动图片的宽度
	//设置banner区域高度不超过900
	// var moveimg = width*0.36 + 'px';
	var marginT = height >900 ? 900 : height;
	// $('.moveimg').css({width: moveimg});
//	$('.visual').css('margin-top', marginT+'px');
	if(brow == 'IE8'){
		$('.fans-list').find('.fans-item').hide();
		$('.fans-list').find('.fans-item').eq(0).show();
		
		$(document).on('click', '.fans .point-item', function(){
			var index = $(this).index();
			$(this).addClass('active').siblings().removeClass('active');
			$('.fans-list').find('.fans-item').hide();
			$('.fans-list').find('.fans-item').eq(index).show();
			
		});
	};
  //热区活动的tab切换
	$(document).on('mouseover', '.hot-ul>li', function(){
		var i = $(this).index('.hot-ul>li');
		$(this).siblings().removeClass('active');
		$(this).addClass('active');
	    $('.exhibition ul').eq(i).show().siblings('ul').hide();
	});

	//导航菜单移入显示菜单
	var $left = 0
		,$width = 0
	   ,$clas =null
	   ,$Last = null
	   ,$current= null
	   ,show_timer= null
	   ,hide_timer = null;
	   
	$('.menu>div').hover(function(){
		$left = $(this).position().left;
		$width = $(this).width()+32;
		$('.menu').find('i').css({width:$width, left: $left, bottom: '0px'});
		if($(this).attr('class')){
			$clas = $(this).attr('class').split(' ')[0];
			$current = $(this);
			if(!Array.indexOf){
				Array.prototype.indexOf = function(obj){
					for(var i=0; i<this.length; i++){
						if(this[i]==obj){
							return i;
						}
					}
					return -1;
				}
			}
			
			if(nav.indexOf($clas)>-1 && $current != $Last){
				clearTimeout(hide_timer);
				var menuchild = $('.menu-list').find('.'+$clas).length;
				if ($Last){
					$Last.removeClass('active');
					$('.menu-list').find('div').hide();
					$('.menu-list').find('.'+$clas).show();
				} 
				if(menuchild !=0){
					clearTimeout(show_timer);
					show_timer = setTimeout(function(){
						
						$current.addClass('active');
						$('.menu-list').show();
						$('.nav-bor').addClass('border');
						if ($('.menu-list').children('div').hasClass($clas)) {
							$('.menu-list').stop().animate({
								height: 210+'px'
							}, 260);
							$('.menu-list').find('.'+$clas).show();
						}
					},500);
				}
				else {
					$('.menu-list').stop().animate({
						height: 0+'px'
					}, 150, function(){
						$('.nav-bor').removeClass('border');
						$('.menu-list').hide();
						$('.menu-list').find('div').hide();
					});
				}

			}
			else{
				$Last.removeClass('active');
			}
			
		}

	}, function(){
		$Last = $current;
		clearTimeout(show_timer);
		hide_timer = setTimeout(function(){
			$('.menu').find('i').removeAttr('style');
			if($current && $current.hasClass('active')){
				$current.removeClass('active');
			}
			$('.menu-list').stop().animate({
				height: 0+'px'
			}, 150, function(){
				$('.nav-bor').removeClass('border');
				$('.menu-list').hide();
				$('.menu-list').find('div').hide();
			});
		},300);
	});
	$('.menu-list').hover(function(){
		$('.menu').find('i').css({width:$width, left: $left, bottom: '0px'});
		$current.addClass('active');
		clearTimeout(hide_timer);
		$('.nav-bor').addClass('border');
		$('.menu-list').stop().animate({
			height: 210+'px'
		}, 260);
		$('.menu-list').find('.'+$clas).show();
	}, function(){
		$Last = $current;
		clearTimeout(show_timer);
		hide_timer = setTimeout(function(){
			$('.menu').find('i').removeAttr('style');
			$Last.removeClass('active');
			$('.menu-list').stop().animate({
				height: 0+'px'
			}, 150, function(){
				$('.nav-bor').removeClass('border');
				$('.menu-list').hide();
				$('.menu-list').find('div').hide();
				$current = null;
			});
		}, 300);
		// $('.menu-list').removeClass('driftY');
	});

	var $cls = ['sear','nav-saerch','admin'];
	//点击搜索
	$(document).on('click', '.sear', function(event){
		event.stopPropagation();
		if($('.nav-saerch').val()){
			$('.nav-saerch').val('');
		}
		$('.header').addClass('scale');
		if(brow=='IE8'){
			$('.mask').css({filter: 'alpha(opacity=80)', zIndex: 2000, display: 'block'});
			$('.saerch, .nav-bor .close').css({filter: 'alpha(opacity=100)', zIndex: 10, display: 'block'});
		}
		else {
			$('.mask, .saerch').css({display: 'block', zIndex: 2000, opacity: 0.8});
			$('.saerch, .nav-bor .close').css({opacity: 1, zIndex: 10, display: 'block'});
		}
		$('.nav-bor .close').show();
		$('body').addClass('hidescroll');
		
		$('.nav-saerch').focus();
		setTimeout(function(){
			$('.scale .menu').hide();
		},600);
	});
	//当在驶入框中输入内容是，热点关键词渐隐藏
	//点击热点搜索关键词时，将关键词填充到输入框
	$(document).on('keyup', '.nav-saerch', function(event){
		event.stopPropagation();
		var self = $(this);
		setTimeout(function(){
			var val = self.val();
			if(val!=''){
				$('.hot-words').css({opacity: 0,zIndex:-2});
			}
			else{
				$('.hot-words').css({opacity: 1,zIndex:200});
			}
		},10);
	}).on('click', '.hot-words>span', function(){
		$('.nav-saerch').val($(this).text()).focus();
		$('.hot-words').css({opacity: 0,zIndex:-2});
	});


	//点击购物车
	//关闭购物车
	//购物车产品列表切换
	$(document).on('click', '.shoping', function(event){
//		event.stopPropagation();
//		$('.cart, .slidebar .close').show();
//		showSlide();
		
	}).on('click', '.close, .mask', function(event){
		event.stopPropagation();
		var curr = $(event.target).attr('class');
		var cart = width + $('.slidebar').width() + 'px';
		$('body').removeAttr('class'); 
		$("body").removeAttr("style");
		$('.header').removeClass('scale');
		$('.header').css({left: '0px'});
		$('.cart, .login, .regist').css({right: '-450px'});
		$('.slidebar .close').hide();
		if(brow=='IE8'){
			$('body').css({left: '0px'});
		}
		else{
			$('body').css({left: '0px'});

		}
		$('.nav-bor .close').css({opacity: 0});
		$('.header .menu').show();
//		$('.header').css({left: '0px'});
		if($('.agreement')){
			$('.agreement, .mask, .saerch, .nav-bor .close').css({opacity: 0, zIndex: -1});
		}
		setTimeout(function(){
			$('.cart, .login, .regist').hide();
			$('.mask').css({zIndex: -1});
			if($('.agreement')){
				$('.agreement').hide();
			}
		}, 320);
	}).on('click', '.page>span', function(){
		$(this).addClass('active').siblings().removeClass('active');
	});
	
	//点击登录和注册
	$(document).on('click', '.admin', function(){
		var jifenUrl = jsContextPath +"/usercenter/tclcustomer/getIntegralFromMassMember";
		$.getJSON(jifenUrl,{ranNum:Math.random() } ,function(data){
			if(data!=null){
				$("#jifen").html(data.integral) ;//用户积分
			}
		});
	
		var couponurl = jsContextPath +"/usercenter/tclcustomer/getCouponCount";
		$.getJSON(couponurl,{ranNum:Math.random() } ,function(data){	
			if(data!=null){
				$("#coupon").html(data.couponNum) ;//用户积分
			}
		});
	
		$('.login, .slidebar .close').show();
		showSlide();
	});
	//登录和注册切换
	$(document).on('click', '.log', function(){
//		$('.regist').show();
//		$('.login').hide();
	}).on('click', '.regis', function(){
//		$('.login').show();
//		$('.regist').hide();
	});
	//点击删除， 删除购物车里面的产品
	$(document).on('click', '.del', function(){
		$(this).parents('.cart-dl').slideUp(260, function(){
			$(this).remove();
		});
	});

	$(document).on('mouseover', '.price-section>span', function(){
		var left = -(42 -  $(this).position().left + 5) + 'px';
		$('.price-section').find('.prompt').css({
			display: 'block',
			left: left
		});
	}).on('mouseout', '.price-section>span', function(){
		$('.price-section').find('.prompt').hide();
	});


	//当页面滚动式，监听滚动高度
	var $sctollTop = parseInt($(window).scrollTop());
	if($sctollTop && $('.visual').length>0){
		$('.header').addClass('fixed');
	}
	$(window).on('scroll', function(){
		var $scrollT = parseInt($(window).scrollTop());
		if($scrollT!=0){
			$('.header').addClass('fixed');
		}
		else{
			$('.header').removeClass('fixed'); 
		}
		var top = $scrollT/3*2 + 'px';
		if(brow=='IE8'){
			$('.banner').css('top', top +'px');
		}
		else{
			$('.banner').css('transform', 'translate3d( 0px, ' + top + ', 0px)');
			$('.banner').css('-ms-transform', 'translate3d( 0px, ' + top + ', 0px)');
			$('.banner').css('-webkit-transform', 'translate3d( 0px, ' + top + ', 0px)');
		}
		if ($scrollT>500) {
			$('.goTop').show();
		}
		else{
			$('.goTop').hide();	
		}
		//滚动式初始化购物车和遮罩层位置
		// $('.mask, .slidebar').css({top: $scrollT +'px'});
		
	});

	$(window).on('resize', function(){
		if($(".exhibition").length>0){
			commentSize();	
		}
		if($('.visual').length>0){
			var top = $('.banner').find('.bannerImg').height();
			$('.banner').height(top);
			$('.visual').css({marginTop: top+60}); 
		}
		setTimeout(function(){
			if($('.visual').length>0){
				commentSize();
			}
		}, 1500);
	});	 

	function commentSize(){
		var exwidth = $(".exhibition").width() / 4 - 14;
		var exheight = $('.exhibition li:eq(2)>div').height();
		
		$('.comment').css({
			left: exwidth + 'px',
			top: exheight + 'px',
			borderBottomWidth: exheight+'px',
			borderLeftWidth: exwidth+'px'
		});
	}   	
});
//产品获取价格 注释掉获取价格的方法 add by dufy 2016.06.28
//function getPriceByUuid(uuid){
//	/* if(uuid.indexOf("to") > 0) {   
//		$("span[sid='price_"+uuid+"']").html("¥ 3999元");
//		return;
//	} */
//	if(uuid != "" && typeof(uuid) !="undefined" && uuid.length==32 && uuid.indexOf(".jsp")<0 && uuid.indexOf(".html")<0) {
//	//$.getJSON("${pageContext.servletContext.contextPath}/front/product/getPromotionsByProvince",
//	$.getJSON(jsContextPath+"/front/product/getPromotionsByProductUuid",
//			{"productUuid" : uuid,"privonceId":"","time":Math.random()},
//			function(data){
//				var price = data.productPrice;
//				if(data.promotion){
//					price = data.promotion.price;
//				}
//				if(price !="" && typeof(price) != "undefined") {
//					$("span[sid='price_"+uuid+"']").html("");
//					$("span[sid='price_"+uuid+"']").html("" + price + "元");
//				}
//			});
//		}
//}

function browser(){
	// return null;
	var userAgent = navigator.userAgent;
	var isOpera = userAgent.indexOf('Opera')!=-1
	if (isOpera){
		return 'Opera';
	}
	if (userAgent.indexOf('Firefox')!=-1){
		return 'Firefox';
	}
	if (userAgent.indexOf('Chrome')!=-1){
		return 'Chrome';
	}
	if (userAgent.indexOf('Safari')!=-1){
		return 'Safari';
	}
	if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera) {
        // return "IE";
	    if(navigator.userAgent.indexOf("MSIE 8.0")>0)  
	    {  
			return "IE8";
	    }   
	    return 'IE';

	}; 
}

function showSlide(){
	var brow = browser();
	var cart = (width- $('.slidebar').width())+ 'px';
	if($('.header').css('position')=='fixed'){
		$('.header').css({left: '-450px'});
	}
	$('.cart, .login, .regist').css({right: '0px'});
	if(brow=='IE8'){
		$('body').css({left: '-450px'});
		$('body').css({overflow: 'hidden'});
		$('.mask').css({filter: 'alpha(opacity=80)', zIndex: 2000, display: 'block'});
	}
	else{
		$('.mask').css({opacity: 0.8, zIndex: 2000, display: 'block'});
		$('body').css({left: '-450px'});
		$('body').css({overflow: 'hidden'});		
	}
	
	// $('body').addClass('hidescroll'); 
}


//明星产品获取价格  注释掉获取价格的方法 add by dufy 2016.06.28
//function getPrice(uuid, secondTitle){
//	if(secondTitle.indexOf('¥') > -1){
//		return  false;
//	}
//	if(uuid != "" && typeof(uuid) !="undefined" && uuid.length==32 && uuid.indexOf(".jsp")<0 && uuid.indexOf(".html")<0) {
//		//$.getJSON("${pageContext.servletContext.contextPath}/front/product/getPromotionsByProvince",
//		$.getJSON(jsContextPath+"/front/product/getPromotionsByProductUuid",
//			{"productUuid" : uuid,"privonceId":"","time":Math.random()},
//			function(data){
//				var price = data.productPrice;
//				if(data.promotion){
//					price = data.promotion.price;
//			}
//			$("span[pid='price_"+uuid+"']").html("¥" + price);
//		});
//	}
//}

function makeService(val){
	var url="${pageContext.servletContext.contextPath}/servicecenter/makeService1";
	$.ajaxSettings.async = false;
	$.getJSON(url,{ranNum:Math.random()},function(data){
		if(!data.rsp){
			location.href=data.accountLoginUrl + location.href;
		}else{
			location.href= "${pageContext.servletContext.contextPath}/servicecenter/makeService?serviceTypeTitle="+val;
		}
	});
}

/**
 * 获取商品首页价格，带有 span[product_price] 
 * 每二十个商品请求获取一次
 */
function getPrice(){
	var size = 20;
	var countSum = $('span[product_price]').length;
	var uuids="";
	$('span[product_price]').each(function(index , item){
		var uuid = $(item).attr("product_price");
		if(uuid != "" && typeof(uuid) !="undefined" && uuid.length==32 && uuid.indexOf(".jsp")<0 && uuid.indexOf(".html")<0) {
			uuids += uuid+",";
		}
		if((index+1)%size ==0 || countSum == (index+1)){
			getProductPriceByUuid(uuids);
			uuids = "";
		}
		
	});
}
/**
 * 通过商品uuid获取商品的价格
 * @param uuids
 */
function getProductPriceByUuid(uuids){
	$.post(jsContextPath+"/front/product/getProductPriceByProductUuid",
			{"productUuids" : uuids,"privonceId":"","time":Math.random()},
			function(data){
				if(data.code==0){
					var length = data.data.length;
					for(var i = 0;i<length;i++){
						var price = data.data[i].productPrice;
						if(data.data[i].promotionPrice){
							price = data.data[i].promotionPrice;
						}
						if(price !="" && typeof(price) != "undefined") {
							$("span[product_price='"+data.data[i].productUuid+"']").html("" + price + "元");
						}
					}
				}
		});
}

