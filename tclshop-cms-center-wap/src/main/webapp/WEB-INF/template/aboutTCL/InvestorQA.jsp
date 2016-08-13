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
        <title>投资者关系问答</title>

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
            <!-- 互动问答 -->
            <div class="layout  cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <span class="abreast_text color_333">互动精华问答</span>
                    </div>
                    <div>
                        <ul class="QNA_list fs20 rj_updataPage">
                            <c:forEach items="${InvestorQAList }" var="InvestorQA">
                                <li class="bor-bott">
                                    <p>问：${InvestorQA.description }</p>
                                    <p class="ans">答：${InvestorQA.content }</p>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    
                    <div class="rj_more">
                        <a class="get_more fs20" href=" javascript:void(0);">
                            查看更多<span class="icf">&#xe608;</span>
                        </a>
                    </div>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>
    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mPaginator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
    <script>
        //加载定义后立即调用
        (function () {
            mobe.init();
            mobe.InvestorQA({url: "${pageContext.request.contextPath }/investors/viewAjaxInvestorQA", maxPage: "${pagesSum}"});
        })();
    </script>
</html>
