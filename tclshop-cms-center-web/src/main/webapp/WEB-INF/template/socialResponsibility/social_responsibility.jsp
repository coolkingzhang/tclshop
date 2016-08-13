<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<!DOCTYPE html>
<html>
<head>
    <!--社会责任-->
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
    <title>TCL官方网站</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css">
    <!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>

</head>
<body>
<!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %>
<div class="mT74">
<div class="box relative" style="border:none;">
      
    <div class="absolute sosial-text">
        <p class="font">${pictureFont.records[0].title }</p>

        <p> ${pictureFont.records[0].shorttile }</p>

       
    </div>
    <div><img src="${pictureFont.records[0].webPic }"/></div>
</div>
<!-- channel html end -->
<!-- social responsibility html start -->
<!-- 企业公民活动 -->
<div class="sosial-box">
    <div class="title pr">企业公民活动<p class="border_botm pa"></p></div>
    <div class="sosial-list">
        <c:forEach items="${activity}" var="act">
            <dl>
                <dt class="fl">
                    <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}" target="_blank"><img class="media-pic" src="${act.pic}"/></a>
                </dt>
                <dd class="fr">
                    <div class="font">
                    <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}" target="_blank">
                     <c:out value="${act.title}"/>
                    </a>
                   
                    </div>
                    <p class="content"><c:out value="${act.description}"/></p>
                    <a class="more" href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}&type=${act.type}" target="_blank"> 了解更多>> </a>
                </dd>
            </dl>
        </c:forEach>
        <div class="see-more"><a href="${pageContext.request.contextPath}/societyDuty/socialActivityList" target="_blank">查看更多>></a></div>
    </div>
</div>

<!-- 华萌基金 -->
<div class="box marTop fund">
    <div class="sosial-box">
        <p class="hyjj_title"><a href="javascript:void(0);" class="hm-nav-js">华萌基金</a><a href="javascript:void(0);" class="hm-nav-js">志愿者风采</a></p>

        <div class="hyjj hmCont-js" id="zyz_1">
            <ul>
                <c:forEach items="${fund}" var="fun">
                    <li>
                    	<a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${fun.id}&type=${fun.type}" target="_blank"><c:out value="${fun.title}"/></a> 
                    	<i>
                            <jsp:setProperty name="dateValue" property="time" value="${fun.issueTime * 1000}"/>
                            <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                        </i>
                    </li>
                </c:forEach>
            </ul>
            <div class="seemore white"><a href="${pageContext.request.contextPath}/societyDuty/societyDutyFund" target="_blank">查看更多>></a></div>
        </div>
        <div class="hyjj hmCont-js" id="zyz_2" style="display:none;">
            <ul>
                <c:forEach items="${volunteer}" var="vol">
                    <li>
                    	<a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${vol.id}&type=${vol.type}" target="_blank"><c:out value="${vol.title}"/></a> 
                    	<i>
                            <jsp:setProperty name="dateValue" property="time" value="${vol.issueTime * 1000}"/>
                            <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                        </i>
                    </li>
                </c:forEach>
            </ul>
            <div class="seemore white"><a href="${pageContext.request.contextPath}/societyDuty/societyDutyVolunteers" target="_blank">查看更多>></a></div>
        </div>
    </div>
</div>

<!-- 企业公民活动 -->
<div class="box">
    <div class="sosial-box">
        <div class="title pr">企业社会责任报告 <p class="border_botm pa"></p></div>
        <div class="social-blame">
            <dl>
                <dt class="fr"><img src="${pageContext.request.contextPath}/static/img/sosialItem04.jpg"/></dt>
                <dd class="fl">
                    <p class="content">
                    	${duty.content}
                    </p>
                </dd>
            </dl>
            <a class="seemore" href="${pageContext.request.contextPath}/societyDuty/societyDutyReport?id=${duty.id}&type=${duty.type}" target="_blank"> 查看更多 >> </a>
        </div>
    </div>
</div>
<!-- tcl 公益基金 -->

<div class="fund-item">
    <div class="contaier">
        <h4 class="fund-title">TCL公益基金</h4>

        <p>2012年6月，由TCL集团董事长兼CEO李东生发起的深圳市TCL公益基金会正式注册成立，这是中国消费电子行业第一家公益基金会。<br/>
            基金会原始基金为1000万元，由TCL集团一次性捐赠。“追求公共利益，推动社会进步”是TCL公益基金会的价值观，并秉持“为弱<br/>
            势群体创造教育和成长机会，谋求社区福祉及环境可持续发展”的宗旨，并在基础教育帮扶、重大灾害救助、特殊群体关怀三大公益<br/>
            领域积极探索。</p>

        <div class="see-more"><a href="http://gyjj.tcl.com/" target="_blank">查看更多>></a></div>
    </div>
</div>


<!-- TCL希望工程烛光奖 -->
<div class="box" style="margin-bottom:0">
    <div class="sosial-box marTop">
        <div class="award">
            <div class="font pr">TCL希望工程烛光奖 <p class="border_botm01 pa"></p></div>
            <div class="content">
                “TCL希望工程烛光奖”由深圳市TCL公益基金会和中国青少年发展基金会联合发起，项目计划五年投入2500万元，用于表彰和鼓励坚守在一线爱岗敬业严守师道的优秀乡村教师,从而改善
                乡村基础教育师资力量匮乏的现状。<br/><br/>
                2013年10月，TCL希望工程烛光奖项目正式启动，面向全国600多个国家级贫困县，经过历时半年的初审、复核和终审，2014年5月，“TCL希望工程烛光奖”颁奖典礼在北京举行，全国
                300位优秀乡村教师受到表彰，每位教师获得1.2万元的奖金和为期三个月的远程培训。<br/><br/>
                未来，TCL公益基金会还将寻求更广泛的合作，带动更多的爱心企业、个人和公益组织一起携手，围绕乡村教师，提供全方位的支持。同时，借助新媒体等新兴技术手段，聚合社会大众力
                量，引发社会公众对乡村教师持续性的关注与支持，不断改善乡村教师生存现状，为促进中国农村基础教育事业的发展贡献力量。
            </div>
            <div class="see-more"><a href="http://gyjj.tcl.com/frmsubject.aspx" target="_blank">查看更多>></a></div>
        </div>

    </div>
</div>
</div>
<!-- 引入公共尾部-->
<%@ include file="/WEB-INF/template/common/footer.jsp" %>


<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
<script id="currentPage"  src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main"></script>
</body>
</html>