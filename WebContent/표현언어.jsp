<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <script type="text/javascript"></script>
</head>
<body>
<%
request.setAttribute("uni", "adfasㅁㄴㅇㄻㄴㄹㅇ");
application.setAttribute("name", "ㅁㅎㅁㄴ");
%>
<table>
<tr>
	<td></td>
	<td>${pageContext.request.contextPath }</td>
</tr>
<tr>
	<td></td>
	<td>${requestScope.uni }</td>
</tr>
<tr>
	<td></td>
	<td>${requestScope['uni'] }</td>
</tr>
<tr>
	<td></td>
	<td>${applicationScope.name}</td>
</tr>
<tr>
	<td></td>
	<td></td>
</tr>
<tr>
	<td></td>
	<td></td>
</tr>
</table>
</body>
</html>