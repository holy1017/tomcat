<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="dt" uri="/WEB-INF/tld/ELfunction.tld"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<%
		Date today = new Date();
		request.setAttribute("now", today);
		if (session.isNew()) {
			session.setAttribute("now", today);

		}
	%>
test
 	${dt:format(now) }
${dt:format(sessionScope.new) } 
</body>
</html>