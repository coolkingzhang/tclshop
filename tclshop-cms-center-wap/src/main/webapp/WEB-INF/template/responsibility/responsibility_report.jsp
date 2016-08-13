<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
        <meta name="renderer" content="webkit"/>
        <title>社会责任报告</title>

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
            <!-- 企业社会责任报告 -->
            <div class="layout">
                <div class="y_w92">
                    <h3 class="hm_title bor-bott">企业社会责任报告</h3>
                    <ul class="file_list rj_updataPage" data-type="14" data-maxPage="${result.pages}">
                        <c:forEach items="${result.records}" var="duty">
                            <li class="bor-bott">
                                <a href="${duty.pic}">
                                    <dl class="file_cell">
                                        <dd class="file_cell_left">
                                            <img src="../static/common/imgs/xx01.jpg" alt=""/>
                                        </dd>
                                        <dd class="file_cell_center">
                                            <p class="fs30"><c:out value="${duty.title}"/></p>
                                            <span class="fs22">
                                                <jsp:setProperty name="dateValue" property="time" value="${duty.issueTime * 1000}"/>
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

                    <div class="rj_more bor-bott">
                        <a class="get_more fs20" href="javascript:void(0);">
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
    </script>
</html>
