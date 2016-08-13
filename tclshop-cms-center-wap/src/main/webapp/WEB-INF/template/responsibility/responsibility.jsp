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
        <title>社会责任</title>

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

            <header class="rct_banner" style="background: url(${pictureFont[0].webPic}) no-repeat; background-size: cover;">
                <p class="rct_banner_text fs34">
                    <a href="${pictureFont[0].webPic}">企业社会责任</a>
                </p>
            </header>

            <!-- 企业公民行动 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <a href="${pageContext.request.contextPath}/societyDuty/socialActivityList">
                            <h3 class="hm_title">企业公民行动</h3>
                            <span class="abreast_text emo1">更多
                                <span class="icf">&#xe62f;</span>
                            </span>
                        </a>
                    </div>
                </div>
                <div class="pictext_list bor-bott rps_bility">
                    <c:forEach items="${activity}" var="act">
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
                                <p class="abreast fs20">
                                    <jsp:setProperty name="dateValue" property="time" value="${act.issueTime * 1000}"/>
                                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                                </p>
                            </dd>
                        </dl>
                    </c:forEach>
                </div>
            </div>

            <!-- 企业社会责任报告 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <a href="${pageContext.request.contextPath}/societyDuty/socialDutyList">
                            <h3 class="hm_title">企业社会责任报告</h3>
                            <span class="abreast_text emo1">更多
                                <span class="icf">&#xe62f;</span>
                            </span>
                        </a>
                    </div>
                    <ul class="file_list">
                        <c:forEach items="${duty}" var="du">
                            <li class="bor-bott">
                                <a href="${du.pic}">
                                    <dl class="file_cell">
                                        <dd class="file_cell_left">
                                            <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                        </dd>
                                        <dd class="file_cell_center">
                                            <p class="fs30"><c:out value="${du.title}"/></p>
                                            <span class="fs22">
                                                <jsp:setProperty name="dateValue" property="time" value="${du.issueTime * 1000}"/>
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
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- TCL公益基金会 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <a href="http://gyjj.tcl.com/">
                            <h3 class="hm_title">TCL公益基金会</h3>
                            <span class="abreast_text emo1">更多
                                <span class="icf">&#xe62f;</span>
                            </span>
                        </a>
                    </div>
                    <section class="pictext_news">
                        <ul class="img_list">
                            <li>
                                <img src="${pageContext.request.contextPath }/static/common/imgs/banner01.jpg" alt=""/>
                            </li>
                        </ul>
                        <p class="fs22">
                            2012年6月，由TCL集团董事长兼CEO李东生发起的深圳市TCL公益基金会正式注册成绩，这是中国消费电子行业第一家公益基金会。基金会原始基金委1000万元，由TCL集团一次性捐赠。
                            <a class="pictext_news_detaile" href="http://gyjj.tcl.com/">查看全部>></a>
                        </p>
                    </section>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- TCL希望工程烛光奖 -->
            <div class="layout cut_space">
                <div class="y_w92">
                    <div class="rct_campus abreast fs24 bor-bott">
                        <a href="http://gyjj.tcl.com/frmsubject.aspx">
                            <h3 class="hm_title">TCL希望工程烛光奖</h3>
                            <span class="abreast_text emo1">更多
                                <span class="icf">&#xe62f;</span>
                            </span>
                        </a>
                    </div>
                    <section class="pictext_news">
                        <!-- 最大字符数为95 -->
                        <p class="fs22">“TCL希望工程烛光奖”由深圳市TCL公益基金会和中国青少年发展基金会联合发起，项目计划五年投入2500万元，用于表彰和鼓励在一线爱岗敬业严守师道的优秀乡村教师，从而改善乡村基础教育师资...<a class="pictext_news_detaile" href="http://gyjj.tcl.com/frmsubject.aspx">查看全部>></a>
                        </p>
                        <ul class="img_list">
                            <li class="b50">
                                <img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/>
                                <img src="${pageContext.request.contextPath }/static/common/imgs/xx02.jpg" alt=""/>
                            </li>
                        </ul>
                    </section>
                </div>
                <div class="bor-bott"></div>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>
    </body>
</html>
