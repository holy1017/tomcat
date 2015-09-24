<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="com.board.BoardDAO" scope="page" />
<jsp:useBean id="vo" class="com.board.BoardVO" scope="page" />
<!DOCTYPE html>
<html lang="ko">
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		
		<title> </title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="./image/icon.png" />
		<link rel="apple-touch-icon" href="./image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		
		<!--[if lt IE 9]>
		<script src="./js/html5shiv.js"></script>
		<![endif]-->
</head>
<body>
<% 
	//한글 처리를 위해 문자 인코딩 지정
	request.setCharacterEncoding("UTF-8");

	//등록(inser), 수정(udpate), 삭제(delete) 중 하나를 저장
	String menu=request.getParameter("menu");
	
	//등록 또는 수정 처리 모듈
	if(menu.equals("delete")||menu.equals("update")){
		String no=request.getParameter("no");
		String passwd=request.getParameter("passwd");
		
		int nonum=Integer.parseInt(no);
		//데이터베이스 자바빈즈에 구현된 메소드 isPasswd()로 id와 암호가 일치하는지 확인
		if(!dao.isPasswd(nonum, passwd)){		
%>
		<script type="text/javascript">
			alert("비밀번호가 일치하지 않습니다.");
			 history.go(-1);
		</script>
		
<%
		}else{
			if(menu.equals("delete")){
				dao.deleteDB(nonum);
			}else if(menu.equals("update")){
				
%>

		<jsp:setProperty name="vo" property="no"/>
		<jsp:setProperty name="vo" property="name"/>
		<jsp:setProperty name="vo" property="title"/>
		<jsp:setProperty name="vo" property="email"/>
		<jsp:setProperty name="vo" property="content"/>
		
<%
			dao.updateDB(vo);
			} //기능 수행 후 다시 게시 목록 보기로 이동
		response.sendRedirect("listBoard.jsp");
		}
%>		

<%
	}else if(menu.equals("insert")){
%>
	<jsp:setProperty  name="vo" property="name"/>
	<jsp:setProperty  name="vo" property="title"/>
	<jsp:setProperty  name="vo" property="email"/>
	<jsp:setProperty  name="vo" property="content"/>
	<jsp:setProperty  name="vo" property="passwd"/>
<%
	dao.insertDB(vo);
	//기능 수행 후, 다시 게시 목록보기로 이동
	response.sendRedirect("listBoard.jsp");
	}
%>
<form id="boardform" name="boardform">


</form>
</body>
</html>