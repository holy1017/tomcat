<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Cookie ck = new Cookie("id", "java");
	ck.setMaxAge(60*5);
	response.addCookie(ck);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키~~냠냠</title>
</head>
<body>
<h3>쿠키 저장</h3>
<a href="addtimecookie.jsp">현재 접속시각을 쿠키로 추가</a>
</body>
</html>