;(function(window, document, $){

	var LoadPlate = function (){}
	//
	LoadPlate.prototype = {
		loadPriceModule: function(element, data, callback){
			var html = '<div class="price-content">';
			var eleH = $(element).height();
			var itme = data.data;
			//遍历数据
			for(var i =0; i<itme.length; i++){
				var height = eleH*itme[i].percent/100 + 'px';
				html+= '<div class="price-item" aria-label="'+itme[i].label+'" data-start="'+itme[i].start+'" data-end="'+itme[i].end+'" data-percent="'+itme[i].percent+'">'+
						   '<span class="prompt">'+itme[i].label+'</span><span class="bg" style="height:'+height+'"></span></div>';
			}
			html+='</div>'
			$(element).append(html);
		}
	}

	return loadPlate = new LoadPlate();
})(window,document,jQuery);