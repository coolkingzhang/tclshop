	/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery','comm','datepicker'],function($,comm,datepicker){
	//alert(datetimepicker);
   return {
	   setPagtion: function(){
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
                //alert(size);
		   		page_index = page_index ? page_index+1 : 1;
		   		//debugger;
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
		   							alert
		   							var param = {
			   								total:data.data.total,             //改变值
			   								totalPage:data.data.pages,
			   								size:data.data.size
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
			   								  +' <a class="videoNews_pic pr" href="'+ records[i].shorttitle +'" target="_blank"><img src="'+ records[i].pic +'"/></a>'
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
			   								  +' <a class="newMedia_pic pr" href="'+ records[i].shorttitle +'" target="_blank"><img src="'+ records[i].pic +'"/></a>'
			   								  +'</dd>'
			   								  +'<dt>'
				   			                  +'<a class="newMedia_title pr" href="'+ records[i].shorttitle +'" target="_blank">'
				   			                  + records[i].title
				   			                  +'</a>'
				   			                  +'<p class="newMedia_cont">'+records[i].description+'</p>'
				   			                  +'<a class="enterWeibo" href="#">'+records[i].keywords+'</a>'
				   			                  +'</dt>'
				   			                  +'</dl>'
			   						}else {
			   							
			   							str += '<dl class="gmxd_list">'  
			   								  +'<dd>'
			   								  +'<a class="gmxs_title pr" href="'+ getPath +'/news/newsDetails?id='+ records[i].id +'&type='+ type +'" target="_blank"> <img src="'+ records[i].pic +'"/><a/>'
			   								  +'</dd>'
			   								  +'<dt>'
				   			                  +'<a class="gmxs_title pr" href="'+ getPath +'/news/newsDetails?id='+ records[i].id +'&type='+ type +'" target="_blank">'
				   			                  + records[i].title
				   			                  +'</a>'
				   		            	      +'<i class="getDate">' 
				   		            	      + getDate
				   		                      +'</i>'
				   			                  +'<p class="gmxs_des">'+records[i].description+'</p>'
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
		   			alert('asfsaf');
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
		   $("#datepickerFrom").datepicker({
			   language:'cn',
               onSelect: function(){
                   //alert($(this).val());
               },
               //showButtonPanel: true,
               clearBtn:true
           });
		   
		   $("#datepickerTo").datepicker({
			   language:'cn',
               onSelect: function(){
                  // alert('aaaaaaaaaaa');
               }
           });
		   
		   $("#datepickerFromBtn").click(function(event) {
               event.preventDefault();
               $("#datepickerFrom").focus();
           });
		   
		   $("#datepickerToBtn").click(function(event) {
               event.preventDefault();
               $("#datepickerTo").focus();
           });
		   
		  
	   },
       init:function(){
         this.setPagtion();
         this.setDatePicker();
       }
   }
});