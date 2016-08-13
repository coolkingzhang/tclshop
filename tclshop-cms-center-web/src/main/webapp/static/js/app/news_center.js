/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery','comm'],function($,comm){
   return {
	  //banner图menu超过5个自动折行
	   bannerMenuMore: function(num){
		   //debugger;
		    var bannerNavWrap = $("#banner_nav_wrap");
		    var lis = bannerNavWrap.find('li');
		    var len = lis.length;
		    //lis.eq(0).children().addClass('actived');
		    //bannerNavWrap.hide();
		    if ((num < 2 || num > len) && typeof num !== 'number') { return;}
		    if (len>num) {
		    	var html = '';
		    	var ul = $('<div id="bannerMoreLayer" class="bannerMorePlate" style="display:none"><div class="arrow-up"></div><ul></ul></div>');
			    var moreTarget = '<li><a href="javascript:void(0);" id="bannerMoreBtn">更多</a></li>'
		    	for (var i =num; i< len; i++) {
			    	html += lis.eq(i)[0].outerHTML;
			    }
			    bannerNavWrap.html(function(index, oldhtml){
			    	oldhtml = '<li><a href="javascript:void(0);" class="actived">新闻中心</a></li>'+oldhtml.replace(html,"")+moreTarget;
			    	return oldhtml; 
			    });
			    ul.find('ul').html(html);
			    $('#bannerMoreBtn').after(ul);
			   
		    }
			    bannerNavWrap.show();  
			    comm.init();
	   },
	   //重新排列新媒体
	   reformats: function() {
		   var lis = $('#newMediaLayer').find('li');
		   //debugger;
		   for(var i=1,len=lis.length; i<= len; i++) {
			   //debugger;
			   if ( i>4 && (i%2 == 0)) {
				   var targetLi = lis.eq(i-1);
				   targetLi.find('div.comm-d-js').removeClass('comm-l').addClass('comm-r');
				   targetLi.prev().insertAfter(targetLi);
			   }
		   }
	   },
       init:function(){
    	   this.bannerMenuMore(5);
    	   this.reformats();
    	   
       }
   }
});