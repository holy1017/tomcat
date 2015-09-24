<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.board.BoardVO" %>
<jsp:useBean id="dao" class="com.board.BoardDAO" scope="page"/>
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
<link rel="stylesheet" type="text/css" href="/JDBCProgramming/css/board.css"/>
<script type="text/javascript" src="/JDBCProgramming/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#insert").click(function(){
			location.href="editBoard.jsp";
		})
	});
	
	function goPage(no){
		location.href="editBoard.jsp?no="+no;
	}
</script>
</head>
<body>
<div id="List">
	<h3 class="title">게시판 목록 프로그램</h3>
<%
	//게시 목록을 위한 배열리스트르 자바빈즈를이용하여 확보
	List<BoardVO> list=dao.getBoardList();
	int counter=list.size();
	int row=0;
%>	
<div class="eLet tr">조회된 게시판 목록수 :<%=counter %></div>
<table summary="게시판 리스트">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>전자메일</th>
		</tr>
	</thead>
	<tbody>
	<%
		if(counter>0){
			for(BoardVO vo:list){
	%>
				<tr>
					<!-- 수정과 삭제를 위한 링크로 no를 전송 -->
					<td class="tc"><%= vo.getNo() %></td>
					<td><a href="javascript:goPage(<%=vo.getNo() %>)"><%=vo.getTitle()%></a>
					<td class="tc"><%= vo.getName() %></td>
					<td class="tc"><%= vo.getRegdate() %></td>
					<td class="tc"><%= vo.getEmail() %></td>
				</tr>
	
	<% 		}
		}else{
	%>
				<tr>
					<td colspan="5" class="tc">
						게시글이 존재하지 않습니다.</td></tr>
	<% } %>
	</tbody>
</table>
<div class="elet tr">
	<input type="button" value="게시등록" id="insert">
</div>
</div>

</body>
</html>