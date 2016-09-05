define([ 'jquery', 'ShowBox', 'pagination' ], function($, ShowBox, pagination) {
	return {
		commPram : {
			getPath : $('#setPath').val()
		},
		commMethod:{  
			formateDate: function() {
			  return Date.prototype.format = function(format) {
					var o = {
						"M+" : this.getMonth() + 1, // month
						"d+" : this.getDate(), // day
						"h+" : this.getHours(), // hour
						"m+" : this.getMinutes(), // minute
						"s+" : this.getSeconds(), // second
						"q+" : Math.floor((this.getMonth() + 3) / 3), // quarter
						"S" : this.getMilliseconds()
					// millisecond
					}

					if (/(y+)/.test(format)) {
						format = format.replace(RegExp.$1,
								(this.getFullYear() + "")
										.substr(4 - RegExp.$1.length));
					}

					for ( var k in o) {
						if (new RegExp("(" + k + ")").test(format)) {
							format = format.replace(RegExp.$1,
									RegExp.$1.length == 1 ? o[k] : ("00" + o[k])
											.substr(("" + o[k]).length));
						}
					}
					return format;
				}
			}
		},
		// 公共分页模块
		paginationInit : function(pageselectCallback, prev_show_always,
				next_show_always, opt) {
			//console.log(opt);
			var parm = opt ? opt : eval("(" + $('#pagination-js').data("obj")+ ")"), 
		    type = $('#typeStorage').val(),  // type值
			getPath = $('#setPath').val(), 
			num_entries = parm.total,       // 总记录数
			size = parm.size;               // 每页记录数
			prev_show_always = prev_show_always == undefined ? true : false;
			next_show_always = next_show_always == undefined ? true : false;
			//alert(type);
			size = type == 6 ? 12 : size;                   //视频新闻每页显示12条
			// 通过Ajax加载分页元素
			var initPagination = function() {

				// 创建分页
				$("#pagination-js").pagination(num_entries, {
					num_edge_entries : 2, // 边缘页数
					num_display_entries : 4, // 主体页数
					callback : function(index, jq) {
						var opts = {
							getPath : getPath,
							type : type,
							size : size,
							getLocalTime : getLocalTime,
							total:num_entries
						}
						pageselectCallback(index, jq, opts);
						scrollTop();
					},
					items_per_page : size, // 每页显示1项
					prev_show_always : prev_show_always,
					next_show_always : next_show_always,
					prev_text : "上一页",
					next_text : "下一页"
				});

			};
			/* 点击上、下页返回窗口顶部 */
			function scrollTop() {
				$('body,html').animate({
					scrollTop : 0
				}, 1);
			}
			this.commMethod.formateDate();
			function getLocalTime(nS) {

				return new Date(parseInt(nS) * 1000).format("yyyy-MM-dd");
			}
			return {
				fun : initPagination
			};
		},
		// 解决图片首次加载
		loadingImageShow : function(that) {

			var getSrc = that.getAttribute("data-src") || that.src;
			var img = new Image();
			img.src = getSrc;
			img.onload = function(e) {
				that.src = getSrc;

			}

		},
		//重新设置
		resetTitle: function(){
			//var title = $('title');
			//alert();
			/*title.html(function(index,oldStr){
				return oldStr+'-TCL官网'
			});*/
		},
		init : function() {
			// 华萌基金 /志愿者风采tab 切换
			// console.log(ShowBox);
			this.resetTitle();
			$('.hm-nav-js').on('click', function(evt) {
				var that = this;
				new ShowBox(that, evt, {
					interactive : 'tab',
					targetLayer : '.hmCont-js',
					className: 'hover'
				});
				return false;
			});

			// 显示更多
			var targetLayer = $('#bannerMoreLayer');
			$('#bannerMoreBtn,#bannerMoreLayer').hover(function() {
				targetLayer.show();
			}, function() {
				targetLayer.hide();
			});

		}

	}
});
