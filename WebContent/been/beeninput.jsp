<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="sc" class="com.been.ScoreBeen" scope="page"></jsp:useBean>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>점수 입력</title>
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
	<h3>이름과 점수를 입력</h3>
	<form action="score.jsp" method="post" name="form" id="form">
		<table>
			<!-- 		<tr>
			<th colspan="2">이름과 점수를 입력</th>
		</tr> -->
			<tr>
				<td><label for="name">이름</label></td>
				<td><input name="name" id="name" type="text"
					required="required" autofocus="autofocus" /></td>
			</tr>
			<tr>
				<td><label for="point"></label>점수</td>
				<td><input name="point" id="point" type="number" min="0" max="100" maxlength="3"
					required="required" autofocus="autofocus" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="입력완료" id="button" /><input
					type="reset" value="다시입력" /></td>
			</tr>
		</table>
	</form>
	<div id="result"></div>
</body>
</html>