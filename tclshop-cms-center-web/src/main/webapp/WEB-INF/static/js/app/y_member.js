/*
	***会员中心js代码***

	*发票管理页面编辑、新增发票弹出框的js
	*收货地址管理编辑、新增收货地址弹出框的js

*/
//发票管理页面编辑、新增发票弹出框的js
$(document).on('click', '.y_editinvoice', function(){
	if($(this).parent().is(".y_invoicebtn")){
		var o_x=$(this).offset().left-178;
	}else{
		var o_x=$(this).offset().left-52;
	}
	var o_y=$(this).offset().top;
	$('.modal-backdrop').addClass("y_show");
	$('.y_editinvoicebx').css({opacity:1 , visibility: 'visible' , display: 'block'});
	// $('.y_editinvoicebx').css({left:o_x, top:o_y , opacity:1 , visibility: 'visible' , display: 'block'});
}).on('click', '.y_editinvoicebx .y_close,.modal-backdrop', function(){
	$('.modal-backdrop').removeClass("y_show");
	$('.y_editinvoicebx').removeAttr('style');
});

//收货地址管理编辑、新增收货地址弹出框的js
$(document).on('click', '.y_addlistbtn,.y_adresslist .y_editbtn', function(){
	var _this=$(this).parent("li");
	var o_x=_this.offset().left;
	var o_y=_this.offset().top;
	$('.modal-backdrop').addClass("y_show");
	$('.y_editadressbx').css({ opacity:1 , visibility: 'visible' , display: 'block'});
	// $('.y_editadressbx').css({left:o_x, top:o_y , opacity:1 , visibility: 'visible' , display: 'block'});
}).on('click', '.y_editadressbx .y_close,.modal-backdrop', function(){
	$('.modal-backdrop').removeClass("y_show");
	$('.y_editadressbx').removeAttr('style');
});

$(document).on('click', '.tab-switch a', function(){

	var index = $(this).index();
	$(this).addClass('active').siblings().removeClass('active');
	$('.zqbox-box').find('.tab').eq(index).show().siblings().hide();
});


/**************
*个人中心根据当前时间提示问候语
*/
var myDate =  parseInt(new Date().getHours());
if($('.j-greet')){
	if(6<=myDate<12){
		console.log('上午:'+myDate);
		$('.j-greet').text('尊敬的用户上午好!');
	}
	if(12<=myDate<18){
		console.log('下午:'+myDate);
		$('.j-greet').text('尊敬的用户下午好!');
	}
	if(18<=myDate<6){
		console.log('晚上:'+myDate);
		$('.j-greet').text('尊敬的用户晚上好!');
	}
}
