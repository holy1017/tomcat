<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>세션</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<h3>세션 생성</h3>
	<%
		session.setAttribute("id", "gagagag");
		session.setAttribute("name", "파모ㅠ람함흄");
	%>
	<h3>세션 조회</h3>
	<p>
		세션 getId:<%=session.getId()%></p>
	<%
		String formatDate = new SimpleDateFormat("yyyy년 MM월 dd일").format(session.getCreationTime());
	%>
	<p>
		세션 getCreationTime:<%=formatDate%></p>
	<h3>세션들~</h3>
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
	<h3>세션 초기화</h3>
	<p>
		<%
			session.invalidate();
		%>
	</p>


</body>
</html>