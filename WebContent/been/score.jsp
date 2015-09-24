<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<jsp:useBean id="sc" class="com.been.ScoreBeen" scope="page"></jsp:useBean>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
<p><%=request.getParameter("name") %></p>
<p><%=request.getParameter("point") %></p>
<jsp:setProperty property="name" name="sc"/>
<jsp:setProperty property="point" name="sc"/>
<h3>출력</h3>
<jsp:getProperty property="name" name="sc"/>
<jsp:getProperty property="point" name="sc"/>
<jsp:getProperty property="grade" name="sc"/>
</body>
</html>