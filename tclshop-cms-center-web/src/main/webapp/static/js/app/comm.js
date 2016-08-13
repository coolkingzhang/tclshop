define(['jquery','ShowBox','pagination'],function($,ShowBox,pagination){
	return {
		//公共分页模块
		paginationInit: function(pageselectCallback,prev_show_always,next_show_always,opt) {
        	//alert('aa');
			var  parm = opt ? opt : eval("("+$('#pagination-js').data("obj")+")"),
  			 	 type = $('#typeStorage').val(),       //type值
  			 	 getPath = $('#setPath').val(),
  			 	 num_entries = parm.total,            //总页数
  			     size = parm.size;                    //每页记录数
  	    prev_show_always = prev_show_always == undefined ? true : false;
  	    next_show_always = next_show_always == undefined ? true : false;
		//console.log(parm);	
        //alert(num_entries);	
	   	//通过Ajax加载分页元素
	   	var initPagination = function() {
	   		
       	     // 创建分页
	   		$("#pagination-js").pagination(num_entries, {
	   			num_edge_entries: 2,     //边缘页数
	   			num_display_entries: 4,  //主体页数
	   			callback: function(index,jq){
	   				var opts = {
	   					  getPath: getPath,
	   		        	  type: type,
	   		        	  size:size,
	   		        	  getLocalTime:getLocalTime	
	   				}
	   				pageselectCallback(index,jq,opts);
	   			},
	   			items_per_page: size,    //每页显示1项
	   			prev_show_always:prev_show_always,
	   			next_show_always:next_show_always,
	   			prev_text: "上一页",
	   			next_text: "下一页"
	   		});
		   		
	   	 };
	   	 function formatNum(n){
	   		 n = Math.floor(n);
	   		return n < 10 ? '0'+ n : n;
	   		  
	   	 }
	   	 function getLocalTime(nS) {     
	         var getTime =  new Date(parseInt(nS) * 1000).toLocaleString().replace(/年|月|\//g, "-").replace(/日/g, " ");
	         getTime = getTime.split(" ")[0];
	         var getDate = getTime.split("-")
	         getDate =getDate[0]+'-'+ formatNum(getDate[1]) + '-' + formatNum(getDate[2]);
	         return getDate;
	      } 
          return {
        	  fun: initPagination
          };	
        },
		init: function(){
			   //华萌基金 /志愿者风采tab 切换
			   //console.log(ShowBox);  
			   $('.hm-nav-js').on('click',function(evt){
		           var that = this;
		           new ShowBox(that,evt,{interactive:'tab',targetLayer:'.hmCont-js'});
		           return false;
		       });
			   
			   //显示更多
			   var targetLayer = $('#bannerMoreLayer');
			    $('#bannerMoreBtn,#bannerMoreLayer').hover(function(){
			    	targetLayer.show();
			    },function(){
			    	targetLayer.hide();
			    });
			   
		}

	}
});


