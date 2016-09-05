<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>
<c:if test="${not empty newsList }">

	<c:forEach items="${newsList }" var="news">

		<a href="${pageContext.request.contextPath }/news/newsDetails?id=${news.id}">
			<dl class="pictext_cell y_w92 bor-bott">
				<dd class="pictext_cell_left">
					<img src="${news.pic }" alt="" width="100%" height="100%"/>
				</dd>
				<dd class="pictext_cell_right fs28 color_333">
					<p class="pictext_title">${news.title }</p>
					<p class="abreast fs20">
						<span class="abreast_text">${typeName }</span>
						<jsp:setProperty name="dateValue" property="time" value="${news.issueTime * 1000}"/>
						<fmt:formatDate value="${dateValue}" pattern="yyyy.MM.dd"/>
					</p>
				</dd>
			</dl>
		</a>

	</c:forEach>

</c:if>
