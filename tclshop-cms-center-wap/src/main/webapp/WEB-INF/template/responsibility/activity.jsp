<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html>
<html lang="zh">

    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="format-detection" content="telephone=no"/>
        <meta name="renderer" content="webkit"/>
        <title>社会责任 - 企业公民行动</title>

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
            <!-- 企业公民行动 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <div class="rct_campus fs24 bor-bott">
                        <h3 class="hm_title">企业公民行动</h3>
                    </div>
                </div>
                <div class="pictext_list bor-bott rps_bility rj_updataPage" data-type="11" data-indexPage="1" data-maxPage="${activity.pages}">
                    <c:forEach items="${activity.records}" var="act">
                        <dl class="pictext_cell y_w92 bor-bott">
                            <dd class="pictext_cell_left">
                                <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}">
                                    <img src="${act.pic}" alt="" width="100%" height="100%"/>
                                </a>
                            </dd>
                            <dd class="pictext_cell_right fs28 color_333">
                                <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}">
                                    <p class="pictext_title"><c:out value="${act.title}"/></p>
                                </a>
                                <p class="abreast fs20 colorBBB">
                                    <jsp:setProperty name="dateValue" property="time" value="${act.issueTime * 1000}"/>
                                    <fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd"/>
                                </p>
                            </dd>
                        </dl>
                    </c:forEach>
                </div>

                <div class="rj_more bor-bott">
                    <a class="get_more fs22" href="javascript:void(0);">
                        查看更多<span class="icf">&#xe608;</span>
                    </a>
                </div>
            </div>

            <!-- 华萌基金 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <h3 class="hm_title bor-bott">华萌基金</h3>
                    <ul class="text_list bor-bott rj_updataPage" data-type="12" data-indexPage="1" data-maxPage="${fund.pages}">
                        <c:forEach items="${fund.records}" var="fun">
                            <li>
                                <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${fun.id}">
                                    <p class="abreast text_cell">
                                        <span class="text_title fs28"><c:out value="${fun.title}"/></span>
                                        <span class="abreast_text fs20">
                                            <jsp:setProperty name="dateValue" property="time" value="${fun.issueTime * 1000}"/>
                                            <fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd"/>
                                        </span>
                                    </p>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                    <div class="rj_more bor-bott">
                        <a class="get_more fs22" href="javascript:void(0);">
                            查看更多<span class="icf">&#xe608;</span>
                        </a>
                    </div>
                </div>
            </div>

            <!-- 志愿者风采 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <h3 class="hm_title abreast_text bor-bott">志愿者风采</h3>
                    <ul class="text_list bor-bott rj_updataPage" data-type="13" data-indexPage="1" data-maxPage="${volunteer.pages}">
                        <c:forEach items="${volunteer.records}" var="vol">
                            <li>
                                <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${vol.id}">
                                    <p class="abreast text_cell">
                                        <span class="text_title fs28"><c:out value="${vol.title}"/></span>
                                        <span class="abreast_text fs20">
                                            <jsp:setProperty name="dateValue" property="time" value="${vol.issueTime * 1000}"/>
                                            <fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd"/>
                                        </span>
                                    </p>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                    <div class="rj_more bor-bott">
                        <a class="get_more fs22" href="javascript:void(0);">
                            查看更多<span class="icf">&#xe608;</span>
                        </a>
                    </div>
                </div>
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
        mobe.responsibilityActivity({url: "${pageContext.request.contextPath }/societyDuty/loadListData"});
        mobe.rmlc();
    </script>

</html>
