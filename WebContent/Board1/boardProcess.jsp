<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="com.BoardDAO" scope="page"></jsp:useBean>
<jsp:useBean id="vo" class="com.BoardVo" scope="page"></jsp:useBean>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
			String menu = request.getParameter("menu");

			if ("delete".equals(menu) || "update".equals(menu)) {
		String no = request.getParameter("no");
			String pw = request.getParameter("pw");

			int nonum = Integer.parseInt(no);
			if (!dao.isPw(nonum, pw)) {
	%>
	<script type="text/javascript">
		alert("비번 불일치")
		history.go(-1)
	</script>
	<%
		} else {
				if ("delete".equals(menu)) {
					dao.deleteDB(nonum);
				} else if ("update".equals(menu)) {
	%>
	<jsp:setProperty property="NAME" name="vo" param="name" />
	<jsp:setProperty property="EMAIL" name="vo" param="email" />
	<jsp:setProperty property="TITLE" name="vo" param="title" />
	<jsp:setProperty property="CONTENT" name="vo" param="content" />
	<jsp:setProperty property="PW" name="vo" param="pw" />
	<%
		dao.updateDB(vo);
				}
				response.sendRedirect("boardList.jsp");
			}
		} else if ("insert".equals(menu)) {
	%>
	<jsp:setProperty property="NAME" name="vo" param="name" />
	<jsp:setProperty property="EMAIL" name="vo" param="email" />
	<jsp:setProperty property="TITLE" name="vo" param="title" />
	<jsp:setProperty property="CONTENT" name="vo" param="content" />
	<jsp:setProperty property="PW" name="vo" param="pw" />
	<%
		dao.insertDB(vo);
			response.sendRedirect("boardList.jsp");
		}
	%>
</body>
</html>