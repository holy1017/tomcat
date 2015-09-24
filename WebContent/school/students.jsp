<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.*"%>
<%@page import="java.sql.*"%>
<%@page import="db.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<%
		StringBuilder sql = new StringBuilder();

		sql.append("	SELECT    ");
		sql.append("       S_NAME,           ");
		sql.append("       SD_NUM,           ");
		sql.append("       SD_NAME,          ");
		sql.append("       SD_ID,            ");
		sql.append("       SD_PASSWD,        ");
		sql.append("       SD_BIRTH,         ");
		sql.append("       SD_PHONE,         ");
		sql.append("       SD_ADDRESS,       ");
		sql.append("       SD_EMAIL,         ");
		sql.append("       SD_DATE           ");
		sql.append("  FROM SUBJECT           ");
		sql.append("  INNER JOIN STUDENT     ");
		sql.append("  ON (SUBJECT.S_NUM =    ");
		sql.append("  STUDENT.S_NUM)         ");

		DbConnection db = DbConnection.getDbConnection();
	%>
	<table>
		<tr>
			<td>�а��̸�</td>
			<td>�л���ȣ</td>
			<td>�̸�</td>
			<td>���̵�</td>
			<td>���</td>
			<td>����</td>
			<td>��ȭ��ȣ</td>
			<td>�ּ�</td>
			<td>�̸���</td>
			<td>���Գ���</td>
		</tr>
		<%
		//out.println(db.getResultSql(sql.toString(), "javauser", "java1234"));
 		try{
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/javauser");
			Connection con = ds.getConnection();

			//out.println(con);		
			
			out.println(db.getResultSql(sql.toString(), con));
			
		}catch(Exception e){
			
			out.println(e.getMessage());	
		} 
		
		%>
	</table>
</body>
</html>