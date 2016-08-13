/*
	***产品频道页面js代码***

	*价格区间的加载和选取
	*左侧菜单点击高亮
	*二级菜单点击收取
	*默认排序收缩
	*点击隐藏侧菜单

*/
//价格区间数据
var priceData = { "data": [
	{ 'label': '21%用户喜欢的价位', 'start':0, 'end': 870, 'percent': 21 },
	{ 'label': '42%用户喜欢的价位', 'start':870, 'end': 1950, 'percent': 42 },
	{ 'label': '26%用户喜欢的价位', 'start':1950, 'end': 3860, 'percent': 26 },
	{ 'label': '6%用户喜欢的价位', 'start':3860, 'end': 5860, 'percent': 6 },
	{ 'label': '4%用户喜欢的价位', 'start':5860, 'end': '' , 'percent': 4 }]
}
//根据转入的数据,加载价格选区模块
loadPlate.loadPriceModule('.price-section', priceData, function(){
	//执行回调函数
});
//选取价格区间
plugin.priceSort('.price-item', 'active', function(){
	//执行回调函数
});
//修改价格后取消高亮
$(document).on('keyup', '.price-start, .price-end', function(){
	var startVal = parseInt($('.price-start').val());
	var endVal = parseInt($('.price-end').val());

	$('.price-start').data('start',startVal);
	$('.price-end').data('end',endVal);

	$('.price-item').each(function(index){
		var start = parseInt($(this).data('start'));
		var end = parseInt($(this).data('end'));

		if(startVal==start && endVal==end){
			$(this).addClass('active');
			plugin.addSort(index);
		}
		else {
			$(this).removeClass('active');
			plugin.removeSort();
		}
	});
});

//点击将商品添加到对比
//点击删除时删除对比列表产品，并取消产品列表选择状态
$(document).on('click', '.compare', function(){

	var img = $(this).parents('li').find('commImg').attr('src');
	var name = $(this).parents('li').find('commImg').attr('src');
	var type = $(this).parents('li').data('type');

	if ($(this).hasClass('active')) {
		$(this).removeClass('active');

		$('.contr-list').find('li').each(function(){

			if ($(this).data('type')==type) {
				$(this).remove();
			}

			if ($('.contr-list').find('li').length==2){
				$('.contrast').find('span').addClass('red');
			}
			else if ($('.contr-list').find('li').length<2) {
				$('.contr-list').find('.font-text').show();
			};

		});

		var len = $('.contr-list').find('li').length;
		if (len>=3){
			$('.contrast').find('span').addClass('red');
		}
		else {
			$('.contrast').find('span').removeClass('red');
		}

		
		return false;

	};
	
	var contrast = '<li data-type="'+type+'"><div class="contr-item"><div class="img"><img src="static/img/sort01.png" width="70" height="70"></div>'+
				'<div class="text"><p class="excess">TCL58英寸真4K观影王</p><p>55吋</p></div>'+
				'<div class="del">&#xe63c;</div></div></li>';

	$(this).addClass('active');
	$('.contr-list').find('.font-text').hide();
	$('.contr-list').find('ul').append(contrast);

	var len = $('.contr-list').find('li').length;
	if (len>=3){
		$('.contrast').find('span').addClass('red');
	}
	else {
		$('.contrast').find('span').removeClass('red');
	}

}).on('click', '.contr-item .del', function(){

	var type = $(this).parents('li').data('type');

	$('.comm-r').find('li').each(function(){

		if ($(this).data('type')==type) {

			$(this).find('.compare').removeClass('active');

		};

	});

	$(this).parents('li').remove();
	var len = $('.contr-list').find('li').length;
	if (len==2){
		$('.contrast').find('span').removeClass('red');
	}
	else if (len<=1){
		$('.contr-list').find('.font-text').show();
	}
});

/*$(document).on('click', '.purc-start', function(){
	
	if ($(this).find('em').hasClass('active')) {
		$(this).find('em').removeClass('active');
	}
	else {
		$(this).find('em').addClass('active');
	}
	
});*/
//点击后被点击的元素高亮显示
plugin.clickLight('.side-list li>span', 'active', function(el, text){
	//执行回调函数
	var text = text.split(' ')[0];
	$('.crumbs').find('a').text(text);
	$('.crumbs').find('a, .badge').addClass('active');
});
//点击取消面包屑
$(document).on('click', '.crumbs .badge', function(){
	$('.crumbs').find('a, .badge').removeClass('active');
	$('.side-list').find('li').removeClass('active');
});

//点击后点击后二级菜单收起
plugin.clickSlide('.comm-l .side-title', '.comm-l .side-list', 'j_fade', 260, function(){
	//执行回调函数
});
//选择排序方式排序
plugin.clickSort('.sort-item', '', function(text){
	//执行回调函数
	//代码已经注释
	// $('.sort-name').text(text);
});



//点击展开默认排序
$(document).on('click', '.sort', function(e){
	e.stopPropagation();
	if($(this).hasClass('j_slide')) {
		$(this).removeClass('j_slide');
		setTimeout(function(){
			$('.sort-list').css('z-index', -20);
		}, 550);
	}
	else {
		$('.sort-list').css('z-index', 20);
		$(this).addClass('j_slide');
	}
});
//add by huangrc 20160623 点击其他区域收起排序
$(document).click(function() {
    if ($('.sort').hasClass('j_slide')) {
		$('.sort').removeClass('j_slide');
		setTimeout(function() {
			$('.sort-list').css('z-index', -20);
		}, 550);
	}
});

//点击筛选隐藏侧导航
$(document).on('click', '.screening', function(){
	if(!$(this).hasClass('open-side')) {
		$('.comm-list').find('.comm-l').addClass('as-filter-animation');
		$('.comm-list').find('.comm-r').addClass('comm-mar');
		$(this).addClass('open-side');
	}
	else {
		$('.comm-list').find('.comm-l').removeClass('as-filter-animation');
		$('.comm-list').find('.comm-r').removeClass('comm-mar');
		$('.comm-list').css('position','relative');
		$(this).removeClass('open-side');
		
	}
	
});

//鼠标移入切换套装
$(document).on('mouseover', '.sale-tit .item', function(){
	var index = $(this).index();
	$(this).addClass('active').siblings().removeClass('active');
	$('.suit-item').hide().eq(index).show();
});



//缓存变量
var element = null;
$(window).on('scroll', function(){

	var scrollTop =  document.documentElement.scrollTop || document.body.scrollTop;

	//产品频道页面左侧菜单栏悬浮
	
	
	
	if($('.comm-list').length>0){
		var windowH = $('body').height();
		if (!element) {
			element = $('.comm-list');
		};
		var listH = element.height();
		var sideH = element.find('.comm-l').height();
		var listT = element.offset().top;
		var top = scrollTop - listT;
	if(!$('.comm-list .comm-l').hasClass('as-filter-animation')) {
		if (listH>sideH && sideH<windowH && top>0){
			if(listH<=(sideH+top)) {
				element.find('.comm-l').css({
					'position': 'relative',
					'margin-top': listH - sideH + 'px',
					'top':'0px'
				})
			}
			else {
				element.find('.comm-l').css({
					'position': 'fixed',
					'margin-top': '0px',
					top: '61px'
				})
			}
		}
		else if (listH>sideH && sideH<windowH && top<0){
			element.find('.comm-l').css({
				'position': 'absolute',
				'margin-top': '0px',
				'top':'0px'
			})
		}
	  }
	
	  if(sideH>=element.height()){
		  element.find('.comm-l').removeAttr('style');
	  }
	
	}
	
	
	//产品购买页面悬浮
	
	if($('.purchase').length>0){

		//产品大图展示悬浮效果
		var purcL = $('.purc-r').offset().top;
		var purcLH = $('.purc-l').height();
		var purcRH = $('.purc-r').height();
		if(purcL<scrollTop){
			
			var purcTop = scrollTop - purcL ;
			$('.purc-l').removeAttr('style');
			$('.purc-l').addClass('fixed');
		}
		else{
			
			$('.purc-l').removeClass('fixed');
			
		}
		if((purcL+purcRH)<=(scrollTop+purcLH)){
			var marTop = purcRH - purcLH + 'px';
			$('.purc-l').removeClass('fixed');
			
		}else{
			$('.purc-l').css({'top' : 0});
		}
		
		if(scrollTop==0){
			$('.purc-l').css({'top' : 0});
		}

		//详情页面右侧菜单&& 立即购买悬浮效果
		var detaiT = $('.light-gray').offset().top - $('.fixed-buy').height();
		if(detaiT<scrollTop){
			var detaiTop = scrollTop - detaiT + 'px';
			$('.fixed-buy').css({'margin-top': '0px'});
			$('.details-r').css({'top': detaiTop});
		}
		else{
			$('.fixed-buy').css({'margin-top': '-60px'});
			$('.details-r').css({'top': '0px'});
		}
		
	}

	
});

/*
	***产品购买页js代码***
	
	*点击描点切换大图
	*点击选择产品属性后高亮并收缩
	*禁止输入的数量小于零,禁止输入非数字字符
	*点击增加或减少产品数量
*/

//点击描点切换大图
$(document).on('click', '.purc-list .radius', function(){
	var index = $(this).index();
	$(this).addClass('active').siblings().removeClass('active');
	$('.purc-img .item').removeClass('active').eq(index).addClass('active');
})

//点击后被点击的元素高亮显示ing收缩options选区
plugin.clickLight('.options .op-item, .options .square', 'active', function(el, text){
	//执行回调函数
	var options =  el.parents('.options').height();
	el.parents('.purc-text').find('.sele').text(text);
	el.parents('.purc-text').find('.edit').addClass('red');
	el.parents('.options').slideUp(260);

	//判断点击收起时，是否取消悬浮
	if(parseInt($('.purc-l').css('top'))!=0){

		var top = parseInt($('.purc-l').css('top'));
		$('.purc-l').css({'top' : top - options +'px'});
		return false;
	}
	var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	var purcL = $('.purc-r').offset().top;
	var purcLH = $('.purc-l').height();
	var purcRH = $('.purc-r').height();
	if((purcL+purcRH)<=(scrollTop+purcLH)){
		$('.purc-l').removeClass('fixed');
		$('.purc-l').css({'top' : purcRH - purcLH +'px'});
	}

});

//点击修改展开options选区
$(document).on('click', '.edit', function(){

	var self = $(this).parents('.purc-text').find('.options');
	if(self.is(":hidden")){
		self.slideDown(260);
		$(this).removeClass('red');
	}
	//判断点击收起时，是否取消悬浮
	if(parseInt($('.purc-l').css('top'))!=0){
		
		setTimeout(function(){
			var height = self.height();
			var top = parseInt($('.purc-l').css('top'));
			$('.purc-l').css({'top' : top + height +'px'});
		},280);

	}

});
//添加组合商品点击事件，点击组合商品样式切换
$(document).on('click', '.options .groupedproduct', function(){
	$(this).addClass('active').siblings().removeClass('active');
});

//禁止输入的数量小于零,禁止输入非数字字符
//点击增加或减少产品数量
$(document).on('keyup', '.j-select .val', function(){
	var val = $(this).val().replace(/\D/g,'');
	val = val <=0 ? 1 : val;
	val = val >999 ? 999 : val;
	$(this).val(val);
});


/*plugin.editNumber('.j-select .add', function(element){
	//执行回调函数
	changeVal(element);
});
plugin.editNumber('.j-select .reg', function(element){
	//执行回调函数
	changeVal(element);
});
*/

$(document).on('click', '.details-r .item a', function(){
	$(this).parents('.item').addClass('active').siblings().removeClass('active');
});



function changeVal(element){
	var price = parseInt(element.parents('.shop-box').find('.j-price').text()) * parseInt(element.parents('.shop-box').find('.j-val').val());
	var edit = element.parents('.shop-box').find('.j-subtotal').text(price);
	var total  = 0;
	$('.shop-box').each( function(){
		console.log('total', $(this).find('.j-subtotal').text());
		total += parseInt($(this).find('.j-subtotal').text());
	});
	$('.j-total').text(total);
}


/*
	***产品购物车 PC-007 js代码***
	
	*购物车产品列表全选和单选
	*点击星星图标添加产品关注
	*点击删除图标删除当前列产品
	*未选中商品时,禁止结算并显示提醒框
	*点击产品列表加号,弹出选择产品弹框
	*选择产品弹框内，单机选择产品(单选)
*/


// 购物车产品列表全选
plugin.allSelect('.j-all', 'active', function(el){
	if(el.hasClass('active')){
		$('.payment').find('.buy').removeClass('disabled');
	}
	else {
		$('.payment').find('.buy').addClass('disabled');
	}
});

// 购物车产品列表单选
plugin.oddSelect('.j-odd', 'active', function(el){
	//执行回调函数
	if($('.sel-wid .active').length){
		$('.payment').find('.buy').removeClass('disabled');
		$('.j-all').removeClass('active');
	}
	else {
		$('.payment').find('.buy').addClass('disabled');
	}

	//如果全部单选，则全选也高亮
	if($('.sel-wid .active').length == $('.checkbox').length-1){
		$('.j-all').addClass('active');
	}
	
});

// 点击星星添加产品关注
plugin.oddSelect('.j-star', 'active', function(el){
	//执行回调函数
});

// 点击删除图标删除当前列产品
/*plugin.clickLight('.j-del', 'active', function(el, text){
	el.parents('.shop-cont').slideUp(260, function(){
		$(this).remove();
	});
});*/

/*未选中商品时,禁止结算并显示提醒框*/
var power = true;
$(document).on('click', '.payment .buy', function(){
	if(power && $(this).hasClass('disabled')){
		power = false;
		$('.payment').find('.tag').fadeIn();
		setTimeout(function(){
			$('.payment').find('.tag').fadeOut(function(){
				power = true;
			});
		}, 1500);
	}
});

/*点击产品列表加号,弹出选择产品弹框*/
$(document).on('click', '.shop-layer .radius', function(){
	var height = $('body').height();
	$('.mask').css({opacity: 1, height: height + 'px', zIndex: 10});
	$('.j-message').css({opacity: 1, zIndex: 20});
}).on('click', '.j-mask, .j-close', function(){
	$('.mask').removeAttr('style');
	$('.message-box').removeAttr('style');
	if($('.invoice').length){
		$('.invoice').hide();
	}
});

/*选择产品弹框内，单机选择产品(单选)*/
plugin.clickRadio('.j-radio', 'active', function(){
	//执行回调函数
});



/*
	***订单结算页面js代码***

	*添加或编辑收货地址
	*选择支付方式及选择发票类型
	

*/
$(document).on('click', '.add-address', function(){
	$('.add-ress').show();
	$('.j-address').css({opacity: 1, zIndex: 1502,visibility: 'visible'});
	$('.mask').css({opacity: 1, zIndex: 1501, visibility: 'visible'});
});

$(document).on('click', '.order-but', function(){
	$(this).addClass('active').siblings().removeClass('active');
	var clas = $(this).attr('class').split(' ')[1];
	$('.message-box').find('.'+clas).show();
	$('.j-'+clas).css({opacity: 1, zIndex: 1502,visibility: 'visible'});
	$('.mask').css({opacity: 1, zIndex: 1501,visibility: 'visible'});
	
	
});




/*
	***订单支付页面js代码***

	*点击尖角订单详情收起
	*
	

*/

//点击尖角订单详情收起
// plugin.clickSlide('.pay-r .j-slide', '.pay-r .order-info', 'j_fade', 260, function(){
// 	//执行回调函数
// });


$(document).on('click', '.pay-r .j-slide', function(){
	if($(this).hasClass('j_fade')) {
		$(this).parents('.pay-r').find('.order-info').slideUp(260);
		$(this).removeClass('j_fade');
	}
	else {
		$(this).parents('.pay-r').find('.order-info').slideDown(260);
		$(this).addClass('j_fade');
	}
});


/*
	***登录注册页面js代码***

	*验证文本框是否输入内容
	*
	

*/
$(document).on('blur', '.j-blur', function(){
	if($(this).val()!=''){
		$(this).removeClass('border');
		$(this).parents('.input-box').find('.prompt').hide();
	}
	else {
		$(this).addClass('border');
		$(this).parents('.input-box').find('.prompt').show();
	}
});

//点击进入注册流程
$(document).on('click', '.next', function(){
	$(this).parents('.reg-box').hide();
	$(this).parents('.reg-box').next('.reg-box').show();
}).on('click', '.prev', function(){
	$(this).parents('.reg-box').hide();
	$(this).parents('.reg-box').prev('.reg-box').show();
});

//点击购物车头部优惠卷弹出框
$(document).on('click','.m_discount h3', function(){
	$(this).parents('.m_discount').toggleClass('in');
	if($('.m_discount').hasClass('in')){
		$(document).one('click', function () {
	    	$('.m_discount').removeClass('in');
	  });
  }
});

$(document).on('click','.m_discount', function(event){
   event.stopPropagation();
});

//购物车的促销信息
$(document).on('click','.m_motion .m_ipt', function(){
	$(this).parents('.m_motion').toggleClass('in');
	if($('.m_motion').hasClass('in')){
		$(document).one('click', function () {
	    	$('.m_motion').removeClass('in');
	  });
  }
});
$(document).on('click','.m_promotion_box li', function(){
	var txte = $(this).parents('.m_promotion_box').siblings('.m_ipt');
	var li_txte = $(this).text();
	$(this).addClass('active').siblings('li').removeClass('active');
	txte.val(li_txte);
});

//使用优惠卷tab切换
$(document).on('click','.new_discount h4', function(){
	
	if($('.new_discount').find('h4').length<=1){
		return false;
	}
	var m_this = $(this).index('.new_discount h4');
	$(this).addClass('active').siblings('h4').removeClass('active');
	$('.new_discount .new_discount_tab').eq(m_this).show().siblings('.new_discount .new_discount_tab').hide();
});

$(document).on('click','.new_discount h3', function(){
	$(this).toggleClass('active');
	$(".new_discount .new_pop").slideToggle();
});


/*
	图片懒加载
*/
if($("img.lazy").length>0){
	$("img.lazy").lazyload({
	    effect : "fadeIn"
	});
};
//第三方登录页面tab切换的js
$(".y_logintab li").click(function(){
	$(this).addClass("active").siblings().removeClass("active");
	$(this).parent().next(".y_tabcontent").find(".y_tabpane").eq($(this).index()).addClass("active").siblings().removeClass("active");
})

//data time js
$(document).on('click', '.j-data', function(event){
	event.stopPropagation();
	if ($('.box_sha').length) {
		$("#box_sha").remove();
		return false;	
	}
	showTade.init($(this));
 });

