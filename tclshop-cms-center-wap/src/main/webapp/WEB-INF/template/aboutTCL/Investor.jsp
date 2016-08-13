<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="renderer" content="webkit"/>

        <title>投资者关系</title>
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

            <header class="rct_banner ivsr" style="background: url(${pictureFont[0].webPic}) no-repeat;background-size: cover;">
                <p class="rct_banner_text fs34">
                    <a href="${pictureFont[0].webPic}"></a>
                </p>
            </header>

            <!-- 投资者报告 -->
            <div class="layout cut_space">
                <div class="about_nav y_w92">
                    <ul class="about_nav_s1 fs24 bor-bott ivsr_list rj_nav">
                        <li data-type="${analysis.data.manageReport.records[0].type }" data-maxPage="${analysis.data.manageReport.pages }" class="active">
                            <a href="javascript:void(0);">定期经营分析报告</a>
                        </li>
                        <li data-type="${analysis.data.publicCompanyReport.records[0].type }" data-maxPage="${analysis.data.publicCompanyReport.pages }">
                            <a href="javascript:void(0);">上市公司报告</a>
                        </li>
                        <li data-type="${analysis.data.investmentReport.records[0].type }" data-maxPage="${analysis.data.investmentReport.pages }">
                            <a href="javascript:void(0);">投资机构研究报告</a>
                        </li>
                    </ul>
                    <ul class="file_list bor-bott rj_updataPage">
                        <c:forEach items="${analysis.data.manageReport.records }" var="manageReport">
                            <li class="bor-bott">
                                <a href="${manageReport.url }">
                                    <dl class="file_cell">
                                        <dd class="file_cell_left">
                                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                        </dd>
                                        <dd class="file_cell_center">
                                            <p class="fs30">${manageReport.title }</p>
                                            <span class="fs22">
                                                <jsp:setProperty name="dateValue" property="time" value="${manageReport.issueTime * 1000}"/>
                                                <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                                            </span>
                                        </dd>
                                        <dd class="file_cell_right">
                                            <span class="icf fs28">&#xe62f;</span>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="rj_more">
                        <a class="get_more fs20" href=" javascript:void(0);">
                            查看更多<span class="icf">&#xe608;</span>
                        </a>
                    </div>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- 旗下上市公司 -->
            <div class="layout">
                <div class="y_w92">
                    <h3 class="hm_title fs24 color_333 bor-bott">旗下上市公司</h3>
                    <ul class="ivsr_imgs">
                        <li>
                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/></li>
                        <li>
                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx02.jpg" alt=""/></li>
                        <li>
                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/></li>
                    </ul>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- 互动问答 -->
            <div class="layout  cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <a href="${pageContext.request.contextPath }/investors/investorsQA?id=5">
                            <h3 class="hm_title">互动精华问答</h3>
                            <span class="abreast_text emo1">更多
                                <span class="icf">&#xe62f;</span>
                            </span>
                        </a>
                    </div>
                    <div>
                        <ul class="QNA_list fs20">
                            <c:forEach items="${lawAndBbs.data.investorQA.records }" var="investorQA" begin="0" end="3">
                                <li class="bor-bott">
                                    <p>问：${investorQA.description }</p>
                                    <p class="ans">答：${investorQA.content }</p>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- 法规制度 -->
            <div class="layout cut_space">
                <div class="about_nav y_w92">
                    <ul class="about_nav_s1 fs24 bor-bott ivsr_list ivsr_notc rj_nav">
                        <li data-type="${lawAndBbs.data.publicCompanyManger.records[0].type }" data-maxPage="${lawAndBbs.data.publicCompanyManger.pages }" class="active">
                            <a href="javascript:void(0);">上市公司管理制度</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">证券法律法规</a>
                        </li>
                    </ul>
                    <ul class="file_list bor-bott rj_updataPage">
                        <c:forEach items="${lawAndBbs.data.publicCompanyManger.records }" var="publicCompanyManger">
                            <li class="bor-bott">
                                <a href="${publicCompanyManger.url }">
                                    <dl class="file_cell">
                                        <dd class="file_cell_left">
                                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                        </dd>
                                        <dd class="file_cell_center">
                                            <p class="fs30">${publicCompanyManger.title }</p>
                                            <span class="fs22">
                                                <jsp:setProperty name="dateValue" property="time" value="${publicCompanyManger.issueTime * 1000}"/>
                                                <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                                            </span>
                                        </dd>
                                        <dd class="file_cell_right">
                                            <span class="icf fs28">&#xe62f;</span>
                                        </dd>
                                    </dl>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="rj_more">
                        <a class="get_more fs20" href=" javascript:void(0);">
                            查看更多<span class="icf">&#xe608;</span>
                        </a>
                    </div>
                    <ul class="file_list bor-bott rj_securities">
                        <li class="bor-bott">
                            <a href="http://news.tcl.com/attached/pdf/investors_constitution.pdf">
                                <dl class="file_cell">
                                    <dd class="file_cell_left">
                                        <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                    </dd>
                                    <dd class="file_cell_center">
                                        <p class="fs30">中华人民共和国宪法</p>
                                    </dd>
                                    <dd class="file_cell_right">
                                        <span class="icf fs28">&#xe62f;</span>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                        <li class="bor-bott">
                            <a href="http://news.tcl.com/attached/pdf/investors_criminal_law.pdf">
                                <dl class="file_cell">
                                    <dd class="file_cell_left">
                                        <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                    </dd>
                                    <dd class="file_cell_center">
                                        <p class="fs30">中华人民共和国刑法修正案</p>
                                    </dd>
                                    <dd class="file_cell_right">
                                        <span class="icf fs28">&#xe62f;</span>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                        <li class="bor-bott">
                            <a href="http://news.tcl.com/attached/pdf/investors_stock_rules.pdf">
                                <dl class="file_cell">
                                    <dd class="file_cell_left">
                                        <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                    </dd>
                                    <dd class="file_cell_center">
                                        <p class="fs30">深圳证券交易所股票上市规则</p>
                                    </dd>
                                    <dd class="file_cell_right">
                                        <span class="icf fs28">&#xe62f;</span>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                        <li class="bor-bott">
                            <a href="http://news.tcl.com/attached/pdf/investors_company_law.pdf">
                                <dl class="file_cell">
                                    <dd class="file_cell_left">
                                        <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                    </dd>
                                    <dd class="file_cell_center">
                                        <p class="fs30">中华人民共和国公司法</p>
                                    </dd>
                                    <dd class="file_cell_right">
                                        <span class="icf fs28">&#xe62f;</span>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                        <li class="bor-bott">
                            <a href="http://news.tcl.com/attached/pdf/investors_securities_law.pdf">
                                <dl class="file_cell">
                                    <dd class="file_cell_left">
                                        <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                    </dd>
                                    <dd class="file_cell_center">
                                        <p class="fs30">中华人民共和国证券法</p>
                                    </dd>
                                    <dd class="file_cell_right">
                                        <span class="icf fs28">&#xe62f;</span>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="bor-bott"></div>

                <!-- common footer start -->
                <%@ include file="/WEB-INF/template/common/footer.jsp" %>
                <!-- common footer end -->

            </div>

        </body>
        <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mPaginator.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
        <script type="text/javascript">
            mobe.init();
            mobe.Investor({url: "${pageContext.request.contextPath }/investors/investorsList"});
        </script>
    </html>
