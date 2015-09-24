<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Calendar day = Calendar.getInstance();

	StringBuffer sb = new StringBuffer();
	sb.append(day.get(Calendar.YEAR) + "-");
	sb.append(day.get(Calendar.MONTH) + 1 + "-");
	sb.append(day.get(Calendar.DAY_OF_MONTH) + " ");

	Cookie ck = new Cookie("lastconnnect", sb.toString());
	ck.setMaxAge(10);
	response.addCookie(ck);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키 추가</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<h3>현재시간 쿠키로 저장</h3>
	<a href="getcookie.jsp">쿠키조회</a>
</body>
</html>