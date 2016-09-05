<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--关于TCL-->
	<meta charset="UTF-8">
	<title>关于TCL-TCL官网</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
    
</head>
<body>
	<!-- 引入公共头部-->
	<%@ include file="/WEB-INF/template/common/header.jsp" %>
	<div class="mT74">
	<div class="about_TCL_top2" style="background-image:url(${pictureFont.records[0].webPic })">
		<div class="about_TCL_nav2">
			<ul>
				<li><a href="${pageContext.request.contextPath }/companyInfo/index" class="hover" target="_blank">关于TCL</a></li>
				<li><a href="${pageContext.request.contextPath }/companyInfo/companyInfoArch" target="_blank">公司架构</a></li>
				<li><a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev" target="_blank">技术研发</a></li>
			</ul>
		</div>
		<div class="li_kouhao2">
		   <%--  ${pictureFont.records[0].webPic }
		    ${pictureFont.records[0].shorttile }
		    ${pictureFont.records[0].webUrl }
		    ${pictureFont.records[0].buttonName }
		    ${pictureFont.records[0].buttonUrl } --%>
			<p class="f32"><span>${pictureFont.records[0].title }</span></p>
			<!-- <p class="f32 pt20"><span>创意感动生活</span></p> -->
			<!-- <p class="f20 pt20">TCL集团股票代码 000100.SZ</p> -->
			<p class="f20 pt20">${pictureFont.records[0].shorttile }</p> 
			<!-- <p class="f20">000100.SZ</p> -->
		</div>
	</div>
	<div class="li_guanyu_1_b">
				<div class="li_guanyu_1">
						<div class="title">关于TCL</div>
						<div class="line"></div>
						<p class="li_jieshao f14">TCL即 the creative life 三个英文单词首字母的缩写，意为创意感动生活。<br>
				公司创立于1981年，前身为中国首批13家合资企业之一——TTK家庭电器（惠州）有限公司，从事录音磁带的生产制造，后来拓展到电话、电视、
				手机、冰箱、洗衣机、空调、小家电、液晶面板等领域。集团现有7.5万名员工，23个研发机构，21个制造基地，在80多个国家和地区设有销售机
				构，业务遍及全球160多个国家和地区。</p>
						<p class="f14 f_center pt20"><a href="${pageContext.request.contextPath }/companyInfo/slipPath?type=1" target="_blank">查看更多&gt;</a></p>
	  </div>
                <div class="li_guanyu_zhici">  
							<div class="zhichi_left" style="background-image:url(${speech[0].pic })"></div>
							<div class="li_zhici">
								<div class="li_zhici_top">
									<div class="title">董事长致辞</div>
									<div class="line"></div>
								</div>
								
								<div class="li_zhici_content">${speech[0].content}</div>
								<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${speech[0].id}" target="_blank" class="f14 zc_seemore">查看更多 >></a>
							</div>
	  </div>
						<div class="li_about_f">
							<div class="title">发展历程</div>
							<div class="line"></div>
							<ul class="wrap">
								<li class="first"></li>
								<li class="left">
									<div class="chat">
										<p>TCL创立于1981年，经过三十多年的发展，TCL借中国改革开放的东风， 秉承敬业奉献、锐意创新的企业精神，从无到有，从小到大，迅速发展成 为中国电子信息产业中的佼佼者。</p>
									</div>
								    <div class="dot f20">
								    	■
								    </div>
								    <div class="year">1981</div>
								</li>
								<li class="right">
									<div class="chat"><p>TCL集团发布公告，2012年度LCD电视销量1578.10万台，跻身全球彩电三强，这也是中国彩电企业首次冲入全球液晶彩电第一阵营。</p></div>
								    <div class="dot f32">■</div>
								    <div class="year">2012</div>
								</li>
								<li class="left">
									<div class="chat"><p>近期，TCL将原有的“5+5”产业结构正式调整为新的“7+3+1”结构， 即产品业务领域，服务业务领域以及创投及投资业务三大业务领域， “7+3+1”十一个业务板块。</p></div>
								    <div class="dot f38">■</div>
								    <div class="year">2015</div>
								</li>
							</ul>
							<p class="f_center pt30">
<a href="${pageContext.request.contextPath }/companyInfo/developList" target="_blank">查看更多 >></a>
                            </p>
						</div>
	</div>

	<div class="li_about_q">
		<div class="li_about_q_top">
			<div class="title">企业理念</div>
			<div class="line"></div>
		</div>
		<ul class="li_about_q_tab">
			<li>
				<a class="hover">
					<%-- <img src="${pageContext.request.contextPath }/static/img/li_jiagou_ren.png" alt="业务群图标"> --%>
					<span></span>
				</a>
				<P class="a">企业愿景</P>
				<p class="b">为用户提供极<br>致体验的产品与服务</p>
			</li>
			<li>
				<a class="hover">
					<%-- <img src="${pageContext.request.contextPath }/static/img/li_guanyu_f1.png" alt="业务群图标"> --%>
					<span></span>
				</a>
				<P class="a">企业使命</P>
				<p class="b">为用户创造价值、 为员工创造机会<br>为股东创造效益、为社会承担责任</p>
			</li>
			<li>
				<a class="hover">
					<%-- <img src="${pageContext.request.contextPath }/static/img/li_jiagou_ren.png" alt="业务群图标"> --%>
					<span></span>
				</a>
				<P class="a">企业精神</P>
				<p class="b">敬业，诚信，团队，创新</p>
			</li>
			
			<li>
				<a class="hover">
					<%-- <img src="${pageContext.request.contextPath }/static/img/li_guanyu_f2.png" alt="业务群图标"> --%>
					<span></span>
				</a>
				<P class="a">企业价值观</P>
				<p class="b">用户至上，开放创新，<br>合作分享，诚信尽责。</p>
			</li>
			<li class="none">
				<a class="hover">
					<%-- <img src="${pageContext.request.contextPath }/static/img/li_guanyu_f3.png" alt="业务群图标"> --%>
					<span></span>
				</a>
				<P class="a">经营策略</P>
				<p class="b">提升技术能力、工业能力、<br>全球化能力、强化互联网应用服务能力</p>
			</li>
		</ul>
	</div>

    <div class="li_about_f">
		<div class="title">企业荣誉</div>
			<div class="line"></div>
			<ul class="wrap_2">
				<li>
					<div>
						<img src="${honor[0].pic }" alt="企业荣誉">
					</div>
					<p class="t">${honor[0].years}年</p>
						${honor[0].content }
				</li>
				<li>
					<div>
						<img src="${honor[1].pic }" alt="企业荣誉">
					</div>
				<p class="t">${honor[1].years}年</p>
					${honor[1].content }
				</li>
				<li class="none">
					<div>
						<img src="${honor[2].pic }" alt="企业荣誉">
					</div>
				<p class="t">${honor[2].years}年</p>
					${honor[2].content }
				</li>
			</ul>
			<p class="f_center pt30">
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoPagingList?type=${honor[0].type}" target="_blank" class=" f14">查看更多 >></a>
			</p>
	</div>
	
	<div class="li_guanli">
	    <div class="title">管理团队</div>
		<div class="line"></div>
		<ul class="li_guanli1">
			<li class="hover" style="background: url(${manageTeam[0].pic }) center top no-repeat #fff;">
			<div class="guanli_des" id="tfn_1">
			<p class="other"><span>董事长兼CEO 李东生</span>
			${manageTeam[0].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[0].id}" target="_blank">了解更多</a></div>
		    </li>
		    <li style="background: url(${manageTeam[1].pic }) center top no-repeat #fff;">
           <div class="guanli_des" id="tfn_2" >
			<p><span>${manageTeam[1].name }</span>
             ${manageTeam[1].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[1].id}" target="_blank">了解更多</a></div>
			</li>
			<li class="none" style="background: url(${manageTeam[2].pic }) center top no-repeat #fff;">
			<div class="guanli_des" id="tfn_3">
			<p><span>${manageTeam[2].name }</span>
			${manageTeam[2].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[2].id}" target="_blank">了解更多</a></div>
            </li>
			<li style="background: url(${manageTeam[3].pic }) center top no-repeat #fff;">
           <div class="guanli_des" id="tfn_4">
			<p><span>${manageTeam[3].name }</span>
                                 ${manageTeam[3].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[3].id}" target="_blank">了解更多</a></div>
			</li>
			<li style="background: url(${manageTeam[4].pic }) center top no-repeat #fff;">
           <div class="guanli_des" id="tfn_5">
			<p><span>${manageTeam[4].name }</span>
                                ${manageTeam[4].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[4].id}" target="_blank">了解更多</a></div>
			</li>
			<li style="background: url(${manageTeam[5].pic }) center top no-repeat #fff;">
           <div class="guanli_des" id="tfn_6">
			<p><span>${manageTeam[5].name }</span>
                              ${manageTeam[5].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[5].id}" target="_blank">了解更多</a></div>
			</li>
			<li class="none" style="background: url(${manageTeam[6].pic }) center top no-repeat #fff;">
			<div class="guanli_des" id="tfn_7">
			<p><span>${manageTeam[6].name }</span>
			${manageTeam[6].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[6].id}" target="_blank">了解更多</a></div>
            </li>
            <li style="background: url(${manageTeam[7].pic }) center top no-repeat #fff;">
			<div class="guanli_des" id="tfn_8">
			<p><span>${manageTeam[7].name }</span>
			${manageTeam[7].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[7].id}" target="_blank">了解更多</a></div>
            </li>
            <li style="background: url(${manageTeam[8].pic }) center top no-repeat #fff;">
			<div class="guanli_des" id="tfn_9">
			<p><span>${manageTeam[8].name }</span>
			${manageTeam[8].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[8].id}" target="_blank">了解更多</a></div>
            </li>
            <li style="background: url(${manageTeam[9].pic }) center top no-repeat #fff;">
			<div class="guanli_des" id="tfn_10">
			<p><span>${manageTeam[9].name }</span>
			${manageTeam[9].description }</p>
			<a href="${pageContext.request.contextPath }/companyInfo/companyInfoDetails?id=${manageTeam[9].id}" target="_blank">了解更多</a></div>
            </li>
		</ul>

	</div>
	</div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>
	
	 <input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	
	<script id="currentPage" data-targetpage="about_tcl" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>