<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="X-UA-Compatible" content="IE=8" >
	<meta name="renderer" content="webkit">
	<!--TCL简介详情页-->
	<meta charset="UTF-8">
	<title>
	   <c:if test="${page eq 1 }">TCL简介详情页-TCL官网</c:if>
	   <c:if test="${page eq 2 }">孵化中心详情页-TCL官网</c:if>
	   <c:if test="${page eq 3 }">技术创新体系-TCL官网</c:if>
	   <c:if test="${page eq 4 }">隐私保护-TCL官网</c:if>
	   <c:if test="${page eq 5 }">法律声明-TCL官网</c:if>
	   <c:if test="${page eq 6 }">成员网站-TCL官网</c:if>
	</title>
	
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css">
	
	<!-- 引入公共静态文件-->
	<%@ include file="/WEB-INF/template/common/commonStatic.jsp" %>

</head>
<body>
<!-- 引入公共头部-->
<%@ include file="/WEB-INF/template/common/header.jsp" %>
    <div class="mT74">
    <div class="crumbs">
   <c:if test="${page eq 1 }">
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a> &gt; 
		<a href="#">TCL简介详情页</a></div>
   </c:if>
   <c:if test="${page eq 2 }">
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a> &gt; 
		<a href="#">孵化中心详情页</a></div>
   </c:if>
   <c:if test="${page eq 3 }"> 
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a> &gt; 
		<a href="#">TCL集团技术创新体系</a></div>
   </c:if>
   <c:if test="${page eq 6 }"> 
		<div class="main"><a href="${pageContext.request.contextPath }/index" target="_blank">集团官网</a> &gt;
		<a href="${pageContext.request.contextPath }/investors/index">投资者关系</a> &gt; 
		<a href="#">成员网站</a></div>
   </c:if>
</div>
	
	<c:if test="${page eq 1 }">
		<div class="about_content new_about">
			<img src="${pageContext.request.contextPath }/static/img/li_about_1.jpg" alt="公司展示图片" class="top">
			<span class="title noTop_border">
			    全球化浪潮中新兴的中国力量
			  <h6 class="mT8">TCL即 the creative life 三个英文单词首字母的缩写，意为创意感动生活</h6>
			</span>
	        <p>TCL集团股份有限公司是全球化的智能产品制造及互联网应用服务企业集团，整体在深交所上市（SZ.000100），旗下另拥有四家上市公司： TCL多媒体电子（01070 .HK）、TCL通讯科技（02618. HK）、TCL显示科技（00334.HK）、通力电子（01249. HK）。同时，翰林汇（835281）在新三板挂牌。</p>
			<p>公司创立于1981年，前身为中国首批13家合资企业之一——TTK家庭电器（惠州）有限公司，从事录音磁带的生产制造，后来拓展到电话、电视、手机、冰箱、洗衣机、空调、小家电、液晶面板等领域。集团现有7.5万名员工，23个研发机构，21个制造基地，在80多个国家和地区设有销售机构，业务遍及全球160多个国家和地区。</p>
			<p>2015年，集团营收再创新高，实现营业收入1045.79亿元，其中海外收入占47%，实现净利润32.3亿元，纳税总额59.6亿元。2015年，集团LCD电视销量全球排名第3位；手机全球排名第5位；液晶面板全球排名第6位；空调国内排名第5位；洗衣机国内排名第6位；冰箱国内排名第7位。2015年TCL品牌价值达710.28亿元人民币，继续稳居中国百强品牌第七位，连续十年蝉联中国彩电业第一品牌。</p>
			<p>玉羊奋蹄辞旧岁，金猴跳跃迎新春。为了尽快实现下一个千亿目标，2015年，TCL集团制定了双轮驱动发展战略：通过“双+”转型建立新的业务能力；通过国际化完善全球业务布局，提升海外市场份额。</p>
			<p>为了适应移动互联网的高速发展和跨界竞争的需要，集团2014年初提出“智能+互联网”、“产品+服务”的“双+” 战略转型，并在2015年将产业结构调整为七大产品业务领域、三大服务业务领域以及创投及投资业务，共11个业务板块。其中产品业务领域包括TCL多媒体电子、TCL通讯科技、华星光电、家电产业集团、通力电子、商用系统业务群和部品及材料业务群；服务业务领域包括互联网应用及服务业务群、销售及物流服务业务群以及金融事业本部。新的“7+3+1”结构，将为集团价值增长打开新扇面。</p>
			<p>TCL是中国企业国际化的先行者，探索始于1999年，已经走过早期探索、跨国并购、稳步成长三个阶段。近年，面对中国经济增速放缓的挑战，以及国家一带一路战略带来的机遇，重新制定出集团国际化再出发的路线图。未来几年，集团将通过“三军联动，品牌领先”，继续巩固和提高欧美市场份额，同时选择印度、巴西等重点新兴市场突破，扎根当地市场，建立全价值链的竞争力。国际化是TCL未来发展的新引擎。</p>
			<p>未来5年，集团致力于为用户提供极致体验的产品与服务，其中智能电视、智能手机销量进入全球前三，发展有ARPU值贡献的1亿家庭用户和1亿移动用户。</p>		         
			<p class="map_title"><h3 style="text-align:center;">主要业务分布</h3></p>
            <p style="text-align:center;"><img src="${pageContext.request.contextPath }/static/img/index.png" alt="" /></p>
            <p class="map_txt">
            <span class="arrow-up"></span>
                               目前，TCL在全球80多个国家和地区设有销售机构，通过全球的23个研发机构、21个制造基地、四万个销售网点及“四条供应链”管理（产品设计与制造链、物流供应链、质量保证链、产品创造与支持链）。实现了全球资源高效配置。</p>
	   </div>	
	</c:if>
	<c:if test="${page eq 2 }">
	<div class="about_content">
	  <div class="honor_01">
          <span class="title noPaddingTop">TCL创新孵化基地是干嘛的？</span>
              <p>TCL集团工业研究院是TCL集团的中央研发机构，与TCL创投共同打造“TCL创新孵化基地”，
              	为创业者提供产业链 支持、平台支持、投资融资、人才引进、创业导师、市场推广、交流培训、孵化场地等一站式保姆服务，旨在帮助早期创业团队顺利启动和快速成长。
              </p>
              <p>TCL创新孵化基地专注早期创业团队项目孵化，依托TCL集团强大的产业链优势，打造国内一流的创业平台。
	          </p>
       </div>
       <div class="honor_01">
	   <span class="title noPaddingTop">来点实际的，我们能提供什么？</span>
       <p>
         <span>1. 各类软硬件技术协同攻关</span>
		硬件技术（射频处理、功耗处理、显示、驱动）<br />
		软件技术（音视频算法处理、操作系统、云端技术、大数据挖掘）<br />
		显示技术（自然光、 裸眼3D、多基色、印刷显示、柔性显示）<br />
		行业领先的硬件平台支持（符合国家标准的认证实验室，电性能、音视频指标、EMC、硬件常规测试实验室，高低温实验室等实验室）
       </p>
       <p>
         <span>2. 产业链支持</span>
		与TCL各产业协同支持
		协助研发成果在产业化中应用<br />
		应用需求、行业信息、情报分析与分享<br />
		供应链协同<br />
		渠道、技术合作、数据共享等全方位支持<br />
		制造工艺<br />
		用户数据挖掘与分析
       </p>
       <p>
         <span>3. 软硬件平台支持</span>
		孵化器将建立开源智能硬件社区与平台、提供智能硬件远程接口以及云服务等
       </p>
       <p>
         <span>4. 完善团队或技术</span>
		TCL集团工业研究院已经孵化出欢网、全球播、敦泰科技等成功公司；我们拥有强大的研发团队，拥有众多高新技术专利，如项目团队缺一部分人和相关的技术，TCL研究院可用已有技术、人
		才双方互补，或帮助进行人才招聘，协助打造完备的团队和技术。
       </p>
       </div>
       <div class="honor_01">
       <span class="title noPaddingTop">哪些创业项目和团队可以进驻？</span>
       <p>
       <span style="padding-left:0;text-indent:0;">TCL创新孵化基地整体面向围绕TCL产业链创新项目，优先与各产业有协同、有可运营的商业模式、符合B2C原则。主要以“软件+服务”、新产品、新型显示与材料等相关技术，以下项目类
		型为佳：（结合TCL产业优势，这样才能更高更快更好的帮助到你哦！）</span>
		1. 围绕TCL主产业链形成移动互联网生态圈，尤其是互联网服务加运营相关的生态；<br />
		2. 移动互联网相关应用及服务；<br />
		3. 智能电视、智能手机、HTML5 相关应用及服务；<br />
		4. 智能硬件及应用服务，如：模块电视、穿戴式设备、智能家庭、智能路由器、智能接口设备软件、硬件及应用服务；<br />
		5. 新型显示与材料相关技术与应用。</p>
       </div>
       <div class="honor_01">
           <span class="title noPaddingTop">钱不是问题！就等你和你的项目！</span>
           <p>TCL创投为基地单独设立1亿种子基金，帮助早期项目团队孵化！TCL创新孵化基地的投资包括但不限于：TCL创
                                             投，专业性投资机构，著名个人VC，著名企业高管，政府投资。我们为创业者提供强有力的支持，共同打造世界级
                                             的创业公司。TCL创新孵化基地主要涉足的投资阶段为：种子轮、天使轮和A轮，B轮会有选择的进行跟投。</p>
           <p class="p1">A轮、B轮••••••上市去纳斯达克敲钟，迎娶白富美走向人生巅峰，现在想想还有点小激动呢！</p>
       </div>
       <div class="honor_01">
       <span class="title noPaddingTop">说了这么多，我们的目的是什么？</span>
       <p style="text-indent:0;">TCL创新孵化基地希望为创业团队提供全方位的支持、一站式服务，协助创业者快速成长，实现创业梦想；与此同时也期望与国内的创业圈、投资人、政府、企业等一起合作，共同打造健康、
		良性、可循环的创业生态圈。
		TCL创新孵化基地，专注创新创业孵化！想创业？或正在创业？就来TCL创新孵化基地！</p>
       </div>
        
       <div class="honor_01">
       <span class="title">TCL创新孵化基地在哪？</span>
       <p style="text-indent:0;">TCL创新孵化基地位于深圳“TCL国际E城”，为创业者提供优质的超过6000平米的孵化场地；园区总建筑面积46万平米，以服务高新科技研发企业、TCL下属及上下游关联企业为核心，采用国际先
		进的规划设计理念，打造深圳的人才高地、产业高地、生态高地和商务休闲高地。立马是不是有种高端大气上档次的感觉？</p>
       </div>
       <div class="honor_01 lastHonor" id="last">
       <span class="title noPaddingTop">怎么“勾搭”上我们？么么哒！</span>
       <div class="tcl_yjy">
       		<p class="hooked_left"><a><img src="${pageContext.request.contextPath}/static/img/yjy.jpg" /></a><br /> <span>关注 TCL集团工业研究院<br />微信公众账号：TCL-YJY</span></p>
       		<p class="hooked_center"><strong>或者直接上门，记得先联系哦！</strong>
       		<i class="block">地址：深圳南山中山园路1001</i><br />
		号 TCL 国际E城TCL科技大厦<br />
		联系人：李春雨<br />
		<i>办公：+86 755-3331146</i><br />
		<i>手机：+86 18682200334</i><br /> 
		<i>联系人：黄志刚</i><br />
		<i>办公：+86 755-36645473</i><br />
		<i>手机：+86 15099963197</i></p>
        <p class="h_right">
              <span>你的联系方式、创意项目或商业计划书投递：</span>
            <a href="mailto:bp@tcl.com" class="mailFont">Email：bp@tcl.com</a>
            <br><img src="${pageContext.request.contextPath }/static/img/img_email.jpg" alt="" />
        </p>
        
        
       </div>   	    
       </div>
      </div> 
      
	</c:if>
	<c:if test="${page eq 3 }">
	<div class="about_content">	
        <h4 class="maintitle">TCL集团技术创新体系简介</h4>    
		<p class="dsz_speech">
             <span class="img"><img src="${pageContext.request.contextPath}/static/img/tixi_img.jpg" alt="公司展示图片"> </span>
			TCL集团技术创新体系由工业研究院、技术中心、以及下属各产业16个研发中心构成，目前，全球共有近5300名高素质研发人才，其中中、高级职称人员占42%，拥有国际先进水平的开发软件、仪器、设备7000多台套；研发办公面积10万多平方米；拥有CNAL国家产品认可认证实验室9个；与国际知名公司的联合实验室6个；博士后工作站1个，2013集团年预计研发投入为23亿。<br />

			TCL 集团是全球少数同时拥有多媒体、移动通讯及8.5 代液晶面板业务的企业，公司将通过资源整合，充分发挥TCL 多媒体、TCL 通讯、华星光电在产品、研发和管理等多方面的协同效应，积极寻求在智能化产品、<br />云计算和网络化技术应用、操作系统及应用软件、新型显示技术等方面获得实质性的突破，不断加强技术创新的力度和厚度，以提升公司以及TCL品牌在国际消费电子产业的整体竞争优势。<br />
			
			TCL集团形成了在集团技术与专利管理委员会管理下的、由工业研究院牵头核心技术研发、技术中心作为管理平台、全球23个研发机构共同组成的企业技术研发体系。<br />
			
			TCL集团工业研究院直属于TCL集团总部，既是TCL集团的中央研发部门，也是TCL集团核心技术的孵化基地。研究院围绕“3C融合数字家庭系统及基础软件平台研发”和“新型显示技术”两大战略方向，依托用户体验研究，聚焦智能终端技术、数字视频与算法、基础软件技术平台、云架构与云计算、创新型产品与服务等主要研究方向，持续进行新产品和新技术的探索与研发。
		</p>
	</div>	
	</c:if>
	<c:if test="${page eq 4 }">
	   <div class="main_privacy">
			<div class="privacy">
			      <h4> 隐私保护</h4>
			      <h5> TCL网站的隐私权保护制度是基于：</h5>
			      <p> 1．隐私权是您的重要权利。向我们提供您的个人资料是基于对TCL网站的信任。除非为了遵循法律，或得到您的同意，或为履行定货或应您个人要求、或保护我们免遭非法活动、诈骗或任何危及公众安全的行为的侵害，您提供给TCL网站的个人资料不会被透露给无关的第三方（包括公司或个人）。<br>2．您提供的信息只会被用于帮助我们为您提供更好的服务。</p>
			      <h5> TCL网站的个人资料保密制度摘要如下：</h5>
			      <p><em>*</em>我们收集哪类个人资料</p>
			      <p>如果您访问TCL网站，我们并不要求提供个人信息。 TCL网站有些站点需要登记才能参与，如信息反馈、应聘职位等等，在这些地方我们将请求您提供有关信息，这些信息将有助于我们为您提供更好的服务。在通常情况下，这类登记只要求您提供一些个人识别资料（包括但不限于）：如姓名、性别、年龄、出生日期、单位名称、电话、通信地址、住址、电子邮件地址等基本情况。这种参与完全是自愿性的，您能够自主控制通过网路提供给TCL的个人信息。</p>
			      <p><em>*</em>我们将采取一切步骤保护您的隐私</p>
			      <h5> 个人信息</h5>
			      <p>每当您提供给我们敏感信息时，我们将采取步骤保护您的敏感信息，我们也将采取安全手段保护已存储的个人资料。以防止您的个人资料丢失、被盗用或遭篡改。除非根据法律或政府的强制性规定，在未得到您的书面许可之前，我们不会把您的任何个人资料提供给无关的第三方（包括公司或个人）。但是，如果您要求我们提供特定客户支援服务或把一些物品送交给您，我们则需要把您的姓名和地址提供给有关的第三方如运输公司。</p>
			      <h5> 招聘信息</h5>
			      <p>您提供的关于招聘的个人信息只用于招聘及日后内部考虑，只有 TCL负责招聘的人士才能看到。
			      </p><p><em>*</em>我们使用您的信息方式</p>
			      <p>我们可能会在同您联系时使用您的个人信息，（包括但不限于电子邮件或手机短信）；例如：我们向您通知招聘面试时所涉及的应聘信息；我们对您的技术支持或信息反馈的需求作出答复。</p>
			      <p><em>*</em>隐私权保护制度的执行</p>
			      <p>1．如果TCL网站需要识别您的身份或与您联络，会明确询问所需的个人资料。与此同时，TCL网站会解释这些资料的用途（宣布的用途）。<br>2．TCL网站也许会因法律要求公开个人资料，或者因善意确信这样的作法对于下列各项有其必要性：<br>1）符合法律公告或遵守适用于TCL网站站点的合法程序；<br>2）保护TCL网站的用户之权利或财产；<br>3）在紧急的情况下，为了保护TCL网站及其用户之个人或公众安全。<br>3．任何时候如果您认为TCL网站没有遵守这些原则时，请利用电子邮件[tcl_webmaster@tcl.com]通知我们，我们会尽一切努力，在合理适当的范围内立即改善问题。</p>
			      <p><em>*</em>更新您已经提供给TCL网站的个人资料</p>
			      <p>如果您的地址，电话，e-mail地址或其他个人资料发生变化，您可以在TCL网站站点中的个人资料管理进行修改，以帮助我们保持您的资料的准确性。我们将致力于保护您的个人资料，我们会随时更新本隐私保护制度，所有的更新将在此站点公布。本隐私保护制度的解释权及对本网站使用的解释权归TCL所有。</p>
			      <p>因本隐私保护制度或使用本网站所发生的争议适用中华人民共和国法律。因本隐私保护制度或使用本网站发生争议，应当协商解决，协商不成的，各方一致同意由惠州仲裁委员会仲裁解决。仲裁裁决是终局，对双方均有约束力。</p>
    		</div>
   	 </div>	
	</c:if>
	<c:if test="${page eq 5 }">
	   <div class="lawState">
	      <h4>法律声明</h4>
	      <p class="notice ">注意：使用本网站前请您务必仔细阅读以下条款。<br>如果您不同意下面列出的条件，请不要使用本网站或任何包含在本网站中的内容。如果您使用了本网站或本网站包含的内容，即表示您同意下列的各项条款。</p>
	      <h5>网站信息</h5>
	      <p>本站信息不附加任何形式的保证，包括适销性、适合于特定目的、没有计算机病毒或不侵犯知识产权的保证。TCL不保证本网站信息的绝对准确性和绝对完整性，TCL网站中的内容如产品、价格和配置等会随时变更，本站中的内容也可能已经过期，TCL不承诺同步更新它们。如果本站发布的产品信息，与市场上销售产品的说明书内容有出入，以产品说明书的信息内容为准。</p>
	      <h5>一般限制</h5>
	      <p>本网站中提供的所有信息、文件、产品和服务、商标、标识、图形以及图片（素材）属于TCL集团或其子公司或其他权利人所拥有。任何形式的未经授权而使用本网站信息的行为将违反版权、商标和其他法律法规。</p>
	      <p>TCL同意您仅能由于个人目的在个人电脑上显示本网站。没有TCL的书面允许，您不能因为商业用途或其他的任何目的使用本网站。您同意不向任何人，包括但不限于公司及组织复制、分发、出版和广播包含在本网站中的任何内容。您不可以在新闻组、邮件组或公告栏里张贴本网站的内容。您认同您没有权利以任何方式修改、编辑、改变或增加任何素材。在不事先通知您的情况下，本限制条款自动生效。依据限制条款，您同意立即销毁任何打印或下载的素材。</p>
	      <p>您同意，在未经TCL或TCL授权者书面允许的情况下不会将本网站包含的任何内容或第三方资料镜像到任何其他的服务器或互联网设备上。</p>
	      <p>本网站可以被链接到WWW或Internet 上不被TCL控制和维护的第三方网站。您认同TCL提供这些链接仅是为您提供方便，TCL对第三方网站的内容不负有责任，因第三方网站可能带来的结果和风险全部由您自己承担。本网站的某些区域用密码保护（限制区域）。如果您是这些限制区域的授权用户，您同意您有责任保证您的密码和帐号的机密性，并同意，如果您的密码丢失、被盗或被未授权的第三方破译，您将立即通知TCL。您同意对您所拥有的帐号发生的任何行为完全负责，包括由密码保护下的帐号发生的任何费用，无论费用是否是您的个人行为。您同意，如果发生任何未授权使用您的帐号的行为，您将立即通知TCL。</p>
	      <p>您认可本网站可以包含一定的影响内容质量的不精确或排版错误。您认可素材或任何第三方内容没有被TCL独立核实或整体或部分的授权。并同意TCL不担保素材或第三方内容精确或合时。您进一步同意TCL对任何素材和第三方内容的冗长不负责任。</p>
	      <h5>责任限制</h5>
	      <p>为了最大化扩展可使用的法律，TCL不对由于显示、拷贝或下载本网站信息、使用或不能使用本网站而遭受的任何破坏和损失负责。TCL不对任何间接的、特别的、可效仿的、惩罚性的、偶然的或相应产生的破坏和损失负责（包括不限于利润的损失、间接损失、附带损失、数据丢失、税收或其他经济利益的损失）。</p>
	      <h5>当地法律</h5>
	      <p>因本声明或使用本网站所发生的争议适用中华人民共和国法律，TCL不担保本网站的内容在国际区域内使用有效。如果您在中国以外的地点使用本网站，您有责任在遵从当地的法律的情况下使用本网站的内容。</p>
	      <h5>本网站的违背条款</h5>
	      <p>如果您违背本网站的条款，TCL保留不必在事先通知或解释的情况下对您终止服务的权利。</p>
	      <p>您同意TCL以及TCL授权者可以在事先未声明的情况下提高并／或改变本网站的服务以及价格，并进一步同意TCL可以在未声明的情况下修订这些条款，您应经常访问本网站以了解当前的条款。您的继续使用本网站被认为您已接受了这些改变。</p>
	      <p>因本声明或使用本网站发生争议，应当协商解决，协商不成的，各方一致同意由惠州仲裁委员会仲裁解决。仲裁裁决是终局，对双方均有约束力。</p>
	      <p>本声明的解释权及对本网站使用的解释权归TCL所有。</p>
   	 </div>
	</c:if>
	<c:if test="${page eq 6 }">
		<div class="member_main">
        <h1>成员网站</h1>
        <ul class="memberList">
            <li><a href=" http://www.tclcom.com/" target="_blank">TCL通讯科技控股有限公司</a></li>
            <li><a href="http://in.tcl.com/" target="_blank">TCL智融科技小额贷款股份有限公司</a></li>
            <li><a href="http://www.speedex.com.cn/" target="_blank">深圳速必达物流服务有限公司</a></li>
            <li><a href="http://multimedia.tcl.com/cn/home/info.do?method=home&mappingName=home" target="_blank">TCL多媒体科技控股有限公司</a></li>
            <li><a href="http://www.tclmobile.com.cn/" target="_blank">惠州TCL移动通信有限公司</a></li>
            <li><a href="http://www.melody-tv.com/" target="_blank">河南美乐华纳电子有限责任公司</a></li>
            <li><a href="http://www.digital.tcl.com/" target="_blank">TCL数码科技（深圳）有限公司</a></li>
            <li><a href="http://battery.tcl.com/" target="_blank">惠州TCL金能电池有限公司</a></li>
            <li><a href="http://www.rowa.com/" target="_blank">广州数码乐华科技有限公司</a></li>
            <li><a href="http://www.tcl-smarthome.com/" target="_blank">TCL智能家庭科技有限公司</a></li>
            <li><a href="http://www.cartel.tcl.com/" target="_blank">TCL康钛汽车信息服务有限公司</a></li>
            <li><a href="http://veryled.tcl.com/" target="_blank">华瑞光电(惠州)科技有限公司</a></li>
            <li><a href="http://www.tclbusiness.com/" target="_blank">TCL商用信息科技（惠州）股份有限公司</a></li>
            <li><a href="http://es-hz.tcl.com/Company.asp" target="_blank">TCL环境科技有限公司</a></li>
            <li><a href="http://www.golive-tv.com" target="_blank">全球播科技（北京）有限公司</a></li>
            <li><a href="http://www.tcldisplay.com/" target="_blank">TCL显示科技（惠州）有限公司</a></li>
            <li><a href="http://aobo.tcl.com/" target="_blank">TCL奥博（天津）环保发展有限公司</a></li>
            <li><a href="http://www.tonlyele.com/" target="_blank">通力电子控股有限公司</a></li>
            <li><a href="http://www.tclznjk.com/" target="_blank">TCL智能健康电器事业部</a></li>
            <li><a href="http://jr.tcl.com/" target="_blank">TCL金融控股集团（深圳）有限公司</a></li>
            <li><a href="http://www.szcsot.com/" target="_blank">深圳市华星光电技术有限公司</a></li>
            <li><a href="http://kt.tcl.com" target="_blank">TCL空调器(中山)有限公司</a></li>
            <li><a href="http://fc.tcl.com/cn/index.aspx" target="_blank">TCL集团财务有限公司</a></li>
            <li><a href="http://www.highly.com.cn/" target="_blank">翰林汇公司</a></li>
            <li><a href="http://www.tclbjd.com" target="_blank">TCL白家电事业部</a></li>
            <li><a href="http://med.tcl.com/" target="_blank">TCL医疗集团</a></li>
            <li><a href="http://www.open.com.cn/" target="_blank">奥鹏远程教育中心</a></li>
            <li><a href="http://www.tcl-lighting.com" target="_blank">TCL照明电器有限公司</a></li>
            <li><a href="http://callcenter.tcl.com/tclcc/portlets/FirstPage/begin.do" target="_blank">TCL呼叫中心</a></li>
            <li><a href="http://www.openedu.com.cn/Pages/Index.html" target="_blank">电大在线远程教育</a></li>
        </ul>
    </div>
	</c:if>
	</div>
	<!-- 引入公共尾部-->
	<%@ include file="/WEB-INF/template/common/footer.jsp" %>
	
	<input id="typeStorage" type="hidden" value="${type}">
	<input type="hidden" id="setPath" value="${pageContext.request.contextPath}">
	<script id="currentPage" data-targetpage="about_tcl" src="${pageContext.request.contextPath}/static/js/lib/require.min.js" data-main="${pageContext.request.contextPath}/static/js/main.js"></script>
</body>
</html>