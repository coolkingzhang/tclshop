(function() {
    "ues strict";

    //init mPaginator
    var m = {};
    var opstions = {
        url: "",
        type: "GET",
        data: {},
        timeout: 500,
    };

    var pageOpts = {
        startPage: 1, //start Page
        indexPage: 1, //index Page
        pageSize: 10, //page Size
        maxPage: 0, //max Page
        total: 10, //total number
    };

    m.pageSet = function(opts) {
        var goNextPage = 1,
            goPrevPage = -1;
        var result = {
            indexPage: 0,
            nextPage: 0,
            prevPage: 0,
            pageSize: 0,
            maxPage: 0
        };
        for (var v in opts) {
            opts[v] = parseInt(opts[v]);
        }
        $.extend(pageOpts, opts);

        if (result.indexPage === 0) {
            result.indexPage = pageOpts.indexPage;
        }
        if (pageOpts.maxPage === 0) {
            var tempMaxPage = Math.ceil(pageOpts.total / pageOpts.pageSize);
            pageOpts.maxPage = tempMaxPage;
        }
        result.maxPage = pageOpts.maxPage;
        result.pageSize = pageOpts.pageSize;

        return {
            nextPage: function() {
                if (result.indexPage < result.maxPage) {
                    result.indexPage = result.nextPage = result.indexPage + goNextPage;
                    return result.nextPage;
                }
                return result.maxPage;
            },
            prevPage: function() {
                if (result.indexPage > 1) {
                    result.indexPage = result.prevPage = result.indexPage + goPrevPage;
                    return result.prevPage;
                }
                return 1;
            },
            indexPage: function(ixp) {
                if (ixp !== undefined) {
                    pageOpts.indexPage = parseInt(ixp);
                    result.indexPage = pageOpts.indexPage;
                }
                return result.indexPage;
            },
            pageSize: function() {
                return result.pageSize;
            },
            maxPage: function(mp) {
                if (mp !== undefined) {
                    pageOpts.maxPage = parseInt(mp);
                    result.maxPage = pageOpts.maxPage;
                }
                return result.maxPage;
            }
        };
    };

    m.paginator = function(opts) {
        var mAjax;

        $.extend(opstions, opts);
        // dataHandle(opstions);
        mAjax = $.ajax(opstions);
    };

    var dataHandle = function(opstions) {
        for (var v in opstions.data) {
            if (typeof opstions.data[v] === "object") {
                for (var k in opstions.data[v]) {
                    opstions.data[k] = opstions.data[v][k];
                }
                delete opstions.data[v];
            }
        }
        return opstions;
    };

    var cssClean = {
            "height": "",
            "background-color": ""
        },
        cssLoad = {
            "height": 450,
            "background-color": "#FDFDFD"
        };

    m.loadpg = function(elem, state) {
        if (state) {
            var tempHeight = elem.height();
            cssLoad.height = tempHeight;
            elem.css(cssLoad);
            elem.html("");
        } else {
            elem.css(cssClean);
        }
    };

    m.mobhovr = function(elem, cssobj) {
        elem.on("touchstart", function() {
            elem.css(cssobj);
        });
        elem.on("touchend", function() {
            elem.css({
                "color": "",
                "background": "",
                "background-color": ""
            });
        });
    };

    window.mPage = m;
})();
