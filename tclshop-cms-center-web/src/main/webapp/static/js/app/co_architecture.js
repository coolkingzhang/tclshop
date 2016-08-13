/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery'],function($){
    return {
        init:function(){
            //console.log($('body')[0].nodeName);
        }
    }
});
$('.li_jiagou_2_tab').delegate('li','click',function(){
	$($('.li_jiagou_2_tab li>a')).removeClass("active");
	$($('.li_jiagou_2_tab li:eq('+$(this).index()+')>a')).addClass("active");	
	$($('.li_jiagou_2_box .li_jiagou_2_con')[$(this).index()]).addClass("active").siblings().removeClass("active");
	$(this).index()==1?$(".jiantou1").css("paddingLeft","590px"):$(this).index()==2?$(".jiantou1").css("paddingLeft","1120px"):$(".jiantou1").css("paddingLeft","56px");
})