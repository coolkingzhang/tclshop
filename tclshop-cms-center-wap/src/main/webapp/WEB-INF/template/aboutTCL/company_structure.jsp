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
        <title>公司架构</title>

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
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoArch">公司架构</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoRDev">技术研发</a>
                        </li>
                    </ul>
                </nav>
            </header>
            <div class="y_w92 bor-bott"></div>
            <!-- 员工生活 -->
            <div class="layout">
                <article>
                    <div class="dtc_content fs24">
                        <div class="dtc_content20">
                            <h4>产业业务领域（7）</h4>
                            <ul class="dtc_unorder">
                                <li>TCL多媒体（1070HK）</li>
                                <li>TCL通讯科技（2016HK）</li>
                                <li>华星光电</li>
                                <li>家电产业集团</li>
                                <li>通力电子（1249HK）</li>
                                <li>商用系统业务群</li>
                                <li>部品及材料业务群</li>
                            </ul>
                            <p class="block_segment"></p>
                            <h4>服务业务领域（3）</h4>
                            <span class="dtc_span">互联网应用及服务业务群</span>
                            <ul class="dtc_unorder">
                                <li>TCL教育网</li>
                                <li>全球播</li>
                                <li>智能家庭</li>
                                <li>欢网科技TCL-IMAX</li>
                                <li>文化传媒</li>
                                <li>云服务平台</li>
                                <li>互联网平台</li>
                                <li>移动互联网平台</li>
                            </ul>
                            <p class="block_segment"></p>
                            <span class="dtc_span">销售及物流服务业务群</span>
                            <ul class="dtc_unorder">
                                <li>翰林汇</li>
                                <li>O2O</li>
                            </ul>
                            <p class="block_segment"></p>
                            <span class="dtc_span">金融事业本部</span>
                            <ul class="dtc_unorder">
                                <li>TCL财务公司</li>
                                <li>TCL智融科技</li>
                                <li>启航供应链管理</li>
                                <li>汇银通支付科技</li>
                            </ul>
                            <p class="block_segment"></p>
                            <h4>创投与投资业务（1）</h4>
                            <ul class="dtc_unorder">
                                <li>创投及投资业务群</li>
                            </ul>
                        </div>
                    </div>
                </article>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>

    </body>

</html>
