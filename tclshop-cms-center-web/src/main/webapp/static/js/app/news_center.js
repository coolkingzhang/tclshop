/**
 * Created by Lenovo on 2016/7/27.
 */
define(['jquery','comm','../lib/jssor.slider.min'],function($,comm,jssor){
   return {
	  //banner图menu超过5个自动折行
	   bannerMenuMore: function(num){
		   //debugger;
		    var bannerNavWrap = $("#banner_nav_wrap");
		    var lis = bannerNavWrap.find('li');
		    var len = lis.length;
		    var type = $('#typeStorage').val();
		    var path = $('#setPath').val();
		    //console.log(type=='');
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
			    	oldhtml = oldhtml.replace(html,"")+moreTarget;
			    	return oldhtml; 
			    });
			    ul.find('ul').html(html);
			    $('#bannerMoreBtn').after(ul);
			   
		    }
			    bannerNavWrap.prepend($('<li><a href="'+path+'/news/index" class="actived">新闻中心</a></li>')).show();
			    //bannerNavWrap.find('a[href$="'+ type+'"]').addClass('actived').parent().siblings().find('a').removeClass('actived');
			    comm.init();
	   },
	   //重新排列新媒体
	   reformats: function() {
		   var lis = $('#newMediaLayer').find('li');
		   //debugger;
		   var arr =[];
		   for(var i=1,len=lis.length; i<= len; i++) {
			   //debugger;
			   if ( i>4 && (i%2 == 0)) {
				   var targetLi = lis.eq(i-1);
				   targetLi.find('div.comm-d-js').removeClass('comm-l').addClass('comm-r');
				   targetLi.prev().insertAfter(targetLi);
			   }
			   var width = lis.eq(i-1).width();
			   arr.push(width);
		   }
		   lis.height(Math.min.apply(Math,arr));
	   },
	   //新闻中心首页轮播图
	   sliderImgs: function() {
		   $(function(){
			   
			   var _SlideshowTransitions = [
			                		        //Fade
			                		        { $Duration: 600, $Opacity: 2 }
			                		    ];
			                		    var options = {
			                		        $FillMode: 0,                                       //[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
			                		       
			                		        $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
			                		        $AutoPlaySteps:1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
			                		        $AutoPlayInterval: 2000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
			                		        $PauseOnHover: 0,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

			                		        $ArrowKeyNavigation: false,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
			                		        $SlideEasing: $JssorEasing$.$EaseOutQuint,          //[Optional] Specifies easing for right to left animation, default value is $JssorEasing$.$EaseOutQuad
			                		        $SlideDuration: 800,                               //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
			                		        $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
			                		        //$SlideWidth: 1300,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
			                		        //$SlideHeight: 600,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
			                		        $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
			                		        $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
			                		        $ParkingPosition: 1,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
			                		        $UISearchMode: 0,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
			                		        $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
			                		        $DragOrientation: 0,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

			                		        $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
			                		            $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
			                		            $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
			                		            $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
			                		            $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
			                		        },

			                		        $BulletNavigatorOptions: {                          //[Optional] Options to specify and enable navigator or not
			                		            $Class: $JssorBulletNavigator$,                 //[Required] Class to create navigator instance
			                		            $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
			                		            $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
			                		            $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
			                		            $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
			                		            $SpacingX: 8,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
			                		            $SpacingY: 8,                                   //[Optional] Vertical space between each item in pixel, default value is 0
			                		            $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
			                		        },

			                		        $ArrowNavigatorOptions: {                           //[Optional] Options to specify and enable arrow navigator or not
			                		            $Class: $JssorArrowNavigator$,                  //[Requried] Class to create arrow navigator instance
			                		            $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
			                		            $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
			                		            $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
			                		        }
			                		    };

			                		    var jssor_slider1 = new $JssorSlider$("slider1_container", options);

			                		    //responsive code begin
			                		    //you can remove responsive code if you don't want the slider scales while window resizes
			                		    function ScaleSlider() {
			                		        var bodyWidth = document.body.clientWidth;
			                		        if (bodyWidth)
			                		            jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
			                		        else
			                		            window.setTimeout(ScaleSlider, 30);
			                		    }
			                		    ScaleSlider();
			                		    $(window).bind("load", ScaleSlider);
			                		    $(window).bind("resize", ScaleSlider);
			                		    $(window).bind("orientationchange", ScaleSlider);
			                		    //responsive code end
			   
		   })

		   
	   },
	   showHack: function() {
		   $(function(){
			   var w = $(window).width();
			       //h = w/2.24824355971897;
			   //alert(w);
			   $('.sliderWrap,.slidesArea').css({'width':w});
		   });  
	   },
       init:function(){
    	   //alert($JssorSlider$);
    	   this.showHack();
    	   this.bannerMenuMore(5);
    	   this.reformats();
    	   this.sliderImgs();
       }
   }
});