<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>技记</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<h3>技记 积己</h3>
	<%
		session.setAttribute("id", "gagagag");
		session.setAttribute("name", "颇葛ば恩窃肉");
	%>
	<h3>技记 炼雀</h3>
	<p>
		技记 getId:<%=session.getId()%></p>
	<%
		String formatDate = new SimpleDateFormat("yyyy斥 MM岿 dd老").format(session.getCreationTime());
	%>
	<p>
		技记 getCreationTime:<%=formatDate%></p>
	<h3>技记甸~</h3>
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
	<h3>技记 檬扁拳</h3>
	<p>
		<%
			session.invalidate();
		%>
	</p>


</body>
</html>