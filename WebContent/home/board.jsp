<%@page import="com.BoardVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="dao" class="com.BoardDAO" scope="page"></jsp:useBean>
<!-- <!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main</title>
<link rel="stylesheet" type="text/css" href="board.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#insert").click(function() {
			location.href = "editBoard.jsp";
		})
		function goPage(no) {
			location.href = "editBoard.jsp?no=" + no;
		}
	})
</script>
<!-- </head>
<body> -->
<!-- 	<table border="1" borderColor="green" width="100%" height="100%">
		<tr>
			<td align="center">�Խ���</td>
			 valign="top"
		</tr>
	</table> -->
	<div id="list">
		<h3 class="title">�Խ��� ��� ǥ�� ���α׷�</h3>
		<%
			List<BoardVo> list = dao.getBoardList();
			int counter = list.size();
			int row = 0;
		%>
		<div class="elet tr">
			��ȸ�� �Խ��� ��:<%=counter%></div>
		<table summary="�Խ��Ǹ���Ʈ"  border="1" borderColor="green" width="100%" height="100%">
			<!-- <thead> -->
				<tr>
					<th>��ȣ</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>�ۼ���</th>
					<th>���ڸ���</th>
				</tr>
			<!-- </thead>
			<tbody> -->
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
					<td colspan="5" class="tc">����</td>
				</tr>
				<%
					}
				%>
			<!-- </tbody> -->
		</table>
		<div class="elet tr">
			<input id="insert" type="button" value="�Խù� ���" />
		</div>
	</div>
<!-- </body>
</html> -->