<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.board.*" %>
 <jsp:useBean id="dao" class="com.board.BoardDAO" scope="page" />
 <%
 
 	String name="", email="", title="", content="";
 	String headline= "입력";
 	
 	String no=request.getParameter("no");
 
 %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		
		<title>게시판 기본 예제: 게시판 폼 작성 </title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="../image/icon.png" />
		<link rel="apple-touch-icon" href="../image/icon.png" />
		<!-- 모바일 웹 페이지 설정 끝 -->
		
		<!--[if lt IE 9]>
		<script src="../js/html5shiv.js"></script>
		<![endif]-->
		<link rel="stylesheet" type="text/css" href="/JDBCProgramming/css/board.css" />
		<script type="text/javascript" src="/JDBCProgramming/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="/JDBCProgramming/js/board.js"></script>
		<script type="text/javascript">
			$(function(){
		var word = new Array("♤","♠","♡","♥","♧","♣","◈","▣","◐","◑","▒","▤","▥","▨","▦","♨","☏","☎","※",
				"☆","★","○","●","◇","◆","□","■","△","◁","▷","▲","▼","◀","▶","→","←","↑","↓","^-^","*^o^*",
				"-_-;","o(^^o)","(⌒ε⌒*)","づ^0^)づ","(*^.^)♂","(^_-)~♡","o(v-v)o","(づ_ど)","(º◇º)","ミ^-^ミ");
				 
	for(i=0;i<word.length;i++){
		$("#emoticon").append("<a href='javascript:s_word("+'"' +word[i]+'"' +")'>"+word[i]+"</a> ");
	} 
	$("#boardInsert,#boardUpdate,#boardDelete").hide();
	
	var no=<%=no%>;
	if(no!=null){
		$("#boardUpdate,#boardDelete").show();
	}else{
		$("#boardInsert").show();
	}
	
	$("#boardInsert").click(function(){
		if(!chkSubmit($('#name'),"이름을")) return;
		else if(!chkSubmit($('#email'),"이메일을")) return;
		else if(!chkSubmit($('#title'),"제목을")) return;
		else if(!chkSubmit($('#content'),"내용을")) return;
		else if(!chkSubmit($('#passwd'),"비밀번호를")) return;
		else{
			$("#boardform").attr({
				"method":"post",
				"action":"processboard.jsp"
			});
			$("#boardform").submit();
		}
	})
	
	$("#boardList").click(function(){
		location.href="listBoard.jsp";
	})
	$("#boardUpdate").click(function(){
		if(!chkSubmit($('#email'),"이름을")) return;
		else if(!chkSubmit($('#title'),"제목을")) return;
		else if(!chkSubmit($('#content'),"내용을")) return;
		else if(!chkSubmit($('#passwd'),"비밀번호를")) return;
		else{
			$("#menu").val("update");
			$("#boardform").attr({
				"method":"post",
				"action":"processboard.jsp"
			});
			$("#boardform").submit();
		}
	})
		$("#boardDelete").click(function(){
		if(!chkSubmit($('#passwd'),"비밀번호를")) return;
		else{
				
			$("#menu").val("delete");
			$("#boardform").attr({
				"method":"post",
				"action":"processboard.jsp"
			});
			$("#boardform").submit();
		}
	})
	
});
			
		function s_word(value){
			$("#content").val($("#content").val()+value);
		}
		
		
		</script>

</head>
<body>
		<div id="edit">
			<h3 class="title">게시판 입력/수정/삭제 프로그램 </h3>
			<%
				if(no!=null){
					
					int nonum= Integer.parseInt(no);
					BoardVO brd=dao.getBoard(nonum);
					name= brd.getName();
					email =brd.getEmail();
					title=brd.getTitle();
					content =brd.getContent();
					headline ="수정 삭제";
				}
			
			
			%>
			<form id="boardform" name="boardform">
				<input type="hidden" name="menu" id="menu" value="insert">
				<input type="hidden" name="no" id="no" value="<%=no%>">
				
				<table summary="입력 및 수정 폼 ">
					<caption>게시판<%=headline %>화면</caption>
					<tr>
						<td>이름:</td>
						<td><input type="text" id="name" name="name" maxlength="10" value="<%=name %>" ></td>
						<td>전자메일:</td>
						<td><input type="email" id="email" name="email" maxlength="30" value="<%=email %>"></td>
					</tr>
					<tr>
						<td>제목:</td>
						<td colspan="3"><input type="text" id="title" name="title" maxlength="80" value="<%=title %>"></td>
					</tr>
					<tr>
						<td colspan="4">
						<textarea id="content" name="content"><%=content %></textarea>
						<div id="emoticon"></div>
						</td>
					</tr>
					<tr>
						<td>비밀번호:</td>
						<td colspan="3" class="t1"><input type="password" id="passwd" name="passwd" maxlength="10">
						<span>현재 게시 내용을 수정 또는 삭제하려면 이미 등록한 비밀번호가 필요합니다.</span>
						</td>
					</tr>
					<tr>
						<td colspan="4" align="center">
							<input type="button" value="등록" id="boardInsert">
							<input type="button" value="수정완료" id="boardUpdate">
							<input type="button" value="삭제" id="boardDelete">
							<input type="button" value="목록보기" id="boardList">
							<input type="reset" value="취소">
						</td>
					</tr>
				</table>
			</form>
		</div>
</body>
</html>