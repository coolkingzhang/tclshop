/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery','comm','datepicker'/*,'../app/news_center'*/],function($,comm,datepicker/*,center*/){
	//alert(datetimepicker);
   return {
	   setPagtion: function(){
		   
		   //$.loadingImageShow = comm.loadingImageShow;     //全局loading
		   
		   $(function(){
			var paginationObj = comm.paginationInit(pageselectCallback); //引入公共分页模块
			
			var searchArea = $('#searchArea');
			var getPathGoble = $('#setPath').val();
			var getType = $('#typeStorage').val();
			if (getType == 6 || getType == 7) {   //媒体、视频新闻不显示搜索
				searchArea.hide();
			} else {
				searchArea.show();         //非媒体、视频新闻显示搜索
				$('#searchBtn').on('click',function(e){
					pageselectCallback();
					e.stopPropagation();
				});
			}
			
			//查询、分页提交
		   	function pageselectCallback(page_index, jq, obj){
		   		 
		   		//console.log(obj);
		   		var getPath = obj? obj.getPath : getPathGoble,
		   		    type   =  obj? obj.type : getType,
		   		    size  =   obj? obj.size : 10,
		   		    getLocalTime = obj? obj.getLocalTime : null,
		   		    len = arguments.length,
		   		    datepickerFrom = $('#datepickerFrom').val(),   //开始时间
		   			datepickerTo = $('#datepickerTo').val(),      //结束时间
		   			searchBar = $('#searchBar').val();           //查询关键字
		   		//alert(page_index);
		   		//page_index = page_index ? +1;
		   		page_index = page_index ? page_index+1 : 1;
		   		var getPost = $.post( 
		   				getPath+"/news/findJsonData",
		   				{	type:type, 
		   					title:searchBar, 
		   					beaginTime:datepickerFrom, 
		   					endTime:datepickerTo,
		   					pageNumber:page_index, 
		   					listAccount:size
		   				}, 
		   				function(data) {
		   					
		   					if (data.code == 200) {
		   						//debugger;
		   						var records = data.data.records;
		   						var str ="";
		   						
		   						if (len==0) {
		   							//debugger;
		   							//"total":0,"size":10,"pages":0,"current":1
		   							//alert
		   							var param = {
			   								total:data.data.total,             //改变值
			   								totalPage:data.data.pages,
			   								size:size
			   							}
		   							//{total:${result.total},totalPage:${result.pages},size:${result.size}}
		   							//$('#pagination-js').attr('data-obj',JSON.stringify(param));
		   							var pagation = comm.paginationInit(pageselectCallback,undefined,undefined,param);
		   							pagation.fun();
		   							return;
		   							
		   						}
		   						//alert('afaaaaaaaa');
		   						for(var i=0; i<records.length; i++) {
		   							var getDate = getLocalTime(records[i].issueTime);

										if (type == 6) {/*视频新闻入口*/
											  str += '<dl class="videoNews_list">'  
			   								  +'<dd>'
			   								  +' <a class="videoNews_pic pr" href="'+ records[i].shorttitle +'" target="_b lank"><img data-src="'+ getPath +'/static/img/loading.gif" src="'+ records[i].pic +'"/><span class="play_icon"></span></a>'			  
			   								  +'</dd>'
			   								  +'<dt>'
				   			                  +'<a class="videoNews_title pr" href="'+ records[i].shorttitle +'" target="_blank">'
				   			                  + records[i].title
				   			                  +'</a>'
				   		            	      +'<i class="videoNews_date">发布：' 
				   		            	      + getDate
				   		                      +'</i>'         
				   			                  +'</dt>'
				   			                  +'</dl>'
			   						} else if(type == 7){/*新媒体入口*/
			   								  str += '<dl class="newMedia_list">'  
			   								  +'<dd>'

                                               //console.log(records[i]);
			   								  +' <a class="newMedia_pic pr" href="'+ records[i].shorttitle +'" target="_blank"><img data-src="'+ getPath +'/static/img/loading.gif" src="'+ records[i].rpic +'"/></a>'


			   								  +'</dd>'
			   								  +'<dt>'
				   			                  +'<a class="newMedia_title pr" href="'+ records[i].shorttitle +'" target="_blank">'
				   			                  + records[i].title
				   			                  +'</a>'
				   			                  +'<p class="newMedia_cont">'+records[i].description+'</p>'
				   			                  +'<a class="enterWeibo" href="'+records[i].shorttitle+'">'+records[i].keywords+'</a>'
				   			                  +'</dt>'
				   			                  +'</dl>'
			   						}else {     //其它新闻列表
			   							
			   							str += '<dl class="gmxd_list">'  
			   								  +'<dd>'
			   								  +'<a class="loadingimg" href="'+ getPath +'/news/newsDetails?id='+ records[i].id +'&type='+ type +'" target="_blank"> <img data-src="'+ getPath +'/static/img/loading.gif"  src="'+ records[i].pic +'"/><a/>'
			   								  +'</dd>'
			   								  +'<dt>'
				   			                  +'<a class="gmxs_title pr" title="'+records[i].title+'" href="'+ getPath +'/news/newsDetails?id='+ records[i].id +'&type='+ type +'" target="_blank">'
				   			                  + records[i].title
				   			                  +'</a>'
				   		            	      +'<i class="getDate">' 
				   		            	      + getDate
				   		                      +'</i>'
				   			                  +'<p class="gmxs_des">'+records[i].description+'</p>'
				   			                  +'<p class="gmxs_more"><a title="'+records[i].title+'" href="'+ getPath +'/news/newsDetails?id='+ records[i].id +'&type='+ type +'" target="_blank">查看详情 >></a></p>'
				   			                  +'</dt>'
				   			                  +'</dl>'
			   							
			   						}
		   						
		   						}
		   						
		   						
		   						$("#Searchresult").html(str); //装载对应分页的内容
		   						
		   						
		   					} else {
		   						console.log(data.code+'&&'+data.message);
		   					}
					 
		   			
				});
		   		getPost.error(function(type,xhr,er){
		   			//alert('asfsaf');
		   		})
		   		return false;
		   	}
		   	paginationObj.fun();
		   
		   	//ajax加载
		   	//$("#hiddenresult").load("load.html", null, initPagination);
		   	   
		   });

	   },
	   setDatePicker: function(){
		   //显示配置
		   /*$.fn.datepicker.dates['cn'] = {
				    days: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
				    daysShort: ["日", "一", "二", "三", "四", "五", "六", "七"],
				    daysMin: ["日", "一", "二", "三", "四", "五", "六", "七"],
				    months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
				    monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
				    today: "今天",
				    clear: "清除",
				    format: "yyyy-mm-dd",
				    titleFormat: "yyyy MM",  Leverages same syntax as 'format' 
				    weekStart: 0
				};*/
		   //alert(datetimepicker);

	        // 获取调用控件的对象
	        var dates = $("#datepickerFrom,#datepickerTo");
	        var option;
	        //设置目标时间，因为例子中的开始时间和结束时间是有时间限制的
	        var targetDate;
	        var optionEnd;
	        var targetDateEnd;
	        dates.datepicker({
	            //showOn:'button',
	            //showButtonPanel:true,
	            //disabled:true,
	            changeMonth: true,
	            showAnim:'',
	            changeYear: true,
	            maxDate:new Date(),
	            minDate:new Date('1981-01-01') ,  //公司生日
	            beforeShow:function(input,targetLayer){
	                //console.log(input);
	                setTimeout(function(){
	                    var targetWrap = targetLayer.dpDiv,
	                         val = input.value;
	                    val = val ? 'block':'none';
	                    //debugger;
	                    targetWrap.append($('<div style="display:'+ val +';text-align:center" id="clearBtn-js" class="ui-datepicker-buttonpane ui-helper-clearfix"><input  style="margin:5px auto;" type="button" class="btn" value="取消" /></div>'));

	                    //$('<input type="button" class="formButton" value="清空" onclick="cleaPrevInput(this);"/>').appendTo();
	                    $('#clearBtn-js').on('click','input.btn',function(e){
	                        cleaPrevInput(input);
	                        targetWrap.hide();
	                        //$(document).trigger('click');
	                        e.stopPropagation();
	                    });
	                },10);
	                //clearTimeout(setTimeBar);
	            },

	            //当选择时间的时候触发此事件
	            onSelect: function(selectedDate){
	                //console.log(myPicker);
	                if(this.id == "datepickerFrom"){
	                    // 如果是选择了开始时间
	                    option = "minDate";
	                    //getTimeByDateStr 处理时间的代码
	                    var selectedTime = getTimeByDateStr(selectedDate);
	                    //var minTime = selectedTime;
	                    targetDate = new Date(selectedTime);
	                    //设置结束时间
	                    optionEnd = "maxDate";
	                    //targetDateEnd = new Date(minTime+2*24*60*60*1000);
	                    targetDateEnd = new Date();
	                }else{
	                    // 如果是选择了结束时间
	                    option = "maxDate";
	                    var selectedTime = getTimeByDateStr(selectedDate);
	                    var maxTime = selectedTime;
	                    targetDate = new Date(maxTime);
	                    //设置开始时间
	                    optionEnd = "minDate";
	                    //targetDateEnd = new Date(maxTime-2*24*60*60*1000);
	                    targetDateEnd = new Date('1981-01-01');
	                }
	                //设置时间框中时间，比如根据选择的开始时间，限制结束时间的不可选项,dates.not(this)是js选择器使用，
	                //datepicker("option", option, targetDate),这个就是日期控件封装的api了
	                dates.not(this).datepicker("option", option,targetDate);
	                dates.not(this).datepicker("option", optionEnd, targetDateEnd);
	            }
	        });
	        //根据日期字符串取得其时间
	        function getTimeByDateStr(dateStr){
	            var year = parseInt(dateStr.substring(0,4));
	            var month = parseInt(dateStr.substring(5,7),10)-1;
	            var day = parseInt(dateStr.substring(8,10),10);
	            return new Date(year, month, day).getTime();
	        }

	        //清空日历控件
	         function cleaPrevInput(objs){
	        	 //#datepickerFrom,#datepickerTo
	            //清空输入框中的值，但是仅仅是清空了值而已，时间控件的选值限制还在的
	            $(objs).val("");
	            //如果开始时间和结束时间都清空了，这时应该是你选择的那个框中是没有时间限制的，也就是说可以随便选择日期
	            if($('#datepickerFrom').val()=="" && $('#datepickerTo').val()==""){
	                var dates = $("#datepickerFrom,#datepickerTo");
	                //调用datepicker封装的api，使刚刚设置的开始时间和结束时间为空，这样就可以选择任意日期了
	                dates.datepicker("option", "minDate", new Date('1981-01-01'));
	                dates.datepicker("option", "maxDate", new Date());
	                //dates.datepicker("option", option,targetDate);
	                //dates.datepicker("option", optionEnd, targetDateEnd);
	            }
	        }
	         
		   $("#datepickerFromBtn").click(function(event) {
               event.preventDefault();
               $("#datepickerFrom").focus();
           });
		   
		   $("#datepickerToBtn").click(function(event) {
               event.preventDefault();
               $("#datepickerTo").focus();
           });
		   
		  
	   },
	  /*隐藏分页*/
	   hidePageDv:function(){
		  var getType = $('#typeStorage').val();
		  var page=$("#pagingDv");
		  for(var i=0,len=arguments.length;i<len;i++){
			  if (getType == arguments[i]) {   //媒体、视频新闻不显示搜索
					page.hide();
				} 
		  }
		  
	   },
	   /* 导入新闻中心导航条 */
	   getNewsNav: function(){
		   //console.log(center);
		   //center.bannerMenuMore(5);   
	   },
       init:function(){
         this.setPagtion();
         this.setDatePicker();
         this.hidePageDv(7);/*可传多个参数（需要隐藏页对应的type值）,逗号隔开*/
         //this.getNewsNav();
         
       }
   }
});