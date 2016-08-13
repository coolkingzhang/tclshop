/**
 * Created by qi.huang on 2016/7/25.
 */
var shim = {

    'comm' : {
        dep:['jquery']
    },
    'flexslider': {
        dep:['jquery'],
        exports:'jQuery.fn.flexslider'
    },
    'lazyload' : {
        dep: ['jquery'],
        exports: 'jQuery.fn.lazyload'
    },
    'loadPlate' : {
        dep: ['jquery'],
        exports: 'jQuery.fn.loadPlate'
    },
    'Plugin' : {
        dep: ['jquery'],
        exports: 'jQuery.fn.Plugin'
    },
    'scroll' : {
        dep: ['jquery','Plugin'],
        exports: 'jQuery.fn.Plugin.scroll'
    }
};

require.config({
    baseUrl: '/static/js/lib',
    urlArgs: "arg=" +  (new Date()).getTime(),
    paths: {
        'jquery'  : 'jquery.min',
        'text'   : 'text',
        'comm' : '../app/comm',
        'flexslider' : 'jquery.flexslider-min',
        'lazyload' : 'jquery.lazyload-min',
        'loadPlate' : 'loadPlate',
        'Plugin' : 'Plugin',
        'scroll' : 'scroll'

    },
    shim :shim

});

require( ['jquery'], function($){
    //debugger;
    var currentPage = $('#currentPage').attr('data-targetpage');   //根据不同的页面调转相应的模块
    require(["../app/"+currentPage,'comm'],function(customer,comm) {
        comm.init();
        customer.init();

    })
});