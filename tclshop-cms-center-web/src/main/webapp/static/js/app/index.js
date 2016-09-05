/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery'],function($){
   return {
	   hideText:function(){
	       var elem=$(".channel_actionCont p");
	       for(var i=0,len=elem.length;i<len;i++){
	           var str=$(elem[i]).html();
	           if(str.length>68){
	               var newStr=str.slice(0,68);
	               newStr+="......";
	               $(elem[i]).html(newStr);
	           }
	       }
	   },
	   /*兼容IE8 nth-child*/
	   nth_compatible:function() {
	       if(!$.support.leadingWhitespace){
	           $('.channel_new .channel_newCont li:nth-child(4n)').css('marginRight', 0);
	           $('.channel_action .channel_actionContdiv>li:nth-child(3n)').css('marginRight', 0);
	       }
	   },
       init:function(){   	  
    	   this.hideText();
    	   this.nth_compatible();
       }
   }
});

