// JavaScript Document
$(function(){
	 $(".devel_details_title li").each(function(i){
                    var y=i+1;
                    $(this).click(function(){
                        $(".devel_details_title li").removeClass("hover");
                        $(this).addClass("hover");
                        $("[id^=date_]").hide();
                        $("#date_"+y).show();
                    })
                    $(".devel_details_title li").eq(0).click();
                })

$(".li_guanli1 li").each(function(i){
                    var y=i+1;
                    $(this).mouseover(function(){
                        $(".li_guanli1 li").removeClass("guanli_des");
                        $(this).addClass("guanli_des");
                        $("[id^=tfn_]").hide();
                        $("#tfn_"+y).show();
                    })
                    $(".li_guanli1 li").eq(0).mouseover();
                })
				
$(".hyjj_title a,.fxbg_title a").each(function(i){
                    var y=i+1;
                    $(this).click(function(){
                        $(".hyjj_title a,.fxbg_title a").removeClass("hover");
                        $(this).addClass("hover");
                        $("[id^=zyz_]").hide();
                        $("#zyz_"+y).show();
                    })
                    $(".hyjj_title a,.fxbg_title a").eq(0).click();
                })
$(".laws_title a").each(function(i){
                    var y=i+1;
                    $(this).click(function(){
                        $(".laws_title a").removeClass("hover");
                        $(this).addClass("hover");
                        $("[id^=flfg_]").hide();
                        $("#flfg_"+y).show();
                    })
                    $(".laws_title a").eq(0).click();
                })
				
				
$(".ticker_a").mouseover(function(){
	$(".ticker_b,.ticker_c,.ticker_c .exc_rate2").addClass("hover")
	})
$(".ticker_a").mouseout(function(){
	$(".ticker_b,.ticker_c,.ticker_c .exc_rate2").removeClass("hover")
	})
$(".ticker_a01").mouseover(function(){
	$(".ticker_b01,.ticker_c01,.ticker_c01 .exc_rate2").addClass("hover")
	})
$(".ticker_a01").mouseout(function(){
	$(".ticker_b01,.ticker_c01,.ticker_c01 .exc_rate2").removeClass("hover")
	})
$(".ticker_a02").mouseover(function(){
	$(".ticker_b02,.ticker_c02,.ticker_c02 .exc_rate2").addClass("hover")
	})
$(".ticker_a02").mouseout(function(){
	$(".ticker_b02,.ticker_c02,.ticker_c02 .exc_rate2").removeClass("hover")
	})
 
$(document).ready(function(){
        var speed = 600;
        $(".btn_sub").click(function(event){
            event.stopPropagation();
            var offset = $(event.target).offset();
            $("#sub_pop,#mask").slideDown();
        });
		
		$("#mask").click(function(event) { $("#sub_pop,#mask").slideUp();});
        $(".sub_close").click(function(event) { $("#sub_pop,#mask").slideUp();});
    });
	
	
   $(".news_more").mouseover(function(){
	   $(".new_smallnav").fadeIn();
	   })
   $(".new_more,.new_smallnav").mouseleave(function(){
	   $(".new_smallnav").hide();
	   })
	})



