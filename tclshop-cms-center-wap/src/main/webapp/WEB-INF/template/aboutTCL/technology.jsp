<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <title>技术研发</title>

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
                <nav class="about_nav ">
                    <ul class="about_nav_s1 y_w92 fs24 bor-bott">
                        <li>
                            <a href="${pageContext.request.contextPath}/companyInfo/index">公司介绍</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoArch">公司架构</a>
                        </li>
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoRDev">技术研发</a>
                        </li>
                    </ul>
                    <div class="swiper-container">
                        <ul class="about_nav_s2 fs22 rj_nav">
                            <li class="active">
                                <a href="javascript:void(0);">研发创新体系</a>
                            </li>
                            <li data-type="19">
                                <a href="javascript:void(0);">科技创新荣誉</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);">孵化中心</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <div class="y_w92 bor-bott"></div>

            <div class="layout">
                <article>
                    <div class="dtc_content fs24 rj_updataPage"></div>
                </article>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>
    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mPaginator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
    <script type="text/javascript">
        mobe.init();
        mobe.technology({url: "${pageContext.request.contextPath}/companyInfo/reloadContentData"});
    </script>

</html>
