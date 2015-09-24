<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%-- 	<%@page import="com.been.ScoreBeen" %> --%>
<jsp:useBean id="sc" class="com.been.ScoreBeen" scope="page"></jsp:useBean>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>been</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<h3>자바빈</h3>
	<%
		
	%>
<%-- 	<%
		//ScoreBeen sc = new ScoreBeen();
		sc.setName("으어어어어어");
		sc.setPoint(31541);
	%> --%>
	<jsp:setProperty property="name" name="sc" value="ㅎㅁㄱㅎㅎ" />
	<jsp:setProperty property="point" name="sc" value="13541" />
	<table>
		<tr>
			<td>이름</td>
			<td>
<%-- 				<%
					out.print(sc.getName());
				%> --%>
				<jsp:getProperty property="name" name="sc"/>
			</td>
		</tr>
		<tr>
			<td>포인트</td>
			<td>
<%-- 				<%
					out.print(sc.getPoint());
				%> --%>
				<jsp:getProperty property="point" name="sc"/>
			</td>
		</tr>
	</table>
</body>
</html>