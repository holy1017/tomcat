<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Cookie[] cks = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쿠키 보기</title>
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
				for (Cookie ck : cks) {
					out.print("<tr>");
					out.println("<td>" + ck.getName() + "</td>");
					out.println("<td>" + ck.getValue() + "</td>");

					out.print("</tr>");
				}
			}
		%>
	</table>
</body>
</html>