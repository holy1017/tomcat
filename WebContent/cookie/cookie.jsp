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
<title>��Ű~~�ȳ�</title>
</head>
<body>
<h3>��Ű ����</h3>
<a href="addtimecookie.jsp">���� ���ӽð��� ��Ű�� �߰�</a>
</body>
</html>