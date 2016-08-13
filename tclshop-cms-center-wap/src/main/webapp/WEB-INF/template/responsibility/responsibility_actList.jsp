<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<c:if test="${not empty loadData.records}">
    <c:choose>
        <c:when test="${loadData.records[0].type == 11}">
            <c:forEach items="${loadData.records}" var="act">
                <dl class="pictext_cell y_w92 bor-bott">
                    <dd class="pictext_cell_left">
                        <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}">
                            <img src="${act.pic}" alt="" width="100%" height="100%"/>
                        </a>
                    </dd>
                    <dd class="pictext_cell_right fs28 color_333">
                        <a href="${pageContext.request.contextPath}/societyDuty/societyDutyDetail?id=${act.id}">
                            <p class="pictext_title"><c:out value="${act.title}"/>
                            </p>
                        </a>
                        <p class="abreast fs20">
                            <jsp:setProperty name="dateValue" property="time" value="${act.issueTime * 1000}"/>
                            <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                        </p>
                    </dd>
                </dl>
            </c:forEach>

            <div class="getPages" data-type="${loadData.records[0].type}" data-pageNumber="${loadData.current + 1}" data-listAccount="${loadData.size}" data-total="${loadData.total}"></div>
        </c:when>
        <c:when test="${loadData.records[0].type == 12}">
            <c:forEach items="${loadData.records}" var="fun">
                <li>
                    <p class="abreast text_cell">
                        <a href="${fun.pic}">
                            <span class="text_title fs28"><c:out value="${fun.title}"/></span>
                            <span class="abreast_text fs20">
                                <jsp:setProperty name="dateValue" property="time" value="${fun.issueTime * 1000}"/>
                                <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                            </span>
                        </a>
                    </p>
                </li>
            </c:forEach>

            <div class="getPages1" data-type="${loadData.records[0].type}" data-pageNumber="${loadData.current + 1}" data-listAccount="${loadData.size}" data-total="${loadData.total}"></div>
        </c:when>
        <c:when test="${loadData.records[0].type == 13}">
            <c:forEach items="${loadData.records}" var="vol">
                <li>
                    <p class="abreast text_cell">
                        <a href="${vol.pic}">
                            <span class="text_title fs28"><c:out value="${vol.title}"/></span>
                            <span class="abreast_text text_title fs20">
                                <jsp:setProperty name="dateValue" property="time" value="${vol.issueTime * 1000}"/>
                                <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                            </span>
                        </a>
                    </p>
                </li>
            </c:forEach>

            <div class="getPages2" data-type="${loadData.records[0].type}" data-pageNumber="${loadData.current + 1}" data-listAccount="${loadData.size}" data-total="${loadData.total}"></div>
        </c:when>
        <c:when test="${loadData.records[0].type == 14}">
            <c:forEach items="${loadData.records}" var="report">
                <li class="bor-bott">
                    <a href="${report.pic}">
                        <dl class="file_cell">
                            <dd class="file_cell_left">
                                <img src="../static/common/imgs/xx01.jpg" alt=""/>
                            </dd>
                            <dd class="file_cell_center">
                                <p class="fs30"><c:out value="${report.title}"/></p>
                                <span class="fs22">
                                    <jsp:setProperty name="dateValue" property="time" value="${report.issueTime * 1000}"/>
                                    <fmt:formatDate value="${dateValue}" pattern="yyyy-MM-dd"/>
                                </span>
                            </dd>
                            <dd class="file_cell_right">
                                <span class="icf fs28">&#xe62f;</span>
                            </dd>
                        </dl>
                    </a>
                </li>
            </c:forEach>

            <div class="getMore" data-type="${loadData.records[0].type}" data-pageNumber="${loadData.current + 1}" data-listAccount="${loadData.size}" data-total="${loadData.total}"></div>
        </c:when>
        <c:otherwise></c:otherwise>
    </c:choose>
</c:if>
