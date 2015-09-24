<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String menu = request.getParameter("menu");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
<center>
	<table width="900" height="530" border="1">
		<!-- top start -->
		<tr>
			<td colspan="2" width="900" height="80">
			<jsp:include page="top.jsp" flush="false" /></td>
		</tr>
		<!-- top end   -->
		<!-- body start -->
		<tr>
			<!-- 메뉴 시작 -->
			<td width="250" height="400">
			<jsp:include page="menu.jsp" flush="false" />
			</td>
			<!-- 메인화면 시작 -->
			<td width="650" height="400">
			<%	if(menu==null || "main".equals(menu)){	%>
			<jsp:include page="main.jsp" flush="flase" />
			<%}	else if("board".equals(menu)){%>
			<jsp:include page="board.jsp" flush="flase" />
			<%} %>
			</td>
		</tr>
		<!-- body end   -->
		<!-- bottom start -->
		<tr>
			<td colspan="2" width="900" height="50">
			<jsp:include page="bottom.jsp" flush="false" /></td>
		</tr>
		<!-- bottom end   -->
	</table>
</center>
</body>

</html>