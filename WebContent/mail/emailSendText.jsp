<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<jsp:useBean id="evo" class="vo.EmailVO"></jsp:useBean>
<<jsp:useBean id="email" class="email.SimpleEmailSend"></jsp:useBean>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title></title>

<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="./image/icon.png" />
<link rel="apple-touch-icon" href="./image/icon.png" />
<!-- 모바일 웹 페이지 설정 끝 -->

<!--[if lt IE 9]>
		<script src="./js/html5shiv.js"></script>
		<![endif]-->
</head>
<body>
	<%	request.setCharacterEncoding("UTF-8");	%>
	<jsp:setProperty property="*" name="evo"/>
	<jsp:setProperty property="formEmailSend" name="email" value="<%=evo %>"/>
	
	<%
		String result = email.getResult();
		if(result.equals("success")){
	%>
	<div>정상적으로 메일 발송이 완료되었습니다.</div>
	<% }else{ %>
		<script type="text/javascript">
		alert("문제가 있어 메일 발송에 실패하였습니다\n 다시 확인해 주세요.");
		history.go(-1);
		</script>
	<%} %>
</body>
</html>