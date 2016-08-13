<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
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
                            <a href="${pageContext.request.contextPath }/companyInfo/index">公司介绍</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/companyInfo/companyInfoArch">公司架构</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a>
                        </li>
                    </ul>
                    <div class="swiper-container">
                        <ul class="about_nav_s2 fs22">
                            <li class="">
                                <a href="">研发创新体系</a>
                            </li>
                            <li class="">
                                <a href="">科技创新体系</a>
                            </li>
                            <li class="">
                                <a href="">孵化中心</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <div class="y_w92 bor-bott"></div>
            <!-- 员工生活 -->
            <div class="layout">
                <article>
                    <div class="dtc_content fs24">
                        <ul class="img_list">
                            <li>
                                <a href="javascript:void(0);">
                                    <img src="../static/common/imgs/banner01.jpg" alt=""></a>
                                </li>
                            </ul>
                            <h4 class="block_segment fs28">2015</h4>

                            <h4 class="block_segment fs28">2014</h4>
                            <div class="about_content">
                                <p>这是一个充满机遇和挑战的时代，风起云涌的智能化及互联网大潮带来广阔的商业前景，我们的产品形态、商业模式、经营理念、组织架构等都将经历转型的重大考验，也终将被重新定义。</p>
                                <p>这是一个必须变革和重构的时代，经营环境正在快速改变，商业模式加速革新，如果不能加快企业转型，发现和抓住新的产业和市场机会，构建起新的能力，未来将会危机四伏。</p>
                                <p>如果把近几年TCL的国际化探索看作是被动适应国际化带来的冲击和挑战，那么，从现在开始，我们就已经进入到一个主动谋划国际化未来发展目标和任务的新阶段。我们将站在新的历史起点上，力争将TCL建成一个富有竞争力的国际化企业！</p>
                                <p>在未来两到三年TCL发展的总体战略思路中，我们要固本强基、持续创新，实现新跨越。"固本强基"， 就是要巩固基础管理之根本，强化核心能力之根基；"持续创新"，就是要以技术、流程和文化的变革突破，将企业的经营管理水平提升到国际化要求的新高度。</p>
                                <p>TCL怀揣“实业报国”的坚定理想，在过往三十余年的发展历程中，通过坚持不懈的国际化探索、持续创新的变革突破和百折不挠的奋勇拼搏，收获了丰硕的成果。当下，成长在互联网时代，我们需要探寻企业发展的新路径，而真正的“颠覆”就是思维的转变，从过去以经营产品为中心转向以经营用户为中心。</p>
                                <p>“双+”转型战略的践行将是TCL未来工作的重心，我们要勇于打破原有的商业体系，按照互联网思维进行经营观念重构、业务重构和组织重构，推进“智能+互联网“战略转型，建立”产品+服务“商业模式。</p>
                                <p>我们相信，具备变革创新和企业家精神的TCL人，一定能够完成这次自我超越，通过颠覆式的创新，为企业注入源源不断的生命力。未来，我们会以用户为中心，构建面向未来的经营体系，实现战略转型，为用户提供极致体验的产品与服务，让生活更精彩！</p>
                            </div>
                        </div>

                        <div class="rj_more">
                            <a class="get_more fs20" href=" javascript:void(0);">
                                查看更多<span class="icf">&#xe608;</span>
                            </a>
                        </div>
                    </article>
                </div>

                <!-- common footer start -->
                <%@ include file="/WEB-INF/template/common/footer.jsp" %>
                <!-- common footer end -->

            </div>

        </body>

    </html>
