<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		Cookie c = new Cookie("id", "java");
		response.addCookie(c);

		Cookie[] cs = request.getCookies();
		if (cs != null) {
			for (Cookie ck : cs) {
				if (ck.getName().equals("id")) {
					out.print(ck.getValue());
				}
			}
		}
	%>
	<hr />
	${cookie.id.value }

	<jsp:useBean id="user" class="member.User"></jsp:useBean>
	<jsp:setProperty property="uname" name="user" value="홍길동" />
	<jsp:setProperty property="uid" name="user" value="java" />
	<jsp:setProperty property="num" name="user" value="1234" />
	
	<%=user.getUname() %>
	${user.uname }<br>
	${user.uid }<br>
	${user.num }<br>
	
	<%

	%>
</body>
</html>