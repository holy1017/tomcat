<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="vo" class="com.email.EmailVO"></jsp:useBean>
<jsp:useBean id="em" class="com.email.EmailSend"></jsp:useBean>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:setProperty property="*" name="vo" />

	<%=vo.getForemail() %>
	<%=vo.getForname() %>
	<%=vo.getMsg() %>
	<%=vo.getMyemail() %>
	<%=vo.getMyname() %>
	<%=vo.getTitle() %>
	<%-- <jsp:setProperty property="Test" name="em" /> --%>
	<jsp:setProperty property="emailSend" name="em" value="<%=vo%>" />
	<%
		String rt = em.getResult();
		if ("success".equals(rt)) {
	%>
	<div id="">정상</div>
	<%
		} else {
	%>
	<div id="">비정상</div>

<!-- 	<script type="text/javascript">
		alert("비정상")
		history.go(-1)
	</script> -->
	<%
		}
	%>
</body>
</html>