<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	
	
	String dbid = "test";
	String dbpw = "test";
	String rt = "";

	if (dbid.equals(id) && dbpw.equals(pw)) {
		session.setAttribute("id", id);
		response.sendRedirect("logout.jsp");
%>

<%
	} else {
%>
<script type="text/javascript">
	alert("ºÒÀÏÄ¡");
	history.go(-1);
</script>
<%
	response.sendRedirect("login.jsp");
	}
%>