<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="dateValue" class="java.util.Date"/>

<c:if test="${not empty investorList }">
	
	<c:forEach items="${investorList }" var="investor">
		<li class="bor-bott">
			<a href="${investor.url }">
				<dl class="file_cell">
					<dd class="file_cell_left"><img src="${pageContext.request.contextPath }/static/common/imgs/xx01.jpg" alt=""/></dd>
					<dd class="file_cell_center">
						<p class="fs30">${investor.title }</p>
						<span class="fs22">
							<jsp:setProperty name="dateValue" property="time" value="${investor.issueTime * 1000}"/>
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

</c:if>
