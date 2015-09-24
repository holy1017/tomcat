<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="sc" class="com.been.ScoreBeen" scope="page"></jsp:useBean>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� �Է�</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#button").click(function() {
/* 			$("#form").attr({
				"method" : "post",
				"action" : "score.jsp"
			})
			$("#form").submit() */
			var para = $("#form").serialize();
			$.ajax({
				type : "post",
				url : "score.jsp",
				data : para,
				success : function(data) {
					$("#result").html(data)
				},
				error : function(data, status) {
					alert("error:" + status)
				}
			})
		})
	})
</script>
</head>
<body>
	<h3>�̸��� ������ �Է�</h3>
	<form action="score.jsp" method="post" name="form" id="form">
		<table>
			<!-- 		<tr>
			<th colspan="2">�̸��� ������ �Է�</th>
		</tr> -->
			<tr>
				<td><label for="name">�̸�</label></td>
				<td><input name="name" id="name" type="text"
					required="required" autofocus="autofocus" /></td>
			</tr>
			<tr>
				<td><label for="point"></label>����</td>
				<td><input name="point" id="point" type="number" min="0" max="100" maxlength="3"
					required="required" autofocus="autofocus" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="�Է¿Ϸ�" id="button" /><input
					type="reset" value="�ٽ��Է�" /></td>
			</tr>
		</table>
	</form>
	<div id="result"></div>
</body>
</html>