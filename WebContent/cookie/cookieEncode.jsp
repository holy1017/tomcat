<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Cookie ck;

	ck = new Cookie("id", URLEncoder.encode("한글", "EUC-KR"));
	/* ck.setMaxAge(60 * 5); */
	response.addCookie(ck);


	ck = new Cookie("name", URLEncoder.encode("한글~~~", "EUC-KR"));
	/* 	ck.setMaxAge(60 * 5); */
	response.addCookie(ck);
%>
<%
	Cookie[] cks = request.getCookies();
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
	<h3>쿠키들~</h3>
	<table>
		<%
			if (cks == null) {
				out.print("no cookie");

			} else {
				out.print("<tr><th>name</th><th>value</th></tr>");
				for (Cookie c : cks) {
					out.print("<tr>");
					out.println("<td>" + c.getName() + "</td>");
					out.println("<td>" + c.getValue() + "</td>");
					out.print("</tr>");
				}
			}
		%>
	</table>
	<h3>쿠키들~</h3>
	<table>
		<%
			if (cks == null) {
				out.print("no cookie");

			} else {
				out.print("<tr><th>name</th><th>value</th></tr>");
				for (Cookie c : cks) {
					out.print("<tr>");
					out.println("<td>" + c.getName() + "</td>");
					out.println("<td>" + URLDecoder.decode(c.getValue(), "EUC-KR") + "</td>");
					out.print("</tr>");
				}
			}
		%>
	</table>
</body>
</html>