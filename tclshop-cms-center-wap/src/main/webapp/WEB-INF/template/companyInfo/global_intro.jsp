<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <!--TCL简介详情页-->
        <meta charset="UTF-8"/>
        <title>
            <c:if test="${page eq 1 }">TCL简介详情页</c:if>
            <c:if test="${page eq 2 }">孵化中心详情页</c:if>
            <c:if test="${page eq 3 }">TCL简介详情页</c:if>
        </title>
        <style type="text/css">
            html {
                /*background-image: url(/static/img/pindao.jpg);*/
                /*background-image: url(/static/img/index.png);*/
                /*background-image: url(/static/img/1920.jpg);*/
                background-position: center 0;
                background-repeat: no-repeat;
                background-size: 100% auto;
            }
            body {
                /*opacity: 0;*/
            }

        </style>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/global.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/about.css"/>
    </head>
    <body>
        <div class="header head-channel"></div>
        <div class="crumbs">
            <c:if test="${page eq 1 }">
                <div class="main">
                    <a href="http://www.tcl.com">首页</a>
                    &gt;&gt;
                    <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a>
                    &gt;&gt;
                    <a href="#">TCL简介详情页</a>
                </div>
            </c:if>
            <c:if test="${page eq 2 }">
                <div class="main">
                    <a href="http://www.tcl.com">首页</a>
                    &gt;&gt;
                    <a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a>
                    &gt;&gt;
                    <a href="#">孵化中心详情页</a>
                </div>
            </c:if>
            <c:if test="${page eq 3 }">
                <div class="main">
                    <a href="http://www.tcl.com">首页</a>
                    &gt;&gt;
                    <a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a>
                    &gt;&gt;
                    <a href="#">TCL简介详情页</a>
                </div>
            </c:if>
        </div>

        <c:if test="${page eq 1 }">
            <div class="about_content">
                <img src="${pageContext.request.contextPath }/static/img/li_about_1.jpg" alt="公司展示图片" class="top"/>
                <span class="title">全球化浪潮中新兴的中国力量</span>
                <p>
                    <br/>
                    TCL即 the creative life 三个英文单词首字母的缩写，意为创意感动生活
                    <br/>
                    <br/>
                    TCL集团股份有限公司是全球化的智能产品制造及互联网应用服务企业集团，整体在深交所上市（SZ.000100），旗下另拥有四家上市公司： TCL多 媒体电子（01070 .HK）、TCL通讯科技（02618. HK）、TCL显示科技（00334.HK ）、通力电子（01249. HK）。
                    <br/>
                    <br/>
                    公司创立于1981年，前身为中国首批13家合资企业之一——TTK家庭电器（惠州）有限公司，从事录音磁带的生产制造，后来拓展到电话、电视、 手机、冰箱、洗衣机、空调、小家电、液晶面板等领域。集团现有7.5万名员工，23个研发机构，21个制造基地，在80多个国家和地区设有销售机构， 业务遍及全球160多个国家和地区。
                    <br/>
                    <br/>
                    2014年，集团营收和利润再创历史新高，实现营业收入1010.29亿元，其中海外收入占47%，实现净利润42.33亿元，纳税总额59.6亿元。<br/>
                    2014年，集团 LCD电视销量全球排名第4位；手机全球排名第5位；液晶面板全球排名第5位；空调国内排名第5位；洗衣机国内排名第6位；冰箱国 内排名第10位。2014年TCL品牌价值668.59亿元人民币，居中国百强品牌第6位，连续9年蝉联中国彩电业第一品牌。
                    <br/>
                    <br/>
                    马年跨千亿，羊毫谱新篇。为了尽快实现下一个千亿目标，2015年初集团制定了双轮驱动发展战略：通过“双+”转型建立新的业务能力；通过国际 化完善全球业务布局，提升海外市场份额。
                    <br/>
                    <br/>
                    为了适应移动互联网的高速发展和跨界竞争的需要，集团2014年初提出“智能+互联网”、“产品+服务”的“双+” 战略转型，并将产业结构调整 为七大产品业务领域、三大服务业务领域以及创投及投资业务，共11个业务板块。其中产品业务领域包括TCL多媒体电子、TCL通讯科技、华星光电、 家电产业集团、通力电子、商用系统业务群和部品及材料业务群；服务业务领域包括互联网应用及服务业务群、销售及物流服务业务群以及金融事业 本部。新的“7+3+1”结构，将为集团价值增长打开新扇面。
                    <br/>
                    <br/>
                    TCL是中国企业国际化的先行者，探索始于1999年，已经走过早期探索跨国并购、稳步成长三个阶段。近年，面对中国经济增速放缓的挑战，以及国 家一带一路战略带来的机遇重新制定出集团国际化再出发的路线图。未来几年，集团将通过“三军联动，品牌领先”，继续巩固和提高欧美市场份额， 同时选择印度、巴西等重点新兴市场突破，扎根当地市场，建立全价值链的竞争力。国际化是TCL未来发展的新引擎。
                    <br/>
                    <br/>
                    未来5年，集团致力于为用户提供极致体验的产品与服务，其中智能电视智能手机销量进入全球前三，发展有ARPU值贡献的1亿家庭用户和1亿移动用 户。2015年，集团预计整体收入将在去年1010亿元的基础上增长18%，其中海外收入增长25%。
                    <br/>
                    <br/>
                    目前，TCL在全球80多个国家和地区设有销售机构，通过全球的23个研发机构、21个制造基地、四万个销售网点及“四条供应链”管理（产品设计与 制造链、物流供应链、质量保证链、产品创造与支持链）。实现了全球资源高效配置
                </p>
            </div>
        </c:if>
        <c:if test="${page eq 2 }">
            <div class="about_content">
                <div class="honor_01">
                    <span class="title">来点实际的，我们能提供什么？</span>
                    <p>
                        <span>1. 各类软硬件技术协同攻关</span>
                        硬件技术（射频处理、功耗处理、显示、驱动）<br/>
                        软件技术（音视频算法处理、操作系统、云端技术、大数据挖掘）<br/>
                        显示技术（自然光、 裸眼3D、多基色、印刷显示、柔性显示）<br/>
                        行业领先的硬件平台支持（符合国家标准的认证实验室，电性能、音视频指标、EMC、硬件常规测试实验室，高低温实验室等实验室）
                    </p>
                    <p>
                        <span>2. 产业链支持</span>
                        与TCL各产业协同支持 协助研发成果在产业化中应用<br/>
                        应用需求、行业信息、情报分析与分享<br/>
                        供应链协同<br/>
                        渠道、技术合作、数据共享等全方位支持<br/>
                        制造工艺<br/>
                        用户数据挖掘与分析
                    </p>
                    <p>
                        <span>3. 软硬件平台支持</span>
                        孵化器将建立开源智能硬件社区与平台、提供智能硬件远程接口以及云服务等
                    </p>
                    <p>
                        <span>4. 完善团队或技术</span>
                        TCL集团工业研究院已经孵化出欢网、全球播、敦泰科技等成功公司；我们拥有强大的研发团队，拥有众多高新技术专利，如项目团队缺一部分人和相关的技术，TCL研究院可用已有技术、人 才双方互补，或帮助进行人才招聘，协助打造完备的团队和技术。
                    </p>
                </div>
                <div class="honor_01">
                    <span class="title">哪些创业项目和团队可以进驻？</span>
                    <p>
                        <span>TCL创新孵化基地整体面向围绕TCL产业链创新项目，优先与各产业有协同、有可运营的商业模式、符合B2C原则。主要以“软件+服务”、新产品、新型显示与材料等相关技术，以下项目类 型为佳：（结合TCL产业优势，这样才能更高更快更好的帮助到你哦！）</span>
                        1. 围绕TCL主产业链形成移动互联网生态圈，尤其是互联网服务加运营相关的生态；<br/>
                        2. 移动互联网相关应用及服务；<br/>
                        3. 智能电视、智能手机、HTML5 相关应用及服务；<br/>
                        4. 智能硬件及应用服务，如：模块电视、穿戴式设备、智能家庭、智能路由器、智能接口设备软件、硬件及应用服务；<br/>
                        5. 新型显示与材料相关技术与应用。</p>
                </div>
                <div class="honor_01">
                    <span class="title">说了这么多，我们的目的是什么？</span>
                    <p>TCL创新孵化基地希望为创业团队提供全方位的支持、一站式服务，协助创业者快速成长，实现创业梦想；与此同时也期望与国内的创业圈、投资人、政府、企业等一起合作，共同打造健康、 良性、可循环的创业生态圈。 TCL创新孵化基地，专注创新创业孵化！想创业？或正在创业？就来TCL创新孵化基地！</p>
                </div>
                <div class="honor_01">
                    <span class="title">TCL创新孵化基地在哪？</span>
                    <p>TCL创新孵化基地位于深圳“TCL国际E城”，为创业者提供优质的超过6000平米的孵化场地；园区总建筑面积46万平米，以服务高新科技研发企业、TCL下属及上下游关联企业为核心，采用国际先 进的规划设计理念，打造深圳的人才高地、产业高地、生态高地和商务休闲高地。立马是不是有种高端大气上档次的感觉？</p>
                </div>
                <div class="honor_01" id="last">
                    <span class="title">怎么“勾搭”上我们？么么哒！</span>
                    <div class="tcl_yjy">
                        <p class="hooked_left">
                            <a>
                                <img src="${pageContext.request.contextPath}/static/img/yjy.jpg"/>
                            </a>
                            <br/>
                            <span>关注 TCL集团工业研究院<br/>微信公众账号：TCL-YJY</span>
                        </p>
                        <p class="hooked_center">地址：深圳南山中山园路1001<br/>
                            号 TCL 国际E城TCL科技大厦<br/>
                            联系人：李春雨<br/>
                            办公：+86 755-3331146<br/>
                            手机：+86 18682200334<br/>
                            联系人：黄志刚<br/>
                            办公：+86 755-36645473<br/>
                            手机：+86 15099963197</p>
                        <p class="hooked_right">你的联系方式、创意项目或商<br/>
                            业计划书投递：<br/>
                            EMAIL: BP@TCL.COM
                        </p>
                    </div>
                </div>

            </div>
        </c:if>
        <c:if test="${page eq 3 }">
            <div class="about_content">
                <h4 class="maintitle">TCL集团技术创新体系简介</h4>
                <p class="dsz_speech">
                    <span class="img">
                        <img src="${pageContext.request.contextPath}/static/img/tixi_img.jpg" alt="公司展示图片"/>
                    </span>
                    TCL集团技术创新体系由工业研究院、技术中心、以及下属各产业16个研发中心构成，目前，全球共有近5300名高素质研发人才，其中中、高级职称人员占42%，拥有国际先进水平的开发软件、仪器、设备7000多台套；研发办公面积10万多平方米；拥有CNAL国家产品认可认证实验室9个；与国际知名公司的联合实验室6个；博士后工作站1个，2013集团年预计研发投入为23亿。<br/>

                    TCL 集团是全球少数同时拥有多媒体、移动通讯及8.5 代液晶面板业务的企业，公司将通过资源整合，充分发挥TCL 多媒体、TCL 通讯、华星光电在产品、研发和管理等多方面的协同效应，积极寻求在智能化产品、<br/>云计算和网络化技术应用、操作系统及应用软件、新型显示技术等方面获得实质性的突破，不断加强技术创新的力度和厚度，以提升公司以及TCL品牌在国际消费电子产业的整体竞争优势。<br/>

                    TCL集团形成了在集团技术与专利管理委员会管理下的、由工业研究院牵头核心技术研发、技术中心作为管理平台、全球23个研发机构共同组成的企业技术研发体系。<br/>

                    TCL集团工业研究院直属于TCL集团总部，既是TCL集团的中央研发部门，也是TCL集团核心技术的孵化基地。研究院围绕“3C融合数字家庭系统及基础软件平台研发”和“新型显示技术”两大战略方向，依托用户体验研究，聚焦智能终端技术、数字视频与算法、基础软件技术平台、云架构与云计算、创新型产品与服务等主要研究方向，持续进行新产品和新技术的探索与研发。
                </p>
            </div>
        </c:if>

        <!-- Help center html start -->
        <div class="help">
            <div class="min-wid">
                <dl>
                    <dt>特色服务</dt>
                    <dd>
                        <a target="_blank" href="#">T码检测通道</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">T码专属通道</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">全场包邮</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">全国联保</a>
                    </dd>
                </dl>
                <dl>
                    <dt>帮助中心</dt>
                    <dd>
                        <a target="_blank" href="#">购物指南</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">支付方式</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">配送方式</a>
                    </dd>
                </dl>
                <dl>
                    <dt>服务支持</dt>
                    <dd>
                        <a target="_blank" href="#">售后服务</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">自助服务</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">服务网点</a>
                    </dd>
                </dl>

                <dl>
                    <dt>关于TCL</dt>
                    <dd>
                        <a target="_blank" href="#">了解TCL</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">人才招聘</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">联系我们</a>
                    </dd>
                </dl>
                <dl>
                    <dt>关注我们</dt>
                    <dd>
                        <a target="_blank" href="#">铁粉社区</a>
                    </dd>
                    <dd>
                        <a target="_blank" href="#">新浪微博</a>
                    </dd>
                    <!-- <dd><a target="_blank"  href="#">官方微信</a></dd> -->
                </dl>
                <dl>
                    <dt>线下网点</dt>
                    <dd>
                        <a target="_blank" href="#">线下网点</a>
                    </dd>
                    <!-- <dd><a target="_blank"  href="#">零售体验店</a></dd> -->
                </dl>

                <dl class="last-r">
                    <p class="red phone">400-712-3456</p>
                    <p class="grey">（24小时在线，仅收市话费）</p>
                    <!-- <a href="#"><i>&#xe63d;</i>在线客服8:30-23:00</a> -->
                    <a href="#">
                        <i>&#xe61f;</i>在线客服8:30-23:00</a>
                </dl>
            </div>
        </div>
        <!-- Help center html end -->
        <!-- footer html end -->
        <div class="footer">
            <div>
                <div class="foot-logo">
                    <img src="/static/img/logo.png"/>
                </div>
                <p class="blod">
                    <a href="#">关于TCL</a>
                    |
                    <a href="#">社会责任</a>
                    |
                    <a href="#">投资者关系</a>
                    |
                    <a href="#">新闻中心</a>
                    |
                    <a href="#">经销商之家</a>
                </p>
                <p>©2010-2011 TCL CORPORATION All Rights Reserved.
                    <a href="#">使用条款</a>
                    TCL集团股份有限公司版权所有 粤ICP备05040863号</p>
                <div class="foot-r">
                    <span>&#xe63a;</span>诚信网站</div>
            </div>
        </div>
        <!-- footer html end -->

        <!-- Right slide bar html end -->
        <!-- go to top html-->
        <div class="goTop">
            <div class="item">&#xe624;</div>
            <div class="item">&#xe60c;</div>
            <div class="item">&#xe616;
                <div class=""></div>
            </div>
            <div class="item">&#xe610;</div>
            <div class="item">&#xe61f;</div>
            <a href="#">&#xe639;</a>
        </div>
        <!-- go to top html-->
        <script type="text/javascript" src="/static/js/core/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="/static/js/core/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="/static/js/core/index.js"></script>
        <script type="text/javascript" src="/static/js/core/Plugin.js"></script>
        <script type="text/javascript">
            plugin.init();
        </script>
    </body>
</html>
