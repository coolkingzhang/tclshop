<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                    <ul class="about_nav_s1 y_w92 fs24">
                        <li class="liw192">
                            <a href="${pageContext.request.contextPath}/companyInfo/index">公司介绍</a>
                        </li>
                        <li class="active liw192">
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoArch">公司架构</a>
                        </li>
                        <li class="liw192">
                            <a href="${pageContext.request.contextPath}/companyInfo/companyInfoRDev">技术研发</a>
                        </li>
                    </ul>
                </nav>
            </header>
            <div class="y_w92 bor-bott"></div>
            <!-- 公司架构 -->
            <div class="layout">
                <article>
                    <div class="fs24 cut_space bor-bott">
                        <header class="rct_banner">
                            <p class="rct_banner_text fs34" style="background: url(${pageContext.request.contextPath }/static/common/images/公司架构-服务业业务领域.png) no-repeat; background-size: cover;">
                                产业业务领域
                            </p>
                        </header>
                        <div class="dtc_content20 pdt10 pdb20">
                            <ul class="dtc_unorder reddot">
                                <li>
                                    <p>TCL多媒体（1070HK）</p>
                                </li>
                                <li>
                                    <p>TCL通讯科技（2016HK）</p>
                                </li>
                                <li>
                                    <p>华星光电</p>
                                </li>
                                <li>
                                    <p>家电产业集团</p>
                                </li>
                                <li>
                                    <p>通力电子（1249HK）</p>
                                </li>
                                <li>
                                    <p>商用系统业务群</p>
                                </li>
                                <li>
                                    <p>部品及材料业务群</p>
                                </li>
                            </ul>
                        </div>
                        <div class="bor-bott"></div>
                    </div>

                    <div class="fs24 cut_space bor-bott">
                        <header class="rct_banner">
                            <p class="rct_banner_text fs34" style="background: url(${pageContext.request.contextPath }/static/common/images/公司架构-服务业务领域.png) no-repeat; background-size: cover;">
                                服务业务领域
                            </p>
                        </header>
                        <div class="dtc_content20 pdb20">
                            <h4 class="pdt20 pd20">互联网应用及服务业务</h4>
                            <ul class="list_item">
                                <li>TCL教育网</li>
                                <li>全球播</li>
                                <li>智能家庭</li>
                                <li>欢网科技</li>
                                <li>
                                    TCL-IMAX</li>
                                <li>文化传媒</li>
                                <li>云服务平台</li>
                                <li>互联网平台</li>
                                <li>移动互联网</li>
                            </ul>
                            <h4 class="pdt20 pd20">销售及物流服务业务群</h4>
                            <ul class="list_item item50">
                                <li>翰林汇</li>
                                <li>O2O</li>
                            </ul>
                            <p class="block_segment"></p>
                            <h4 class="pdt20 pd20">金融事业本部</h4>
                            <ul class="list_item item50">
                                <li>TCL财务公司</li>
                                <li>TCL智融科技</li>
                                <li>启航供应链管理</li>
                                <li>汇银通支付科技</li>
                            </ul>
                        </div>
                        <div class="bor-bott"></div>
                    </div>

                    <div class="fs24 cut_space">
                        <header class="rct_banner">
                            <p class="rct_banner_text fs34" style="background: url(${pageContext.request.contextPath }/static/common/images/公司架构-创投与投资业务.png) no-repeat; background-size: cover;">
                                创投与投资业务
                            </p>
                        </header>
                        <div class="dtc_content20 pdb20">
                            <h4 class="pdt20 pd20">创投与投资业务</h4>
                            <p class="block_segment">TCL集团希望心动 业务，能够加速推进“智能+服务”新商业模式，更有效的建设和展示不同的业务板块的价值，发挥产业协同效应。</p>
                        </div>
                        <div class="bor-bott"></div>
                    </div>
                </article>
            </div>

            <!-- common footer start -->
            <%@ include file="/WEB-INF/template/common/footer.jsp" %>
            <!-- common footer end -->

        </div>

    </body>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/common/js/mobile.js"></script>
    <script type="text/javascript">
        mobe.rmlc();
    </script>

</html>
