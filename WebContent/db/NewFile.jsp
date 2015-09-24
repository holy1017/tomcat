<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
		String _DRIVER = "oracle.jdbc.driver.OracleDriver";
		String _URL = "jdbc:oracle:thin:@192.168.0.33:1521/orcl";
		String _ID = "scott";
		String _PW = "test1234";

		Connection cnt = null;

		try {
			Class.forName(_DRIVER);
			cnt = DriverManager.getConnection(_URL, _ID, _PW);
		} catch (Exception e) {
			// TODO: handle exception
			out.print("접속 실패");
			e.printStackTrace();
		}
		if (cnt != null) {
			out.print("접속 성공");
			cnt.close();
		}
	%>
</body>
</html>