<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--TCL公司架构-->
	<meta charset="UTF-8">
	<title>公司架构</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit">
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
</head>
<body>
	<!-- 引入公共头部-->
	<%@ include file="/WEB-INF/template/common/header.jsp" %>
     <div class="mT74">
	<div class="about_TCL_top">
		<div class="about_TCL_nav">
			<ul>
				<li><a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a></li>
				<li><a href="${pageContext.request.contextPath }/companyInfo/companyInfoArch" class="hover">公司架构</a></li>
				<li><a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev" >技术研发</a></li>
			</ul>
		</div>
		<div class="li_kouhao">
			<p>加速推进<span>“智能＋互联网”</span></p>
			<p>建立<span>“产品和服务”</span>新商业模式</p>
		</div>		
	</div>
	<div class="li_jiagou_z">
			<ul>
				<li>
				<a href="#1">
					<div class="con">
						<div class="one"><p>7</p></div>
						<div class="line"></div>
						<div class="two"><p>产品业务领域</p></div>
					</div>
				</a>
				</li>
				<li>
				<a href="#2">
					<div class="con">
						<div class="one"><p>3</p></div>
						<div class="line"></div>
						<div class="two"><p>服务业务领域</p></div>
					</div>
				</a>
				</li>
				<li class="con none">
				<a href="#3">
					<div class="con">
						<div class="one"><p>1</p></div>
						<div class="line"></div>
						<div class="two"><p>创投投资业务</p></div>
					</div>
				</a>
				</li>
			</ul>
		</div>
	<div class="li_jiagou_1">
		<div class="title">产品业务领域</div>
		<div class="line"></div>
		<ul>
			<li>
				<div class="li_pos_b">
					<img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu1.jpg" alt="架构图片">
					<div class="li_pos"><p>TCL多媒体电子（1070HK）</p></div>
				</div>
			</li>
			<li>
				<div class="li_pos_b">
					<img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu2.jpg" alt="架构图片">
					<div class="li_pos"><p>TCL通讯科技（2618HK）</p></div>
				</div>
			</li>
			<li>
				<div class="li_pos_b">
					<a href="" target="_blank"><img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu3.jpg" alt="架构图片"></a>
					<div class="li_pos"><p>华星光电</p></div>
				</div>
			</li>
			<li class="no-right">
				<div class="li_pos_b ">
					<img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu4.jpg" alt="架构图片">
					<div class="li_pos"><p>家电产业集团</p></div>
				</div>
			</li>
			<li class="ma156 mt14">
				<div class="li_pos_b">
					<img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu5.jpg" alt="架构图片">
					<div class="li_pos"><p>通力电子（1249HK）</p></div>
				</div>
			</li>
			<li class="mt14">
				<div class="li_pos_b">
					<img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu6.jpg" alt="架构图片">
					<div class="li_pos"><p>商用系统业务群</p></div>
				</div>
			</li>
			<li class="mt14">
				<div class="li_pos_b">
					<img  src="${pageContext.request.contextPath }/static/img/li_jiagou_tu7.jpg" alt="架构图片">
					<div class="li_pos"><p>部品及材料业务群</p></div>
				</div>
			</li>
		</ul>
	</div>
	<div class="li_jiagou_2">
		<div class="li_jiagou_2_top">
			<div class="title">服务业务领域</div>
			<div class="line"></div>
		</div>
		<ul class="li_jiagou_2_tab">
			<li>
			<a href="Javascript: void(0)" class="hover active">
				<img src="${pageContext.request.contextPath }/static/img/li_jiagou_ren.png" alt="业务群图标">
			</a>
			<P>销售物流服务业务群</P>
			</li>
			<li>
			<a href="Javascript: void(0)">
				<img src="${pageContext.request.contextPath }/static/img/li_jiagou_yun.png" alt="业务群图标">
			</a>
			<P>互联网应用服务业务群</P>
			</li>
			<li class="none">
			<a href="Javascript: void(0)">
				<img src="${pageContext.request.contextPath }/static/img/li_jiagou_wen.png" alt="业务群图标">
			</a>
			<P>金融事业本部</P>
			</li>
		</ul>
		<div class="li_jiagou_2_box">
			<div class="li_jiagou_2_con active">
				<div>
					<div class="jiantou1">
						<img src="${pageContext.request.contextPath }/static/img/li_jiagou_sanjiao.png" alt="业务群图标">
					</div>
					<ul>
						<li>tcl教育网</li>
						<li>欢网科技</li>
						<li>云服务平台</li>
						<li>全球网</li>
						<li>TCL-IMAX</li>
						<li>互联网平台</li>
						<li>智能家庭</li>
						<li>文化传媒</li>
						<li>移动互联网平台</li>
					</ul>
				</div>
			</div>
			<div class="li_jiagou_2_con">
				<div>
					<div class="jiantou1">
						<img src="${pageContext.request.contextPath }/static/img/li_jiagou_sanjiao.png" alt="业务群图标">
					</div>
					<ul>
						<li>翰林汇</li>
						<li>O2O</li>
					</ul>
				</div>
			</div>
			<div class="li_jiagou_2_con">
				<div>
					<div class="jiantou1">
						<img src="${pageContext.request.contextPath }/static/img/li_jiagou_sanjiao.png" alt="业务群图标">
					</div>
					<ul>
						<li>TCL财务公司</li>
						<li>TCL智融科技</li>
						<li>启航供应链管理</li>
						<li>汇银通支付科技</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="li_jiagou_3">
		<div class="li_jiagou_3_top">
			<div class="title">创投投资业务</div>
			<div class="line"></div>
		</div>
		<p>TCL集团希望新的业务，能够加速推进“智能+互联网”转型战略<br>
和建立“产品+服务”新商业模式，更有效地建设和展示不同业务板块的价值，发挥产业协同效应。</p>
		
	</div>
    </div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>	
	
	 <input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="co_architecture" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>