<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>
            <c:if test="${result.records[0].type eq 3 }">发展历程</c:if>
            <c:if test="${result.records[0].type eq 18 }">企业荣誉</c:if>
            <c:if test="${result.records[0].type eq 19 }">科技创新荣誉</c:if>
        </title>
        <script type="text/javascript" src="${pageContext.request.contextPath }/static/js/lib/jquery.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/global.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/static/css/about.css"/></head>
    <body>
        <c:if test="${result.records[0].type eq 19 }">
            <div class="crumbs">
                <div class="main">
                    <a href="http://www.tcl.com">首页</a>
                    &gt;&gt;
                    <a href="${pageContext.request.contextPath }/companyInfo/companyInfoRDev">技术研发</a>
                    &gt;&gt;
                    <a href="#">科技创新荣誉</a>
                </div>
            </div>
            <div class="about_content">
                <span class="title">荣誉</span>
                <c:forEach items="${result.records }" var="obj">
                    <div class="honor_01">
                        <span class="title">${obj.years }</span>
                        <ul>
                            <li>${obj.content }</li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </c:if>
        <c:if test="${result.records[0].type eq 18 }">
            <div class="crumbs">
                <div class="main">
                    <a href="http://www.tcl.com">首页</a>
                    &gt;&gt;
                    <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a>
                    &gt;&gt;
                    <a href="#">企业荣誉</a>
                </div>
            </div>

            <div class="about_content">
                <c:forEach items="${result.records }" var="obj">
                    <div class="honor_01">
                        <span class="title">${obj.years }</span>
                        <ul>
                            <li>${obj.content }</li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </c:if>

        <c:if test="${result.records[0].type eq 3 }">
            <div class="crumbs">
                <div class="main">
                    <a href="http://www.tcl.com">首页</a>
                    &gt;&gt;
                    <a href="${pageContext.request.contextPath }/companyInfo/index">关于TCL</a>
                    &gt;&gt;
                    <a href="#">发展历程</a>
                </div>
            </div>

            <div class="about_content">
                <img src="${pictureFont.records[0].webPic}" alt="公司展示图片" class="top"/>
                <div class="devel_details_title">
                    <ul>
                        <c:forEach items="${courseType }" var="obj">
                            <li class="hover">
                                <a href="${pageContext.request.contextPath }/companyInfo/companyInfoCourseList?type=3&name=${obj.id}">${obj.title }</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <c:forEach items="${result.records }" var="obj" varStatus="count">
                    <span class="title">${obj.years }</span>
                    <div class="details_01">
                        <ul>
                            <li>
                                <span class="deta">${obj.title }</span>
                                <span class="des">${obj.content }</span>
                            </li>
                        </ul>
                    </div>
                </c:forEach>
            </div>
        </c:if>
    </body>
</html>
