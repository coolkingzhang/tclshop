/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery'],function($){
   return {
	   interactive: function() {
		   $(function(){
			   //debugger;
			$(".li_guanli1 li").each(function(i){
			                    var y=i+1;
			                    $(this).mouseover(function(){
			                    	//debugger;
			                        $(".li_guanli1 li").removeClass("guanli_des");
			                        $(this).addClass("guanli_des");
			                        $("[id^=tfn_]").hide();
			                        $("#tfn_"+y).show();
			                    })
			                    $(".li_guanli1 li").eq(0).mouseover();
			  })
			   $(".news_more").mouseover(function(){
				   $(".new_smallnav").fadeIn();
				   })
			   $(".new_more,.new_smallnav").mouseleave(function(){
				   $(".new_smallnav").hide();
				   })
				})

	   },
       init:function(){   	  
    	   this.interactive();
       }
   }
});

