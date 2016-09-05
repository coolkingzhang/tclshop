<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <!--投资者关系页面-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
<title>投资者关系-TCL官网</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css">
<!-- 引入公共静态文件-->
<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>
    <jsp:useBean id="dateValue" class="java.util.Date"/>
</head>

<body>

<!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %>
<div class="mT74">
<div class="invest invest-back01" style="background-image:url(${pictureFont.records[0].webPic });"> 

  <div class="inv_relations contaier">
    <h1>${pictureFont.records[0].title }</h1>
    <h2>${pictureFont.records[0].shorttile }</h2>
    <a href="http://irm.p5w.net/ssgs/S000100/" target="_blank" class="see_more">查看更多</a>
  </div>
</div>
<div class="invest invest-padd">
  <h3 class="contaier pr">分析及报告
    <p class="border_botm"></p>
  </h3>
  <div class="sosial-box">   
     <p class="fxbg_title"> 
     <a class="hover tabNavBar-js">定期经营报告分析</a><a class='tabNavBar-js'>上市公司公告</a><a class='tabNavBar-js'>投资机构研究报告</a></p>
    <div class="fxbg tabContent-js" id="zyz_1">
      <ul>
         <c:forEach items="${indexData.one }" var="records1" begin="0" end="5">
  		 	<li>${records1.title }<a href="${records1.url }" target="_blank"><i>PDF下载</i></a></li>
  		</c:forEach> 
  		
      </ul>
      <div class="seemore03"><a href="${pageContext.request.contextPath }/investors/investorsList?type=${indexData.one[0].type}" target="_blank">查看更多>></a></div>
    </div>
    <div class="fxbg tabContent-js" id="zyz_2" style="display:none">
      <ul>
     	<c:forEach items="${indexData.two }" var="records2">
     		<li>${records2.title }<a href="${records2.url }" target="_blank"> <i>PDF下载</i></a></li>
     	</c:forEach>
      </ul>
      <div class="seemore03"><a href="${pageContext.request.contextPath }/investors/investorsList?type=${indexData.two[0].type}" target="_blank">查看更多>></a></div>
    </div>
    <div class="fxbg tabContent-js" id="zyz_3" style="display:none">
      <ul>
     	<c:forEach items="${indexData.three }" var="records3">
     		<li>${records3.title }<a href="${records3.url }" target="_blank"><i>PDF下载</i></a></li>
     	</c:forEach>
      </ul>
      <div class="seemore03"><a href="${pageContext.request.contextPath }/investors/investorsList?type=${indexData.three[0].type}" target="_blank">查看更多>></a></div>
    </div>
  </div>
</div>
<div class="sub_company_box">
  <h3 class="sub_company contaier pr">旗下上市公司
    <p class="border_botm width60"></p>
  </h3>
  <div class="invest-main invest-mar pr">
    <a href="http://multimedia.tcl.com/cn/investor/main.do?method=listing&mappingName=IR_Financial" target="_blank"> 
    <div class="ticker_a"><div class="ticker_b pa"></div><p class="ticker_c pa"><span class="exc_rate1">TCL多媒体</span><span class="exc_rate2">01070.HK</span></p></div>
    <p class="invest-p">公司创立于1981年，前身为中国首批13家合资企业之一——TTK家庭电器（惠州）有限公司，从事录音磁带的生产制造，后来拓展到电话、电视、手机、冰箱、洗衣机、空调、
      小家电、液晶面板等领域。集团现有7.5万名员工，23个研发机构，21个制造基地，在80多个国家和地区设有销售机构，业务遍及全球 160多个国家和地区。</p>
    </a>
  </div>
  <div class="invest-main invest-mar pr">
    <a href="http://www.tclcom.com/?page=financials" target="_blank"> 
    <div class="ticker_a01"><div class="ticker_b01 pa"></div><p class="ticker_c01 pa"><span class="exc_rate1">TCL通讯</span><span class="exc_rate2">02618.HK</span></p></div>
    <p class="invest-p">全球领先的移动终端产品和互联网服务提供商TCL通讯科技控股有限公司（简称“TCL通讯”，股票代码：HK.2618）成立于1999年3月是TCL集团旗下核心产业之一。TCL通讯总部位于
中国深圳，其产品和服务销往全球170多个国家和地区，全球雇员达15,000多名。
</p>
    </a>
  </div>
 <div class="invest-main invest-mar pr">
    <a href="http://www.tonlyele.com/channel.aspx?id=69" target="_blank"> 
    <div class="ticker_a02"><div class="ticker_b02 pa"></div><p class="ticker_c02 pa"><span class="exc_rate1">通力電子</span><span class="exc_rate2">01249.HK</span></p></div>
    <p class="invest-p">通力電子控股有限公司（HK：1249）致力于成为全球领先、具有产业竞争力的音视频产品ODM供应商。通力电子专注于电声技术和新媒体技术的开发和应用，快速实现高性价
比的规模制造，为合作伙伴提供一站式的音视频、电声等产品整体解决方案。
</p>
    </a>
  </div>
</div>

<div class="invest invest-padd">
  <h3>TCL股票论坛互动精华<p class="border_botm width60"></p></h3>
  <div class="invest-main">
    <ul class="essence-list" id="essence-js">
       <c:forEach items="${indexData.five }" var="obj">
	      <li class="essence-item">
	        <div class="fl essence-l">
	          <p>${obj.description }</p>
	          <span class="fr">${obj.title}</span>
	         
	         </div>
	        <div class="fr essence-r"><i class="arrow arrow-l"></i>
	          <p>${obj.content }</p>
	          <span>${obj.shorttitle}</span>
	         
	        </div>
	      </li>
       </c:forEach>
    </ul>
  </div>
  <p><a href="http://irm.p5w.net/ssgs/S000100/?code=000100" class="but" target="_blank">我要提问</a></p>
</div>

<div class="laws_reg_box">
  <h3 class="contaier pr">相关法律法规
    <p class="border_botm"></p>
  </h3>
  <div class="laws_reg">   
    <p class="laws_title"><a class="hover tabNavBar1-js">上市公司管理制度</a><a class="tabNavBar1-js">证券法律法规</a><a class="tabNavBar1-js">公平在身边</a></p>
    <div class="laws tabContent1-js" id="flfg_1">
      <ul>
        <c:forEach items="${indexData.four }" var="obj">
        	<li>${obj.title }<a href="${obj.url }" target="_blank"><i>PDF下载</i></a></li>
        </c:forEach>
 
      <div class="seemore"><a href="${pageContext.request.contextPath }/investors/investorsList?type=${indexData.four[0].type}" target="_blank">查看更多>></a></div>
    </div>
    <div class="laws tabContent1-js" id="flfg_2" style="display:none">
      <ul>
        <li>中华人民共和国宪法<a href="http://news.tcl.com/attached/pdf/investors_constitution.pdf" target="_blank"><i>PDF下载</i></a></li>
        <li>中华人民共和国刑法修正案<a href="http://news.tcl.com/attached/pdf/investors_criminal_law.pdf" target="_blank"><i>PDF下载</i></a></li>
        <li>深圳证券交易所股票上市规则<a href="http://news.tcl.com/attached/pdf/investors_stock_rules.pdf" target="_blank"><i>PDF下载</i></a></li>
        <li>中华人民共和国公司法<a href="http://news.tcl.com/attached/pdf/investors_company_law.pdf" target="_blank"><i>PDF下载</i></a></li>
        <li>中华人民共和国证券法<a href="http://news.tcl.com/attached/pdf/investors_securities_law.pdf" target="_blank">中华人民共和国证券法<i>PDF下载</i></a></li>
      </ul>
      
    </div>
    <div class="laws tabContent1-js" id="flfg_3" style="display:none">
      <ul>
       <c:forEach items="${indexData.six }" var="obj">
        	<li><a href="${pageContext.request.contextPath }/investors/investorsDetails?id=${obj.id }" target="_blank">${obj.title }</a> 
        </c:forEach>
      </ul>
      <div class="seemore"><a href="${pageContext.request.contextPath }/investors/investorsList?type=${indexData.six[0].type}" target="_blank">查看更多>></a></div>
    </div>
  </div>
</div>
<!--<div class="subscribe_box">
  <div class="contaier">
     <div class="tzzgx text-center"><img src="${pageContext.request.contextPath }/static/img/tzzgx.jpg"><br />
      关注TCL集团投资者关系官方微博</div>
    <div class="email_subscribe">
      <p>邮寄订阅<br />
        <i>SUBSCRIPTION</i></p>
      <a href="javascript:;" target="_blank" class="btn_sub">点击订阅</a></div> 
  </div>
</div>-->
<div class="investor_code">
	    <div class="investor_tzzgx"><img src="${pageContext.request.contextPath }/static/img/tzzgx.jpg"><br />
	      关注TCL集团投资者关系官方微博
	    </div>
	    <div class="investor_xqw">
	    	<a href="http://xueqiu.com/1938857873"><img src="${pageContext.request.contextPath }/static/img/QRcode_xqw.png"></a><br />
	      关注TCL集团雪球网账号
	    </div>	
</div>
<!-- main end-->
<div id="mask"></div>
<div class="contaier">
  <div id="sub_pop"> <a class="sub_close pa"><img src="${pageContext.request.contextPath }/static/img/close.png"></a>
    <div class="sub_content">
      <h4>欢迎订阅投资者关系<br />
        我们将会以Email形式把投资者关系发送至您的邮箱！</h4>
      <form class="contact_form" action="#" method="post" name="contact_form">
        <label>
          <input name="name" type="text" class="sub_name" placeholder="姓名" required>
        </label>
        <label>
          <input name="email" type="email" class="sub_email" placeholder="xxx@kuyumall.com" required ng-model="user.email">
        </label>
        <button type="submit" class="sub_bottom">提交</button>
      </form>
    </div>
  </div>
</div>
</div>
<!-- 引入公共尾部-->
<%@ include file="/WEB-INF/template/common/footer.jsp" %>


<input type="hidden" id="setPath" value="${pageContext.request.contextPath}"> 
	
<script id="currentPage" data-targetpage="investor_relations" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main"></script>
</body>
</html>