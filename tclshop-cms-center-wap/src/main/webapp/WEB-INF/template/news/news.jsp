<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>新闻中心</title>

        <!-- independent -->
        <link rel="stylesheet" href="../static/common/css/style.css"/>
        <link rel="stylesheet" href="../static/common/css/home.css"/>

        <!-- common static start -->
        <%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
        <!-- common static end -->
    </head>

    <body>
        <!-- common header start -->
        <%@ include file="/WEB-INF/template/common/header.jsp" %>
        <!-- common header end -->

        <div id="main" class="main">
            <header>
                <nav class="about_nav">
                    <div class="swiper-container y_w92 bor-bott">
                        <ul class="about_nav_s1 news_nav fs24 swiper-wrapper cls_flex rj_nav">
                            <c:forEach items="${typeAndNews.data.title }" var="newType">
                                <c:if test="${newType.value.id != 7}">
                                    <!-- 屏蔽掉新媒体 -->
                                    <li class="swiper-slide" data-type="${newType.value.id}" data-maxPage="${newType.key }">
                                        <a href="javascript:void(0);">${newType.value.name }</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </div>
                    <script type="text/javascript">
                        //轮播
                        var myImgSwiper = new Swiper('.swiper-container ', {
                            freeMode: true,
                            slidesPerView: 3.7
                        });
                    </script>
                </nav>
            </header>
            <div class="layout">
                <div class="pictext_list bor-bott rps_bility rj_updataPage">
                    <c:forEach items="${typeAndNews.data.news }" var="news">
                        <dl class="pictext_cell y_w92 bor-bott">
                            <dd class="pictext_cell_left">
                                <a href="">
                                    <img src="${news.pic }" alt="" width="100%" height="100%"/>
                                </a>
                            </dd>
                            <dd class="pictext_cell_right fs28 color_333">
                                <a href="${pageContext.request.contextPath }/news/newsDetails?id=${news.id}">
                                    <p class="pictext_title">${news.title }</p>
                                </a>
                                <p class="abreast fs20">
                                    <span class="abreast_text">${typeAndNews.data.typeNeme }</span>
                                    <jsp:setProperty name="dateValue" property="time" value="${news.issueTime * 1000}"/>
                                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                                </p>
                            </dd>
                        </dl>

                    </c:forEach>

                </div>
                <div class="rj_more">
                    <a class="get_more fs20 bor-bott" href=" javascript:void(0);">
                        查看更多<span class="icf">&#xe608;</span>
                    </a>
                </div>                
            </div>

            <!-- footer start -->
            <!-- 引入公共尾部-->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- footer end -->
        </div>
    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mPaginator.js"></script>
    <script>

        (function () {
            var navBlock = $(".rj_nav"), //标题ul元素dom对象数组
                tabNav; //自定义变量
            var panelBlock = $(".rj_updataPage"), //内容元素dom对象
                updatePanel;
            var moreBlock = $(".rj_more"), //查看更多按钮
                getMore;

            var init = function () {
                    $(navBlock[0]).children(":first-child").addClass("active"); //给分析报告ul标签的第一个li添加样式
                    tabNav = $(navBlock[0]).children(); //将分析报告标题li 赋值给变量
                    updatePanel = $(panelBlock[0]); //分析报告内容面板赋值
                    getMore = $(moreBlock[0]); //分析报告查看更多按钮

                    tabUpdae(); //设置页面数函数调用
                },

                tabUpdae = function () {
                    var tepmPanel,
                        tempType,
                        tempMax = 0;
                    var pageset = mPage.pageSet({ //设置页面参数
                        startPage: 1, //开始页
                        indexPage: 1, //首页
                        pageSize: 10, //每页数
                        maxPage: $(navBlock[0]).children(":first-child").attr("data-maxPage"), //最大数
                    });

                    tabNav.on("click", function () { //分析报告详情单击事件
                        $(this).addClass("active").siblings().removeClass("active");
                        updatePanel.html(""); //制空内容面板

                        tempType = $(this).attr("data-type"); //保存type到变量
                        tepmPanel = updatePanel;
                        pageset = mPage.pageSet({
                            startPage: 1,
                            indexPage: 1,
                            pageSize: 10,
                            maxPage: tempMax = $(this).attr("data-maxPage")
                        });
                        if (tempMax > 1) {
                            getMore.show(); //显示查看更多按钮
                        } else {
                            getMore.hide();
                        }
                        loadMore(pageset, tempType, tepmPanel, getMore, false);
                    });
                    getMore.on("click", function () { //查看更多的单机事件
                        tempType = $(navBlock[0]).children(".active").attr("data-type");
                        tepmPanel = updatePanel;
                        loadMore(pageset, tempType, tepmPanel, getMore, true);
                    });
                },
                loadMore = function (pageset, tempType, tepmPanel, tempMore, isMore) {
                    if (pageset.indexPage() > pageset.maxPage()) { //如果当前页大于总页数
                        return; //直接返回
                    }
                    mPage.paginator({ //否则异步请求数据
                        url: "${pageContext.request.contextPath }/news/newsList",
                        data: {
                            "type": tempType,
                            "pageNumber": isMore === true
                                ? pageset.nextPage()
                                : 1, //判断是查看详情还是查看更多
                            "listAccount": pageset.pageSize()
                        },
                        success: function (data) {
                            tepmPanel.append(data); //面板添加数据
                            if (pageset.indexPage() >= pageset.maxPage()) { //如果当前页等于或者大于最大页
                                tempMore.hide(); //隐藏更多按钮
                            }
                        },
                        error: function (e) {
                            console.error(e); //出错打印错误信息
                        }
                    });
                };
            init();
        })();
    </script>
</html>
