/*!
 * jquery.scrollLoading.js
 * by zhangxinxu http://www.zhangxinxu.com/wordpress/?p=1259
 * 2010-11-19 v1.0
 * 2012-01-13 v1.1 ƫ��ֵ�����޸� position �� offset
 * 2012-09-25 v1.2 ���ӹ�����������, �ص�����
 * 2014-08-11 v1.3 �޸����ù�����������һЩbug, �Լ���ɾposbֵ��һЩ�ͼ�����
*/
(function($) {
	$.fn.scrollLoading = function(options) {
		var defaults = {
			attr: "data-url",
			container: $(window),
			callback: $.noop
		};
		var params = $.extend({}, defaults, options || {});
		params.cache = [];
		$(this).each(function() {
			var node = this.nodeName.toLowerCase(), url = $(this).attr(params["attr"]);
			//����
			var data = {
				obj: $(this),
				tag: node,
				url: url
			};
			params.cache.push(data);
		});
		
		var callback = function(call) {
			if ($.isFunction(params.callback)) {
				params.callback.call(call.get(0));
			}
		};

		params.now = 0;
		//��̬��ʾ����
		var loading = function() {
			//var contHeight = params.container.height();
			//if (params.container.get(0) === window) {
			//	contop = $(window).scrollTop();
			//} else {
			//	contop = params.container.offset().top;
			//}		
			
			//$.each(params.cache, function(i, data) {
				if(params.cache.length>params.now){
				var data = params.cache[params.now];
				params.now = params.now+1;
				var o = data.obj, tag = data.tag, url = data.url, post, posb;
				
				if (o) {
					//post = o.offset().top - contop, posb = post + o.height();
					//if (true) {
						if (url) {
							//�������������
							if (tag === "img") {
								//ͼƬ���ı�src
								callback(o.attr("src", url));
							} else {
								o.load(url, {}, function() {
									callback(o);
								});
							}		
						} else {
							// �޵�ַ��ֱ�Ӵ����ص�
							callback(o);
						}
						data.obj = null;	
						
					//}
				}
				}
			//});	
		};
		
		//�¼�����
		//������ϼ�ִ��
		loading();
		//����ִ��
		params.container.bind("scroll", loading);
	};
})(jQuery);