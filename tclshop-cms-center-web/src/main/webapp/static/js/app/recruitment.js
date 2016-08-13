/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery','comm'],function($,comm){
   return {
	   setPagtion: function(){

		   $(function(){
			   
			   var paginationObj = comm.paginationInit(pageselectCallback,false,false); //引入公共分页模块
			   var getPath = paginationObj.getPath,
				    type = paginationObj.type,
				    size = paginationObj.size,
				    getLocalTime = paginationObj.getLocalTime;
			  //alert(type); 
		   	function pageselectCallback(page_index, jq){
		   		page_index = page_index+1;
		   		$.get( 
		   				getPath+"/recruitment/findSocialRecruitment",
		   				{type:type, pageNumber:page_index, listAccount:size}, 
		   				function(data) {
		   					if (data.code == 200) {
		   						var records = data.data.records;
		   						   
		   						var str ="";
		   						for(var i=0; i<records.length; i++) {
		   							var getDate = getLocalTime(records[i].createtime);
		   							//getDate = getDate.split(" ")[0];
		   							str += '<tr>'  
		   								  +'<td>'+ records[i].title +'</td>'
		   								  +'<td>'+ records[i].company +'</td>'
		   								  +'<td>'+ records[i].address +'</td>'
		   								  +'<td>'+ getDate +'</td>'
		   								  +'<td><a href="'+records[i].url+'" class="submit">我要应聘 </a></td>'
			   			                  +'</tr>'
		   						}
		   						
		   						var resultDiv = $("#Searchresult");
		   						resultDiv.find('tr').not(':first').remove(); //装载对应分页的内容
		   						resultDiv.append(str);                       //装载对应分页的内容
		   					}
					 
		   			
				})  
		   		return false;
		   	}
			paginationObj.fun();
		   	//ajax加载
		   	//$("#hiddenresult").load("load.html", null, initPagination);
		   });

	   },
       init:function(){
         this.setPagtion();
       }
   }
});