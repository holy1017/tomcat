<%@page import="com.BoardVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:useBean id="dao" class="com.BoardDAO" scope="page"></jsp:useBean>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#insert").click(function() {
			location.href = "boardEdit.jsp";
		})
	})
	function goPage(no) {
		location.href = "boardEdit.jsp?no=" + no;
	}
</script>
</head>
<body>
	<div id="list">
		<h3 class="title">게시판 목록 표시 프로그램</h3>
		<%
			List<BoardVo> list = dao.getBoardList();
			int counter = list.size();
			int row = 0;
		%>
		<div class="elet tr">
			조회된 게시판 수:<%=counter%></div>
		<table summary="게시판리스트">
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
					if (counter > 0) {
						for (BoardVo vo : list) {
				%>
				<tr>
					<td class="tc"><%=vo.getNO()%></td>
					<td class="tc"><a href="javascript:goPage(<%=vo.getNO()%>)"><%=vo.getTITLE()%></a>
					</td>
					<td class="tc"><%=vo.getNAME()%></td>
					<td class="tc"><%=vo.getREGDATE()%></td>
					<td class="tc"><%=vo.getEMAIL()%></td>
				</tr>
				<%
					}
					} else {
				%>
				<tr>
					<td colspan="5" class="tc">없음</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<div class="elet tr">
			<input id="insert" type="button" value="게시물 등록" />
		</div>
	</div>
</body>
</html>