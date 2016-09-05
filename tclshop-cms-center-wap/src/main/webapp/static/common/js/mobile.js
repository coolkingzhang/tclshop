(function() {
    var mobe = new Object();

    var navBlock = $(".rj_nav"), //标题ul元素dom对象数组
        tabNav;
    var panelBlock = $(".rj_updataPage"), //内容元素dom对象数组
        updatePanel;
    var moreBlock = $(".rj_more"), //查看更多按钮
        btnMore;
    var dataType = "data-type",
        dataMaxPage = "data-maxPage";
    var tempObj = {
        tempPanel: null,
        tempMore: null,
        tempType: 0
    };

    mobe.init = function() {
        $(navBlock[0]).children(":first-child").addClass("active"); //给ul.rj_nav标签的第一个li添加样式
        tabNav = $(navBlock[0]).children(); //导航子元素
        updatePanel = $(panelBlock[0]); //更新版面
        btnMore = $(moreBlock[0]); //更多按钮
    };

    mobe.rmlc = function() {
        $("#main_server").remove();
    };

    mobe.banneSwipe = function(mobj) {
        var banneData, banner = $(".swiper-container-banne>.swiper-wrapper");
        mPage.paginator({ //否则异步请求数据
            url: mobj.url,
            success: function(data) {
                banneData = data.data;
                var tempLen = banneData.length;
                for (var i = 0; i < tempLen; i++) {
                    banner.append('<li class="swiper-slide"><a href="' + banneData[i].buttonUrl + '"><div class="banne_text"><p class="title fs40">' + banneData[i].title + '</p><p class="futitie fs24">' + banneData[i].shorttile + '</p></div><img src="' + banneData[i].webPic + '" alt=""></a></li>');
                }

                Swiper('.swiper-container-banne', {
                    autoplay: 5000,
                    autoplayDisableOnInteraction: false,
                    pagination: '.swiper-pagination',
                    paginationClickable: true,
                    spaceBetween: 0,
                    loop: true,
                });
            },
        });
    };

    //关于TCL
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
        var tempVarb = tempObj;

        tempVarb.tempPanel = updatePanel;
        tempVarb.tempMore = btnMore;
        tempVarb.tempType = 0;

        $(navBlock[1]).children(":first-child").addClass("active");
        var tabNavS2 = $(".about_nav_s2").children(); //二级子菜单

        //二级导航滑动
        Swiper('.swiper-container ', {
            freeMode: true,
            slidesPerView: "auto"
        });
        //二级导航切换事件
        tabNavS2.on("click", function() {
            $(this).addClass("active").siblings().removeClass("active");
            mPage.loadpg(tempVarb.tempPanel, true);
            tempVarb.tempType = $(this).attr(dataType);

            if (typeof tempVarb.tempType === "undefined") { //没有type数据的节点
                tempVarb.tempPanel.append('<ul class="y_w92 img_list"></ul>');
                var tempContent = tempVarb.tempPanel.find(".img_list");
                mPage.paginator({
                    url: "../static/common/js/sticConfig.json",
                    dateType: "json",
                    success: function(data) {
                        var tempData = typeof data[0] !== "undefined" ? JSON.parse(data) : data;
                        var qiyelinian = tempData.qiyelinian,
                            qylen = qiyelinian.length;
                        for (var i = 0; i < qylen; i++) {
                            tempContent.append('<li><a href="' + qiyelinian[i].urlSrc + '"><img src="' + qiyelinian[i].imgSrc + '" alt="' + qiyelinian[i].altText + '"/></a></li>');
                        }
                    }
                });
                mPage.loadpg(tempVarb.tempPanel, false);
                return;
            }
            loadMore(tempVarb.tempType, tempVarb.tempPanel);
        });

        var loadMore = function(tempType, tempPanel) {
            mPage.paginator({
                url: mobj.url,
                data: {
                    "type": tempType,
                },
                success: function(data) {
                    var tempSpread;
                    objStruct = data.data; //将数据结构体赋值成对象结构
                    tempType = parseInt(tempType);
                    if (tempType === 0 || tempType === 1) {
                        objStur = objStruct;
                        tempPanel.append('<ul class="img_list"></ul>');
                        tempPanel.find(".img_list").append('<li><a href=javascript:void(0);><img src="' + objStur.pic + '" alt=""/></a></li>');
                        if (tempType === 0) {
                            //TCL简介新增文字内容
                            tempPanel.append('<h4 class="fs30">全球化浪潮中新兴的中国力量</h4><p class="color_999">TCL即 the creative life 三个英文单词首字母的缩写，意为创意感动生活</p>');
                        }
                        tempPanel.append(objStur.content);
                        return;
                    }
                    if (tempType === 3) {
                        //临时对象结构、数据结构、变量
                        var dlc = objStruct.developCat,
                            dbn = objStruct.detailByName,
                            dlcLen = dlc.length,
                            dbnLen = dbn.length,
                            tempdlc, tempdbnList, tempYears, tempMoreElem;
                        tempPanel.siblings(".rj_more").hide(); //隐藏更新面板更多按钮
                        tempPanel.append('<ul class="img_list"><li><a href=javascript:void(0);><img src="../static/common/images/发展历程.png" alt=""/></a></li></ul>');
                        for (var i = 0; i < dlcLen; i++) { //循环类型数据
                            tempdlc = dlc[i];
                            tempdbnList = dbn[dlc[i].id];
                            tempPanel.append('<div class="pd20"><div class="dtc_content20 about_content bor-bott"><h4 class="fs28 block_segment">' + tempdlc.title + '</h4></div><div class="rj_more bor-bott"><a class="get_more fs22" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a></div></div>');
                            for (var j = 0; j < tempdbnList.length; j++) { //循环结构数据
                                $(tempPanel.find('.about_content')[i])
                                    .append(tempYears !== tempdbnList[j].years ?
                                        '<h5 class="fs28">' + tempdbnList[j].years + '</h5>' : ""
                                    ).append(tempdbnList[j].content);
                                tempYears = tempdbnList[j].years;
                            }
                        }
                        tempMoreElem = $(".about_content").siblings(".rj_more"); //获取对应数据的更多按钮数组
                        tempMoreElem.on("click", function() { //动态添加更多按钮事件
                            tempSpread = $(this).siblings(".about_content");
                            tempSpread.toggleClass("spread");
                            tempSpread.hasClass("spread") ?
                                tempSpread.css("height", "auto") : tempSpread.css("height", "");
                            tempSpread.hasClass("spread") ?
                                $(this).html('<a class="get_more fs22" href="javascript:void(0);">点击收起<span class="icf">&#xe639;</span></a>') :
                                $(this).html('<a class="get_more fs22" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a>');
                        });
                        return;
                    }
                    if (tempType === 18) {
                        var tempSobjLen;
                        tempPanel.siblings(".rj_more").hide(); //隐藏更新面板更多按钮
                        objStur = objStruct;
                        tempSobjLen = objStruct.length;
                        tempPanel.append('<div class="pd20"><div class="dtc_content20 about_content bor-bott"></div><div class="rj_more bor-bott"><a class="get_more fs22" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a></div></div>');
                        for (var k = 0; k < tempSobjLen; k++) {
                            tempPanel.find(".about_content").append('<h4 class="fs28 pdt20">' + objStur[k].years + '年</h4>' + objStur[k].content);
                        }
                        tempPanel.find("ul").addClass("dcac_text");
                        $(".rj_more").on("click", function() { //动态添加更多按钮事件
                            tempSpread = $(this).siblings(".about_content");
                            tempSpread.toggleClass("spread");
                            tempSpread.hasClass("spread") ?
                                tempSpread.css("height", "auto") : tempSpread.css("height", "");
                            tempSpread.hasClass("spread") ?
                                $(this).html('<a class="get_more fs22" href="javascript:void(0);">点击收起<span class="icf">&#xe639;</span></a>') :
                                $(this).html('<a class="get_more fs22" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a>');
                        });
                        return;
                    }
                },
                complete: function() {
                    mPage.loadpg(tempPanel, false);
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        };
    };

    //新闻中心
    mobe.news = function(mobj) {
        var tempVarb = tempObj,
            tempMaxPage = 0;

        tempVarb.tempPanel = updatePanel;
        tempVarb.tempMore = btnMore;
        tempVarb.tempType = 0;

        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 10, //每页数
            maxPage: $(navBlock[0]).children(":first-child").attr("data-maxPage"), //最大数
        });
        //轮播
        Swiper('.swiper-container ', {
            slidesPerView: 3.5,
            paginationClickable: true,
            spaceBetween: 0,
            freeMode: true
        });
        $(navBlock[0]).children(":first-child").addClass("active"); //给分析报告ul标签的第一个li添加样式

        tabNav.on("click", function() { //分析报告详情单击事件
            $(this).addClass("active").siblings().removeClass("active");
            tempVarb.tempType = $(this).attr("data-type"); //保存type到变量
            mPage.loadpg(tempVarb.tempPanel, true);
            tempMaxPage = $(this).attr("data-maxPage");
            pageset = mPage.pageSet({
                startPage: 1,
                indexPage: 1,
                pageSize: 10,
                maxPage: tempMaxPage
            });

            if (tempMaxPage > 1) {
                btnMore.show(); //显示查看更多按钮
            } else {
                btnMore.hide();
            }

            loadMore(pageset, tempVarb.tempType, tempVarb.tempPanel, tempVarb.tempMore, false);
        });
        tempVarb.tempMore.on("click", function() { //查看更多的单机事件
            tempVarb.tempType = $(navBlock[0]).children(".active").attr("data-type");
            loadMore(pageset, tempVarb.tempType, tempVarb.tempPanel, tempVarb.tempMore, true);
        });

        var loadMore = function(pageset, tempType, tempPanel, tempMore, isMore) {
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
                complete: function() {
                    if (!isMore) {
                        mPage.loadpg(tempPanel, false);
                        tempMore.show();
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        };
    };

    //投资者关系
    mobe.Investor = function(mobj) {
        var tabNav1, //自定义变量
            updatePanel1, btnMore1;

        var tempVarb = {},
            tempVarb1 = {},
            tempMaxPage = 0;

        $.extend(tempVarb, tempObj);
        $.extend(tempVarb1, tempObj);

        tabNav1 = $(navBlock[1]).children(); //将相关法律标题li 赋值给变量
        updatePanel1 = $(panelBlock[1]); //相关法律法规内容面板赋值
        btnMore1 = $(moreBlock[1]); //相关法律查看更多按钮

        tempVarb.tempPanel = updatePanel;
        tempVarb.tempMore = btnMore;
        tempVarb.tempType = 0;

        tempVarb1.tempPanel = updatePanel1;
        tempVarb1.tempMore = btnMore1;
        tempVarb1.tempType = 0;

        $(navBlock[1]).children(":first-child").addClass("active"); //相关法律及制度第一个li添加样式
        $(".rj_securities").hide(); //初始化隐藏证券法律法规

        var tabUpdae = function() {
                var pageset = mPage.pageSet({ //设置页面参数
                    startPage: 1, //开始页
                    indexPage: 1, //首页
                    pageSize: 3, //每页数
                    maxPage: $(navBlock[0]).children(":first-child").attr(dataMaxPage), //最大数
                });

                tabNav.on("click", function() {
                    $(this).addClass("active").siblings().removeClass("active");
                    tempVarb.tempType = $(this).attr(dataType); //保存type到变量
                    mPage.loadpg(tempVarb.tempPanel, true);
                    tempMaxPage = $(this).attr(dataMaxPage);
                    pageset = mPage.pageSet({
                        startPage: 1,
                        indexPage: 1,
                        pageSize: 3,
                        maxPage: tempMaxPage
                    });
                    if (tempMaxPage > 1) {
                        tempVarb.tempMore.show(); //显示查看更多按钮
                    } else {
                        tempVarb.tempMore.hide();
                    }
                    loadMore(pageset, tempVarb.tempType, tempVarb.tempPanel, tempVarb.tempMore, false);
                });
                tempVarb.tempMore.on("click", function() { //查看更多的单机事件
                    tempVarb.tempType = $(navBlock[0]).children(".active").attr(dataType);
                    loadMore(pageset, tempVarb.tempType, tempVarb.tempPanel, tempVarb.tempMore, true);
                });
            },
            tab1Updae = function(mobj) { //法律法规
                //初始化分页
                var pageset = mPage.pageSet({
                    startPage: 1,
                    indexPage: 1,
                    pageSize: 3,
                    maxPage: $(navBlock[1]).children(":first-child").attr(dataMaxPage)
                });
                tabNav1.on("click", function() { //法律法规详情单击事件
                    $(this).addClass("active").siblings().removeClass("active");
                    tempVarb1.tempType = $(this).attr(dataType);
                    mPage.loadpg(tempVarb1.tempPanel, true);
                    if (typeof tempVarb1.tempType === "undefined") { //切换证券法律法规
                        mPage.loadpg(tempVarb1.tempPanel, false);
                        $(".rj_securities").show();
                        tempVarb1.tempMore.hide();
                        return;
                    } else {
                        $(".rj_securities").hide();
                    }
                    tempMaxPage = $(this).attr(dataMaxPage);
                    //更新切换对应type分页
                    pageset = mPage.pageSet({
                        startPage: 1,
                        indexPage: 1,
                        pageSize: 3,
                        maxPage: tempMaxPage
                    });
                    loadMore(pageset, tempVarb1.tempType, tempVarb1.tempPanel, tempVarb1.tempMore, false);
                });
                //更多按钮
                tempVarb1.tempMore.on("click", function() {
                    tempVarb1.tempType = $(navBlock[1]).children(".active").attr(dataType);
                    loadMore(pageset, tempVarb1.tempType, tempVarb1.tempPanel, tempVarb1.tempMore, true);
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
                    complete: function() {
                        if (!isMore) {
                            mPage.loadpg(tempPanel, false);
                            tempMore.show();
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

    //投资者问答
    mobe.InvestorQA = function(mobj) {
        var tempVarb = tempObj;

        tempVarb.tempPanel = updatePanel;
        tempVarb.tempMore = btnMore;
        tempVarb.tempType = 0;

        //初始化分页
        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 3, //每页数
            maxPage: mobj.maxPage //最大页数
        });
        tempVarb.tempMore.on("click", function() {
            if (pageset.indexPage() > pageset.maxPage()) { //如果当前页大于总页数
                tempVarb.tempMore.hide(); //隐藏更多按钮
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

                    tempVarb.tempPanel.append(dataHTML); //面板添加数据
                    if (pageset.indexPage() >= pageset.maxPage()) { //如果当前页等于或者大于最大页
                        tempVarb.tempMore.hide(); //隐藏更多按钮
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        });
    };

    //关于TCL - 技术研发
    mobe.technology = function(mobj) {
        var tempVarb = tempObj;
        var tempIndex = 0,
            tempJson, tempData, tempType;

        tempVarb.tempPanel = updatePanel;
        tempVarb.tempMore = btnMore;
        tempVarb.tempType = 0;

        //导航事件
        tabNav.on("click", function() {
            $(this).addClass("active").siblings().removeClass("active");
            tempIndex = tabNav.index(this);
            tempVarb.tempType = $(this).attr(dataType);
            mPage.loadpg(tempVarb.tempPanel, true);
            //没有type数据的节点
            typeof tempVarb.tempType !== "undefined" ?
                loadMore(tempIndex, tempVarb.tempType, tempVarb.tempPanel, true) :
                loadMore(tempIndex, null, tempVarb.tempPanel, false);
        });

        var loadMore = function(tempIndex, tempType, tempPanel, isAyx) {
            if (isAyx) {
                mPage.paginator({
                    url: mobj.url,
                    data: {
                        "type": tempType,
                    },
                    success: function(data) {
                        var tempTitle = ["荣誉", "新技术、新产品", "专利奖"],
                            tempSpread;
                        tempData = data.data;
                        var tempLen = tempData.length;
                        for (var i = 0; i < tempTitle.length; i++) {
                            tempPanel.append('<div class="pd20"><div class="dtc_content20 about_content bor-bott"><h4 class="fs28 block_segment">' + tempTitle[i] + '</h4></div><div class="rj_more bor-bott"><a class="get_more fs22" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a></div></div>');
                            for (var j = 0; j < tempLen; j++) {
                                if (tempData[j].sort === (i + 1)) {
                                    $(tempPanel.find(".about_content")[i])
                                        .append('<p class="block_segment">' + tempData[j].title + ". " + tempData[j].description + '</p>');
                                }
                            }
                        }
                        tempPanel.find(".rj_more").on("click", function() {
                            tempSpread = $(this).siblings(".about_content");
                            tempSpread.toggleClass("spread");
                            tempSpread.hasClass("spread") ?
                                tempSpread.css("height", "auto") : tempSpread.css("height", "");
                            tempSpread.hasClass("spread") ?
                                $(this).html('<a class="get_more fs22" href="javascript:void(0);">点击收起<span class="icf">&#xe639;</span></a>') :
                                $(this).html('<a class="get_more fs22" href="javascript:void(0);">查看更多<span class="icf">&#xe608;</span></a>');
                        });
                    },
                    complete: function() {
                        mPage.loadpg(tempPanel, false);
                    },
                    error: function(e) {
                        console.error(e); //出错打印错误信息
                    }
                });
            } else {
                //分页可请求静态资源
                mPage.paginator({
                    url: "../static/common/js/sticConfig.json",
                    dateType: "json",
                    success: function(data) {
                        //tempJson = JSON.parse(data + "");
                        tempJson = data;
                        if (tempIndex === 0) {
                            tempData = tempJson.jishuyanfa.cxtixi;
                            if (tempData.headImg.imgSrc !== "") {
                                tempPanel.append('<ul class="img_list"><li><img src="' + tempData.headImg.imgSrc + '" alt="' + tempData.headImg.altText + '" /></li></ul>');
                            }
                            if (tempData.content.title !== "") {
                                tempPanel.append('<h4 class="fs36 block_segment">' + tempData.content.title + '</h4>');
                            }
                            tempPanel.append(tempData.content.text);
                            return;
                        }
                        if (tempIndex === 2) {
                            tempData = tempJson.jishuyanfa.fuhuazhongxin;
                            if (tempData.headImg.imgSrc !== "") {
                                tempPanel.
                                append('<ul class="img_list"><li><img src="' + tempData.headImg.imgSrc + '" alt="' + tempData.headImg.altText + '" /></li></ul>');
                            }
                            var tempLen = tempData.content.length,
                                tempctn = tempData.content;
                            for (var i = 0; i < tempLen; i++) {
                                tempPanel.append('<div class="dtc_content20 bor-bott"></div>');
                                $(tempPanel.find(".dtc_content20")[i])
                                    .append('<h4 class="fs28 block_segment pdt20">' + tempctn[i].title + '</h4>' + tempctn[i].text);
                            }
                            return;
                        }
                    },
                    complete: function() {
                        mPage.loadpg(tempPanel, false);
                    },
                    error: function(e) {
                        console.error(e); //出错打印错误信息
                    }
                });
            }
        };
        loadMore(tempIndex, null, tempVarb.tempPanel, false);
    };

    //社会责任 - 公民行动
    mobe.responsibilityActivity = function(mobj) {
        var tempVarb = tempObj,
            moreBtn = moreBlock,
            CuntUpPanel = panelBlock,
            tempinxPage, tempMaxPage;

        //初始化分页
        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 3, //每页数
            maxPage: 1 //最大页数
        });

        CuntUpPanel.each(function(i) {
            var tmx = $(CuntUpPanel[i]);
            if (tmx.attr(dataMaxPage) <= 1) {
                tmx.siblings(".rj_more").hide();
            }
        });

        moreBtn.on("click", function() {
            tempVarb.tempPanel = $(this).siblings(".rj_updataPage");
            tempVarb.tempMore = $(this);
            tempVarb.tempType = tempVarb.tempPanel.attr(dataType);
            tempMaxPage = tempVarb.tempPanel.attr(dataMaxPage);
            tempinxPage = tempVarb.tempPanel.attr("data-indexPage");
            pageset.indexPage(tempinxPage);
            pageset.maxPage(tempMaxPage);
            loadMore(tempVarb.tempType, tempVarb.tempPanel, tempVarb.tempMore);
        });
        var loadMore = function(tempType, tempPanel, tempMore) {
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
                        tempMore.hide(); //隐藏更多按钮
                    }
                },
                error: function(e) {
                    console.error(e); //出错打印错误信息
                }
            });
        };
    };

    //社会责任报告
    mobe.responsibilityReport = function(mobj) {
        var tempVarb = tempObj,
            tempMaxPage = 0;

        tempVarb.tempPanel = updatePanel;
        tempVarb.tempMore = btnMore;
        tempVarb.tempType = 0;

        //初始化分页
        var pageset = mPage.pageSet({ //设置页面参数
            startPage: 1, //开始页
            indexPage: 1, //首页
            pageSize: 3, //每页数
            maxPage: mobj.maxPage //最大页数
        });

        tempMore.on("click", function() {
            tempVarb.tempType = tempVarb.tempPanel.attr(dataType);
            tempMaxPage = tempVarb.tempPanel.attr(dataMaxPage);
            pageset.maxPage(tempMaxPage);
            loadMore(tempVarb.tempType, tempVarb.tempPanel);
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
