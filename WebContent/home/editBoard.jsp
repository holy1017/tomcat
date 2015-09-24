<%@page import="com.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="com.BoardDAO" scope="page"></jsp:useBean>
<%
	String name = "", email = "", title = "", content = "";
	String headline = "�Է�";
	String no = request.getParameter("no");
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="board.css">
<title>�Խù� �ۼ�</title>
<!-- <link rel="stylesheet" type="text/css" href="board.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		var word = new Array("��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
				"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
				"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��",
				"��", "��", "��", "��", "^-^", "*^o^*", "-_-;", "o(^^o)", "(�ҥ��*)",
				"��^0^)��", "(*^.^)��", "(^_-)~��", "o(v-v)o", "(��_��)", "(���ި�)",
				"��^-^��");

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
		<h3 class="title">�Խ��� �Է�/����</h3>
		<%
			if (no != null) {
				int nonum = Integer.parseInt(no);
				BoardVo brd = dao.getBoard(nonum);
				name = brd.getNAME();
				email = brd.getEMAIL();
				title = brd.getTITLE();
				content = brd.getCONTENT();
				headline = "��������";
			} else {

			}
		%>
		<form action="" id="boardform" name="boardform">
			<input type="hidden" id="menu" name="menu" value="insert" /> <input
				type="hidden" id="no" name="no" value="<%=no%>" />
			<table summary="�Է� �� ����">
				<caption>
					�Խ���
					<%=headline%>ȭ��
				</caption>
				<tr>
					<td>�̸�:</td>
					<td><input type="text" id="name" name="name" maxlength="10"
						value="<%=name%>" /></td>
					<td>�̸���:</td>
					<td><input type="text" id=email name="email" maxlength="30"
						value="<%=email%>" /></td>
				</tr>
				<tr>
					<td>����:</td>
					<td colspan="3"><input type="text" id="title" name="title"
						maxlength="80" value="<%=title%>" /></td>
				</tr>
				<tr>
					<td colspan="4"><textarea id="content" name="content"><%=content%></textarea>
						<div id="emoticon"></div></td>
				</tr>
				<tr>
					<td>��й�ȣ:</td>
					<td colspan="3" class="t1"><input type="password" id="pw"
						name="pw" maxlength="10" /><span>���� �Խ� ������ �����ҷ��� ����� ��й�ȣ��
							�ʿ�</span></td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input type="button" value="���"
						id="boardInsert" /> <input type="button" value="�����Ϸ�"
						id="boardUpdate" /> <input type="button" value="����"
						id="boardDelete" /> <input type="button" value="��Ϻ���"
						id="boardList" /> <input type="reset" value="���" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>