;(function(window, document, $, plugin){
	var defaults = {
		timer: 1000,
		ipseed: 600
	};
	var Scroll = function(){
		this.swich = true;
		this.inde = -1;
	}
	Scroll.prototype = {
		init: function(options, callback){
			//合并参数
			defaults = options ? $.extend(defaults, options) : defaults;

			//遍历 page 元素并创建描点
			var len = $('.page').length;
			var html = '<div class="page-bar">';
			for (var i=0; i<len; i++) {
				if (i==0) {
					html+='<span class="bar-item active"></span>';
				}
				else {
					html+='<span class="bar-item"></span>';
				}
			};
			html +='</div>';
			$('#article').append(html);
			var marTop = parseInt($('.page-bar').height())/2;
			$('.page-bar').css({
				'margin-top': -marTop +'px'
			});

			//滚动鼠标时执行
			//点击描点滚动
			this.scrollBar();
			this.clickScroll();
		},
		scrollBar: function(){

			var self = this;
			var len = $('.page').length;
			var height = $('body').height();
			var foot = $('.foot-page').height();
			var browser = plugin.Browser();
			var mousewheel = browser =='Firefox' ? "DOMMouseScroll" : "mousewheel";

			self.addEvent(mousewheel, function(event){

				event = window.event || event;
			   	var delta =  event.wheelDelta ? (event.wheelDelta / 120) : (- event.detail / 3);
			   	var marTop = parseInt($('.header').css('margin-top'));

			   	//如何还上一次滚动未完成，则等待执行完再继续滚动下一次
				if(!self.swich){
					return false;
				}

			    if(delta>0){
			    	//向上滚动时
			    	self.swich = false;
			    	if(self.inde==0 && marTop!=0){
			    		self.animat('.header', {'margin-top': '0px'}, 600);
			    		self.animat('.box-menu', {'margin-top': '-50px', 'height': '0px'}, 600);
			    		$('.article').find('.page-bar').removeClass('opacity');
			    		self.inde--;
			    	}
			    	else if (self.inde>0 && self.inde<len){
			    		self.inde--;
			    		var drift = -self.inde * height + 'px';
			    		self.animat('.slides', {'top': drift});
			    		setTimeout(function(){
			    			$('.page').eq(self.inde+1).removeClass('active');
			    		}, defaults.ipseed);
			    		$('.page').eq(self.inde).addClass('active');
			    		$('.page-bar').find('.bar-item').removeClass('active').eq(self.inde).addClass('active');
			    	}
			    	else if (self.inde==len){
			    		self.animat('.article', {'margin-top': '0px'}, 600);
			    		self.animat('.box-menu', {'margin-top': '0px'}, 600);
			    		$('.article').find('.page-bar').addClass('opacity');
			    		self.inde--;
			    	}

			    }
			    else {
			    	//向下滚动时
			    	//当index大于当前len时,已经滚动到最底部
			    	if(self.inde> len){
		    			return false
		    		}
			    	self.inde ++;
			    	self.swich = false;
			    	if(self.inde==0 && marTop==0){
			    		self.animat('.header', {'margin-top': '-150px'}, 600, function(){
			    			self.animat('.box-menu', {'margin-top': '0px', 'height': '50px'}, 600);
			    		});
			    		$('.article').find('.page-bar').addClass('opacity');
			    	}
			    	else if (self.inde>0 && self.inde<len){
			    		/*
							判断当前浏览器内核，IE和Firefox采用修改top滚动
							其他浏览器内核采用 translate3D 来滚动位置
			    		*/
			    		// browser=='IE' || browser=='Firefox' ? 
		    			// 	self.animat() : 
			    		// 	$()

			    		var drift = -self.inde * height + 'px';
			    		self.animat('.slides', {'top': drift});
			    		setTimeout(function(){
			    			$('.page').eq(self.inde-1).removeClass('active');
			    		}, defaults.ipseed);
			    		$('.page').eq(self.inde).addClass('active');
			    		$('.page-bar').find('.bar-item').removeClass('active').eq(self.inde).addClass('active');


			    	}
			    	else if (self.inde==len){
			    		self.animat('.article', {'margin-top': -foot + 'px'}, 600);
			    		self.animat('.box-menu', {'margin-top': '-50px'}, 600);
			    		$('.article').find('.page-bar').removeClass('opacity');
			    	}

			    }
			}, false);

		},
		clickScroll: function(){
			var self = this;
			var height = $('body').height();
			var marTop = parseInt($('.header').css('margin-top'));
			
			
			$(document).on('click', '.bar-item', function(){
				var lastindex = self.inde;
				if(!self.swich){
					return false;
				}
				self.inde = $(this).index();

				if(self.inde!=0 && marTop==0){
					self.swich = false;
		    		self.animat('.header', {'margin-top': '-150px'}, 600, function(){
		    			self.animat('.box-menu', {'margin-top': '0px', 'height': '50px'}, 600);
		    		});
		    	}
				var drift = -self.inde * height + 'px';
	    		self.animat('.slides', {'top': drift});
	    		setTimeout(function(){
	    			// console.log(lastindex, self.inde);
	    			if(lastindex==-1){
	    				$('.page').eq(0).removeClass('active');
	    			}
	    			$('.page').eq(lastindex).removeClass('active');
	    		}, defaults.ipseed);
	    		$('.page').eq(self.inde).addClass('active');
	    		$('.page-bar').find('.bar-item').removeClass('active').eq(self.inde).addClass('active');
			});
		},
		addEvent: function(sType, fn, capture){

			if (window.addEventListener) {
            	document.body.addEventListener(sType, fn, (capture));
	        } else if (window.attachEvent) {
                document.body.attachEvent("on" + sType, fn);
	        } else {
	            return function(){};
	        }

		},
		animat: function(el, obj, duration, callback){

			var self = this;
			duration = duration ? duration : defaults.ipseed;

			$(el).stop().animate(obj, duration, function(){
    			callback ? callback() : 
    				setTimeout(function(){
    				self.swich = true;
    			} , defaults.timer);;
    			

    		});
			
		}
	}
	return scroll = new Scroll();
})(window, document, jQuery, plugin)