<%@page import="com.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="com.BoardDAO" scope="page"></jsp:useBean>
<%
	String name = "", email = "", title = "", content = "";
	String headline = "입력";
	String no = request.getParameter("no");
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="board.css">
<title>게시물 작성</title>
<!-- <link rel="stylesheet" type="text/css" href="board.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var word = new Array("♤", "♠", "♡", "♥", "♧", "♣", "◈", "▣", "◐", "◑",
				"▒", "▤", "▥", "▨", "▦", "♨", "☏", "☎", "※", "☆", "★", "○",
				"●", "◇", "◆", "□", "■", "△", "◁", "▷", "▲", "▼", "◀", "▶",
				"→", "←", "↑", "↓", "^-^", "*^o^*", "-_-;", "o(^^o)", "(⌒ε⌒*)",
				"づ^0^)づ", "(*^.^)♂", "(^_-)~♡", "o(v-v)o", "(づ_ど)", "(º◇º)",
				"ミ^-^ミ");

		for (i = 0; i < word.length; i++) {
			$("#emoticon").append(
					"<a href='javascript:s_word(" + '"' + word[i] + '"' + ")'>"
							+ word[i] + "</a> ");
		}				
	})
	function sword(value) {
		$("#content").val($("#content").val()+value)
	}
</script>
</head>
<body>
	<div id="edit">
		<h3 class="title">게시판 입력/수정</h3>
		<%
			if (no != null) {
				int nonum = Integer.parseInt(no);
				BoardVo brd = dao.getBoard(nonum);
				name = brd.getNAME();
				email = brd.getEMAIL();
				title = brd.getTITLE();
				content = brd.getCONTENT();
				headline = "수정삭제";
			} else {

			}
		%>
		<form action="" id="boardform" name="boardform">
			<input type="hidden" id="menu" name="menu" value="insert" /> <input
				type="hidden" id="no" name="no" value="<%=no%>" />
			<table summary="입력 및 수정">
				<caption>
					게시판
					<%=headline%>화면
				</caption>
				<tr>
					<td>이름:</td>
					<td><input type="text" id="name" name="name" maxlength="10"
						value="<%=name%>" /></td>
					<td>이메일:</td>
					<td><input type="text" id=email name="email" maxlength="30"
						value="<%=email%>" /></td>
				</tr>
				<tr>
					<td>제목:</td>
					<td colspan="3"><input type="text" id="title" name="title"
						maxlength="80" value="<%=title%>" /></td>
				</tr>
				<tr>
					<td colspan="4"><textarea id="content" name="content"><%=content%></textarea>
						<div id="emoticon"></div></td>
				</tr>
				<tr>
					<td>비밀번호:</td>
					<td colspan="3" class="t1"><input type="password" id="pw"
						name="pw" maxlength="10" /><span>현재 게시 내용을 수정할려면 등록한 비밀번호가
							필요</span></td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input type="button" value="등록"
						id="boardInsert" /> <input type="button" value="수정완료"
						id="boardUpdate" /> <input type="button" value="삭제"
						id="boardDelete" /> <input type="button" value="목록보기"
						id="boardList" /> <input type="reset" value="취소" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>