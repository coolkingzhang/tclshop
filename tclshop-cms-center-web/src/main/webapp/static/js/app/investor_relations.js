/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery','ShowBox'],function($,ShowBox){
   return {
	   
	   //tab交互
	   tabAction: function() {  
		   
		   $('.tabNavBar-js').on('click',function(evt){
	           var that = this;
	           new ShowBox(that,evt,{interactive:'tab',targetLayer:'.tabContent-js',className: 'hover'});
	           return false;
	       });
		   $('.tabNavBar1-js').on('click',function(evt){
	           var that = this;
	           new ShowBox(that,evt,{interactive:'tab',targetLayer:'.tabContent1-js',className: 'hover'});
	           return false;
	       });
	   },
	 
	   //重新排列新媒体
	   reformats: function() {
		   var lis = $('#essence-js>li:odd');
		   //debugger;
		   
		   for(var i=0 ,len = lis.length; i< len; i++) {
			   var target = lis.eq(i).children().eq(0);
			   target.removeClass('fl').addClass('fr');
			   target.next().removeClass('fr').addClass('fl').find('.arrow').removeClass('arrow-l').addClass('arrow-r');
			   
		   }
	   },
       init:function(){
    	   //this.bannerMenuMore(5);
    	   this.reformats();
    	   this.tabAction(); 
       }
   }
});