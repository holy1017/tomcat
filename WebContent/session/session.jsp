<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<h3>���� ����</h3>
	<%
		session.setAttribute("id", "gagagag");
		session.setAttribute("name", "�ĸ�ж�����");
	%>
	<h3>���� ��ȸ</h3>
	<p>
		���� getId:<%=session.getId()%></p>
	<%
		String formatDate = new SimpleDateFormat("yyyy�� MM�� dd��").format(session.getCreationTime());
	%>
	<p>
		���� getCreationTime:<%=formatDate%></p>
	<h3>���ǵ�~</h3>
	<table>
		<%
			Enumeration<String> e = session.getAttributeNames();
			out.println("<tr><th>name</th><th>value</th></tr>");
			while (e.hasMoreElements()) {
				String name = e.nextElement();
				String value = (String) session.getAttribute(name);
				out.println("<tr>");
				out.println("<td>" + name + "</td>");
				out.println("<td>" + value + "</td>");
				out.println("</tr>");
			}
		%>
	</table>
	<h3>���� �ʱ�ȭ</h3>
	<p>
		<%
			session.invalidate();
		%>
	</p>


</body>
</html>