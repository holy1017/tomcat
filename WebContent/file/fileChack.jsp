<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String title = request.getParameter("title");
	String filename1 = request.getParameter("filename1");
	String filename2 = request.getParameter("filename2");
%>
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
	<div id=""><%=name%>
	</div>
	<div id=""><%=title%>
	</div>
	<%
		if (filename1 != null) {
	%>
	<div id="">
		<a href="fileUplaod/<%=filename1%>"><%=filename1%></a> <img
			src="fileUplaod/<%=filename1%>" alt="" />
	</div>
	<%
		}
		if (filename2 != null) {
	%>
	<div id="">
		<a href="fileUplaod/<%=filename2%>"><%=filename2%></a> <img
			src="fileUplaod/<%=filename2%>" alt="" />
	</div>
	<%
		}
	%>
</body>
</html>