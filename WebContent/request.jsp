<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	/* response.setContentType("text/xml"); */
	String id = request.getParameter("id");

	out.print("<table border='1'>");
	out.print("<tr>               ");
	out.print("	<th>번호</th>       ");
	out.print("	<th>수강기록</th>     ");
	out.print("	<th>강의실</th>      ");
	out.print("</tr>              ");
	out.print("<tr>               ");
	out.print("	<td>1</td>        ");
	out.print("	<td>자바</td>       ");
	out.print("	<td>310</td>      ");
	out.print("</tr>              ");
	out.print("<tr>               ");
	out.print("	<td>2</td>        ");
	out.print("	<td>JSP</td>      ");
	out.print("	<td>153</td>      ");
	out.print("</tr>              ");
	out.print("<tr>               ");
	out.print("	<td>3</td>        ");
	out.print("	<td>AJAX</td>     ");
	out.print("	<td>531</td>      ");
	out.print("</tr>              ");
	out.print("</table>           ");
%>
<table border="1" width='200'>
	<tr>
	<td>id</td>
		<td><%=id %></td>
	</tr>
</table>
