/**
 * Created by qi.huang on 2016/7/25.
 */
var shim = {

    'comm' : {
        dep:['jquery']
    },
    'pagination' : {
    	dep: ['jquery'],
    	exports:'jQuery.fn.pagination'
    },
    'datepicker' : {
    	dep: ['jquery'],
    	exports: 'jQuery.fn.datepicker'
    }
   
};
var getJspPath = document.getElementById('setPath').value;
//alert(getJspPath);
require.config({
    baseUrl: getJspPath+'/static/js/lib',
    urlArgs: "arg=" +  10*Math.random().valueOf(),
    paths: {
        'jquery'  : 'jquery.min',
        'text'   : 'text',
        'ShowBox' : 'ShowBox',
        'comm' : '../app/comm',
        'pagination' : 'jquery.pagination',
        'datepicker' : 'datepicker.min'
    },
    shim :shim

});

require( ['jquery'], function($){
	//console.log(ShowBox);
    //debugger;
	
    var currentPage = $('#currentPage').attr('data-targetpage');   //每个页面均引用此入口文件并根据页面文件名来调转至相应逻辑层
    if (currentPage) {
    	require(["../app/"+currentPage,'comm'],function(customer,comm) {
    		//alert($);
            comm.init();
            customer.init();

        })
    } else {
    	require(['comm'],function(comm) {
            comm.init();
        })
    }
    
});