define(['jquery','comm'],function($,comm){
	//alert('afsaf');
   return {
	   interactive: function(){
		   var path;
		   $(function(){
			   path = comm.commPram.getPath +'/companyInfo/companyInfoCourseList'
			   sendAjax(3,1); 
		   });

		   window.reload = function (type,name){
			   sendAjax(type,name);
		   }
		 
		  comm.commMethod.formateDate();
		  
		   function sendAjax(type,name){
			  
			   $.ajax({
					  url:path, 
					  data:{type : type , name : name},
					  dataType:'json',
					  success:function(_data){
						  
						  var courseType = _data.data.courseType;    //发展历程规模类型
						  var data =  _data.data.data;  
						  var pictureFont =  _data.data.pictureFont; //头图
						  var targetDiv = $('#targetDiv');          //容器
						  	  targetDiv.children().remove();        //清空内容
						  var tp ='<img src="'+pictureFont.records[0].webPic+'" alt="公司展示图片" class="top">';//设置头图
						      targetDiv.append($(tp));
						  /*顶部时间跨度*/    
						  var str = '<div class="devel_details_title"><ul>';
						  $.each(courseType, function(i,val){    //循环规模类型
							  	 //后台数据data[0]的name值从1开始，判断name值是否等于i+1，从而给li加hover样式实现切换效果
							  	 if(data[0].name == i+1){
							  		str += '<li class="hover"><a href="javascript:reload('+3+','+val.id+')">'+val.title+'</a></li>';
							  	 }else{
							  		str +='<li><a href="javascript:reload('+3+','+val.id+')">'+val.title+'</a></li>';
							  	 }
						  }); 
						  str += '</ul></div>';
						  targetDiv.append($(str));
						  var div ='<div class="details_01"><ul>';
		 				  var content='<div class="details_Content">';
		 				 /*时间轴添加*/
						  var strTime='<div class="timeList"><ul>';
						  for(var i=0 ,len = data.length; i<len; i++){  //循环主内容
							  if(i==0){                                 //数据第一条
								  content+=
					    	           '<div class="details_years details_show"><span class="title">'
							           +  data[i].years
							           +  '年</span><div class="details_01"><ul>'
							           +  '<li><span class="deta mT8">'
					    	           +  data[i].title+'</span><span class="des">'
					    	           +  data[i].content+'</span></li>';
								  strTime+='<li class="active"><a href="#"><p>'+data[i].years+'</p><span class="timeList_rect"></span></a></li>';
								  
							  }else if(data[i].years != data[i-1].years){      //如果和上一条数据的年份不相等  那么就要显示years
								  content+=
					    	           '</ul></div></div><div class="details_years"><span class="title">'
							           +  data[i].years
							           +  '年</span><div class="details_01"><ul>'
							           +  '<li><span class="deta mT8">'
					    	           +  data[i].title+'</span><span class="des">'
					    	           +  data[i].content+'</span></li>';
								  strTime+='<li><a href="#"><p>'+data[i].years+'</p><span class="timeList_rect"></span></a></li>';
								  
							  }else{       //同一年
								  content +=
									   '<li><span class="deta mT8">'
				    	               +  data[i].title+'</span><span class="des">'
				    	               +  data[i].content+'</span></li>';
							  }
						  }  
						  
						   content+='</div>';
						   strTime+='</ul></div>';
						   targetDiv.append($(content));
						  $('.timeList').remove();
						  $('.details_Content').append($(strTime));
						  
						  $(".timeList a").click(function(e){e.preventDefault() ;})
						  /*给时间轴绑定点击事件*/
						   $(".timeList ul").delegate("li","click",function(e){
							   $(this).addClass("active").siblings().removeClass("active");
							   //获取点击下标数
							   var index = $(this).index();
							  $(".details_Content .details_years").eq(index).addClass("details_show").siblings().removeClass("details_show");
						   });

					  },
					  error:function(err){
						  alert(err);
					  }
			   });
		   }
	   },
       init:function(){   	  
    	   this.interactive();
       }
   }
});




 