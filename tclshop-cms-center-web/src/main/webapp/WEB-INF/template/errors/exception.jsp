<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>error</title>
</head>
<body>
	exception

	<%
	Exception ex = (Exception) request.getAttribute("exception");%>
	<H2>
		Exception:
		<%=ex.getMessage()%></H2>
	<P />
	<%
		ex.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>

