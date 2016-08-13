(function() {
    var mobe = {};

    var navBlock = $(".rj_nav"), //标题ul元素dom对象数组
        tabNav;
    var panelBlock = $(".rj_updataPage"), //内容元素dom对象数组
        updatePanel;
    var moreBlock = $(".rj_more"), //查看更多按钮
        btnMore;
    var dataType = "data-type",
        dataMaxPage = "data-maxPage";
    mobe.init = function() {
        $(navBlock[0]).children(":first-child").addClass("active"); //给ul.rj_nav标签的第一个li添加样式
        tabNav = $(navBlock[0]).children(); //导航子元素
        updatePanel = $(panelBlock[0]); //更新版面
        btnMore = $(moreBlock[0]); //更多按钮
    };

    mobe.aboutTCL = function(mobj) {
        var objStruct = {}, //对象结构
            //董事长致辞、TCL简介、公司荣誉 数据结构
            objStur = {
                content: "",
                createtime: 0,
                description: null,
                id: 0,
                issueTime: null,
                name: null,
                pic: "",
                rPic: null,
                sort: null,
                title: null,
                type: 1,
                url: "",
                years: null,
            },
            //分类结构
            objClasify = {
                createTime: 0,
                id: 0,
                sort: 0,
                title: "",
            };

        var tempPanel, tempMore, tempType = 0;
        $(navBlock[1]).children(":first-child").addClass("active");
        var tabNavS2 = $(".about_nav_s2").children(); //二级子菜单
        tempPanel = updatePanel;
        tempMore = btnMore;

        //二级导航滑动
        Swiper('.swiper-container ', {
            freeMode: true,
            slidesPerView: "auto"
        });
        //二级导航切换事件
        tabNavS2.on("click", function() {
            $(this).addClass("active").siblings().removeClass("active");
            tempType = $(this).attr(dataType);
            tempPanel.html("");
            tempMore.show();
            if (tempType === undefined) { //没有type数据的节点
                tempPanel.append('<ul class="img_list"></ul>');
                var tempContent = tempPanel.find(".img_list");
                $.each(function() {
                    tempContent.append('<li><a href="' + qylinian[i].urlSrc + '"><img src="' + qylinian[i].imgSrc + ' " alt=" ' + qylinian[i].altText + ' "/></a></li>"');
                });
                return;
            }
            loadMore(tempType);
        });
        //更多按钮事件
        tempMore.on("click", function() {
            var tempabtc = $(".about_content");
            tempType = parseInt(tempType);
            if (tempType === 0 || tempType === 1) {
                tempabtc.css("height", "auto");
                $(this).hide();
            }
        });

        var loadMore = function(type) {
            mPage.paginator({
                url: mobj.url,
                data: {
                    "type": type,
                },
                success: function(data) {
                    objStruct = data.data; //将数据结构体赋值成对象结构
                    type = parseInt(type);
                    if (type === 0 || type === 1) {
                        objStur = objStruct;
                        tempPanel.append('<ul class="img_list"></ul><div class="about_content"></div>');
                        tempPanel.find(".img_list").append('<li><a href=javascript:void(0);><img src="' + objStur.pic + '" alt=""/></a></li>');
                        tempPanel.find(".about_content").append(objStur.content);
                        return;
                    }
                    if (type === 3) {
                        //临时对象结构、数据结构、变量
                        var dlc = objStruct.developCat,
                            dbn = objStruct.detailByName,
                            dlcLen = dlc.length,
                            dbnLen = dbn.length,
                            tempdlc, tempdbnList, tempYears, tempMoreElem, tempSprd;
                        tempPanel.siblings(".rj_more").hide(); //隐藏更新面板更多按钮
                        for (var i = 0; i < dlcLen; i++) { //循环类型数据
                            tempdlc = dlc[i];
                            tempdbnList = dbn[dlc[i].id];
                            tempPanel.append('<div><div class="about_content bor-bott"><h4 class="fs28 block_segment">' + tempdlc.title + '</h4></div><div class="rj_more bor-bott"><a class="get_more fs20" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a></div></div>');

                            for (var j = 0; j < tempdbnList.length; j++) { //循环结构数据
                                $(tempPanel.find('.about_content')[i])
                                    .append(tempYears !== tempdbnList[j].years ?
                                        '<p class="fs28 block_segment">' + tempdbnList[j].years + '</p>' : ""
                                    ).append(tempdbnList[j].content);
                                tempYears = tempdbnList[j].years;
                            }
                        }
                        tempMoreElem = $(".about_content").siblings(".rj_more"); //获取对应数据的更多按钮数组
                        tempMoreElem.on("click", function() { //动态添加更多按钮事件
                            tempSprd = $(this).siblings(".about_content");
                            tempSprd.toggleClass("spread");
                            tempSprd.hasClass("spread") ?
                                tempSprd.css("height", "auto") : tempSprd.css("height", "");
                            tempSprd.hasClass("spread") ?
                                $(this).html('<a class="get_more fs20" href="javascript:void(0);">点击收起<span class="icf">&#xe639;</span></a>') :
                                $(this).html('<a class="get_more fs20" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a>');
                        });
                        return;
                    }
                    if (type === 18) {
                        var tempSobjLen, tempSprd, tempMoreElem;
                        tempPanel.siblings(".rj_more").hide(); //隐藏更新面板更多按钮
                        objStur = objStruct;
                        tempSobjLen = objStruct.length;
                        for (var i = 0; i < tempSobjLen; i++) {
                            tempPanel.append('<div><div class="about_content bor-bott"><h4 class="fs28 block_segment">' + objStruct[i].years + '年</h4></div><div class="rj_more bor-bott"><a class="get_more fs20" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a></div></div>');
                            $(tempPanel.find(".about_content")[i]).append(objStruct[i].content);
                        }
                        tempMoreElem = $(".about_content").siblings(".rj_more"); //获取对应数据的更多按钮数组
                        tempMoreElem.on("click", function() { //动态添加更多按钮事件
                            tempSprd = $(this).siblings(".about_content");
                            tempSprd.toggleClass("spread");
                            tempSprd.hasClass("spread") ?
                                tempSprd.css("height", "auto") : tempSprd.css("height", "");
                            tempSprd.hasClass("spread") ?
                                $(this).html('<a class="get_more fs20" href="javascript:void(0);">点击收起<span class="icf">&#xe639;</span></a>') :
                                $(this).html('<a class="get_more fs20" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a>');
                        });
                        return;
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        };
    };

    mobe.Investor = function(mobj) {
        var tabNav1, //自定义变量
            updatePanel1, btnMore1;
        $(navBlock[1]).children(":first-child").addClass("active"); //相关法律及制度第一个li添加样式
        tabNav1 = $(navBlock[1]).children(); //将相关法律标题li 赋值给变量
        updatePanel1 = $(panelBlock[1]); //相关法律法规内容面板赋值
        btnMore1 = $(moreBlock[1]); //相关法律查看更多按钮
        $(".rj_securities").hide(); //初始化隐藏证券法律法规

        var tabUpdae = function() {
                var tempPanel,
                    tempType,
                    tempMax = 0;
                var pageset = mPage.pageSet({ //设置页面参数
                    startPage: 1, //开始页
                    indexPage: 1, //首页
                    pageSize: 3, //每页数
                    maxPage: $(navBlock[0]).children(":first-child").attr(dataMaxPage), //最大数
                });

                tabNav.on("click", function() {
                    $(this).addClass("active").siblings().removeClass("active");
                    updatePanel.html(""); //制空内容面板
                    tempType = $(this).attr(dataType); //保存type到变量
                    tempPanel = updatePanel;
                    pageset = mPage.pageSet({
                        startPage: 1,
                        indexPage: 1,
                        pageSize: 3,
                        maxPage: tempMax = $(this).attr(dataMaxPage)
                    });
                    if (tempMax > 1) {
                        btnMore.show(); //显示查看更多按钮
                    } else {
                        btnMore.hide();
                    }
                    loadMore(pageset, tempType, tempPanel, btnMore, false);
                });
                btnMore.on("click", function() { //查看更多的单机事件
                    tempType = $(navBlock[0]).children(".active").attr(dataType);
                    tempPanel = updatePanel;
                    loadMore(pageset, tempType, tempPanel, btnMore, true);
                });
            },
            tab1Updae = function(mobj) { //法律法规
                var tempPanel,
                    tempType,
                    tempMax = 0;
                //初始化分页
                var pageset = mPage.pageSet({
                    startPage: 1,
                    indexPage: 1,
                    pageSize: 3,
                    maxPage: $(navBlock[1]).children(":first-child").attr(dataMaxPage)
                });

                tabNav1.on("click", function() { //法律法规详情单击事件
                    $(this).addClass("active").siblings().removeClass("active");
                    updatePanel1.html("");
                    btnMore1.show();
                    tempType = $(this).attr(dataType);
                    tempPanel = updatePanel1;
                    if (tempType === undefined) { //切换证券法律法规
                        $(".rj_securities").show();
                        btnMore1.hide();
                        return;
                    } else {
                        $(".rj_securities").hide();
                    }
                    //更新切换对应type分页
                    pageset = mPage.pageSet({
                        startPage: 1,
                        indexPage: 1,
                        pageSize: 3,
                        maxPage: tempMax = $(this).attr(dataMaxPage)
                    });
                    loadMore(pageset, tempType, tempPanel, btnMore1, false);
                });
                //更多按钮
                btnMore1.on("click", function() {
                    tempType = $(navBlock[1]).children(".active").attr(dataType);
                    tempPanel = updatePanel1;
                    loadMore(pageset, tempType, tempPanel, btnMore1, true);
                });
            },
            loadMore = function(pageset, tempType, tempPanel, tempMore, isMore) {
                if (pageset.indexPage() > pageset.maxPage()) { //如果当前页大于总页数
                    return; //直接返回
                }
                mPage.paginator({ //否则异步请求数据
                    url: mobj.url,
                    data: {
                        "type": tempType,
                        "pageNumber": isMore === true ?
                            pageset.nextPage() : 1, //判断是查看详情还是查看更多
                        "listAccount": pageset.pageSize()
                    },
                    success: function(data) {
                        tempPanel.append(data); //面板添加数据
                        if (pageset.indexPage() >= pageset.maxPage()) { //如果当前页等于或者大于最大页
                            tempMore.hide(); //隐藏更多按钮
                        }
                    },
                    error: function(e) {
                        console.error(e); //出错打印错误信息
                    }
                });
            };
        tabUpdae(); //设置页面数函数调用
        tab1Updae();
    };

    mobe.InvestorQA = function(mobj) {
        //初始化分页
        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 3, //每页数
            maxPage: mobj.maxPage //最大页数
        });
        var tempPanel, tempMore;
        btnMore.on("click", function() {
            tempPanel = updatePanel;
            tempMore = btnMore;
            if (pageset.indexPage() > pageset.maxPage()) { //如果当前页大于总页数
                tempMore.hide(); //隐藏更多按钮
                return; //直接返回
            }
            mPage.paginator({ //否则异步请求数据
                url: mobj.url,
                data: {
                    "id": "5",
                    "pageNumber": pageset.nextPage(),
                    "listAccount": pageset.pageSize()
                },
                success: function(data) {
                    var resutl = $.parseJSON(data);
                    var tempHTML = $("<li class='bor-bott'></li>"),
                        dataHTML;
                    if (resutl) {
                        $.each(resutl, function(index, element) {
                            dataHTML = tempHTML.append("<p>问：" + element.description + "</p><p class='ans'>答：" + element.content + "</p>");
                        });
                    }

                    tempPanel.append(dataHTML); //面板添加数据
                    if (pageset.indexPage() >= pageset.maxPage()) { //如果当前页等于或者大于最大页
                        tempMore.hide(); //隐藏更多按钮
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        });
    };

    mobe.technology = function(mobj) {
        var tempPanel = updatePanel;
        var tempJson, tempObj, tempType;

        //导航事件
        tabNav.on("click", function() {
            $(this).addClass("active").siblings().removeClass("active");
            var tempIndex = tabNav.index(this);
            tempType = $(this).attr(dataType);
            tempPanel.html("");
            //没有type数据的节点
            tempType !== undefined ?
                loadMore(tempIndex, true) : loadMore(tempIndex, false);
        });

        var loadMore = function(tempIndex, isAyx) {
            if (isAyx) {
                mPage.paginator({
                    url: mobj.url,
                    data: {
                        "type": tempType,
                    },
                    success: function(data) {
                        var tempTitle = ["荣誉", "新技术、新产品", "专利奖"];
                        tempObj = data.data;
                        var tempLen = tempObj.length;
                        for (var i = 0; i < tempTitle.length; i++) {
                            tempPanel.append('<div><div class="about_content bor-bott"><h4 class="fs28 block_segment">' + tempTitle[i] + '</h4></div><div class="rj_more bor-bott"><a class="get_more fs20" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a></div></div>');
                            for (var j = 0; j < tempLen; j++) {
                                if (tempObj[j].sort === (i + 1)) {
                                    $(tempPanel.find(".about_content")[i])
                                        .append('<p class="block_segment">' + tempObj[i].title + ". " + tempObj[i].description + '</p>');
                                }
                            }
                        }
                        tempPanel.find(".rj_more").on("click", function() {
                            var tempSpread = $(this).siblings(".about_content");
                            tempSpread.toggleClass("spread");
                            tempSpread.hasClass("spread") ?
                                tempSpread.css("height", "auto") : tempSpread.css("height", "");
                            tempSprd.hasClass("spread") ?
                                $(this).html('<a class="get_more fs20" href="javascript:void(0);">点击收起<span class="icf">&#xe639;</span></a>') :
                                $(this).html('<a class="get_more fs20" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a>');
                        });
                    },
                    error: function(e) {
                        console.error(e); //出错打印错误信息
                    }
                });
            } else {
                //分页可请求静态资源
                mPage.paginator({
                    url: "/static/common/js/sticConfig.json",
                    dateType: "json",
                    success: function(data) {
                        //tempJson = JSON.parse(data + "");
                        tempJson = data;
                        if (tempIndex === 0) {
                            tempObj = tempJson.jishuyanfa.cxtixi;
                            if (tempObj.headImg.imgSrc !== "") {
                                tempPanel.append('<ul class="img_list"><li><img src="' + tempObj.headImg.imgSrc + '" alt="' + tempObj.headImg.altText + '" /></li></ul>');
                            }
                            if (tempObj.content.title !== "") {
                                tempPanel.append('<h4 class="fs24 block_segment">' + tempObj.content.title + '</h4>');
                            }
                            tempPanel.append(tempObj.content.text);
                            return;
                        }
                        if (tempIndex === 2) {
                            tempObj = tempJson.jishuyanfa.fuhuazhongxin;
                            if (tempObj.headImg.imgSrc !== "") {
                                tempPanel.
                                append('<ul class="img_list"><li><img src="' + tempObj.headImg.imgSrc + '" alt="' + tempObj.headImg.altText + '" /></li></ul>');
                            }
                            var tempLen = tempObj.content.length,
                                tempctn = tempObj.content;
                            for (var i = 0; i < tempLen; i++) {
                                tempPanel.append('<div class="dtc_content20 bor-bott fs18"></div>');
                                $(tempPanel.find(".dtc_content20")[i])
                                    .append('<h4 class="fs28 block_segment pdt20">' + tempctn[i].title + '</h4>' + tempctn[i].text);
                            }
                            return;
                        }
                    },
                    error: function(e) {
                        console.error(e); //出错打印错误信息
                    }
                });
            }
        };
        loadMore(0);
    };

    mobe.responsibilityActivity = function(mobj) {
        //初始化分页
        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 3, //每页数
            maxPage: 1 //最大页数
        });
        var tempMore = moreBlock;
        var tempPanel, tempType, tempinxPage, tempMaxPage;
        var tempCuntUp = panelBlock;
        tempCuntUp.each(function(i) {
            var tmx = $(tempCuntUp[i]);
            if (tmx.attr(dataMaxPage) <= 1) {
                tmx.siblings(".rj_more").hide();
            }
        });
        tempMore.on("click", function() {
            tempPanel = $(this).siblings(".rj_updataPage");
            tempType = tempPanel.attr(dataType);
            tempMaxPage = tempPanel.attr(dataMaxPage);
            tempinxPage = tempPanel.attr("data-indexPage");
            pageset.indexPage(tempinxPage);
            pageset.maxPage(tempMaxPage);
            loadMore(tempType, tempPanel, $(this));
        });
        var loadMore = function(tempType, tempPanel, getMorebtn) {
            if (pageset.indexPage() > pageset.maxPage()) { //如果当前页大于总页数
                return; //直接返回
            }
            mPage.paginator({ //否则异步请求数据
                url: mobj.url,
                data: {
                    "type": tempType,
                    "pageNumber": pageset.nextPage(), //判断是查看详情还是查看更多
                    "listAccount": pageset.pageSize()
                },
                success: function(data) {
                    tempPanel.append(data); //面板添加数据
                    tempType = parseInt(tempType);
                    tempPanel.attr("data-indexPage", pageset.indexPage());
                    if (pageset.indexPage() >= pageset.maxPage()) { //如果当前页等于或者大于最大页
                        getMorebtn.hide(); //隐藏更多按钮
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        };
    };
    mobe.responsibilityReport = function(mobj) {
        //初始化分页
        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 3, //每页数
            maxPage: mobj.maxPage //最大页数
        });
        var tempPanel = updatePanel,
            tempMore = btnMore;
        var tempPanel, tempType, tempMaxPage;
        tempMore.on("click", function() {
            tempType = tempPanel.attr(dataType);
            tempMaxPage = tempPanel.attr(dataMaxPage);
            pageset.maxPage(tempMaxPage);
            loadMore(tempType, tempPanel);
        });
        var loadMore = function(tempType, tempPanel) {
            if (pageset.indexPage() > pageset.maxPage()) { //如果当前页大于总页数
                return; //直接返回
            }
            mPage.paginator({ //否则异步请求数据
                url: mobj.url,
                data: {
                    "type": tempType,
                    "pageNumber": pageset.nextPage(), //判断是查看详情还是查看更多
                    "listAccount": pageset.pageSize()
                },
                success: function(data) {
                    tempPanel.append(data); //面板添加数据
                    if (pageset.indexPage() >= pageset.maxPage()) { //如果当前页等于或者大于最大页
                        tempMore.hide(); //隐藏更多按钮
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        };

    };

    window.mobe = mobe;
})();
