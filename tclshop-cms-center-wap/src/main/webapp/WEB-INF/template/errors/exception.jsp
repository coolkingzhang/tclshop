<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<title>error</title>
	</head>
	<body>
		exception

		<%Exception ex = (Exception) request.getAttribute("exception");%>
		<H2>
			Exception:
			<%=ex.getMessage()%></H2>

		<%ex.printStackTrace(new java.io.PrintWriter(out));	%>
	</body>
</html>
