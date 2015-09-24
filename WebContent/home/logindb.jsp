<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="db.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript">
	//alert("go");
	/* history.go(-1); */
</script>
<%
	request.setCharacterEncoding("EUC-KR");
	/* 	String _DRIVER = "oracle.jdbc.driver.OracleDriver";
		Class.forName(_DRIVER); */

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//Enumeration<String> en=request.getParameterNames();

	//out.print(id+pw);
	%>
<%-- 	<script type="text/javascript">
		alert("rs:" +
	<%=id%>+<%=pw%>
		);
		/* history.go(-1); */
	</script> --%>
	<%
	/* 	String id = "test";
		String pw = "test1234"; */
	DbConnection db = DbConnection.getDbConnection();
	Connection con = null;
	PreparedStatement st = null;
	ResultSet rs = null;
	StringBuilder sb = new StringBuilder();
	String name = null;
	sb.append("SELECT mem_name FROM AJAX_MEMBER where mem_id=? and mem_pw=?");
%>
<%-- <script type="text/javascript">
	alert("rs:" +
<%=name%>
	);
	/* history.go(-1); */
</script> --%>
<%
	try {
		con = db.getConnection();
		st = con.prepareStatement(sb.toString());
		st.setString(1, id);
		st.setString(2, pw);
		rs = st.executeQuery();
		//		System.out.println(rs.getRow());

		if (rs.next()) {
			name = rs.getString("mem_name");

		}
%>
<%-- <script type="text/javascript">
	alert("rs:" +
<%=name%>
	);
	/* history.go(-1); */
</script> --%>
<%
	} catch (SQLException e) {
		e.printStackTrace();
		out.print("SQLException:" + sb.toString());
	} catch (Exception e) {
		e.printStackTrace();
		out.print("Exception:");
	}
%>
<%-- <script type="text/javascript">
	alert("name:" +
<%=name%>
	);
	history.go(-1);
</script> --%>
<%
	if (name != null) {
		out.print("이름:" + name);
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		response.sendRedirect("logout.jsp");
	} else {
%>
<script type="text/javascript">
	alert("불일치");
	history.go(-1);
</script>
<%
	response.sendRedirect("login.jsp?login=false");
	}
%>