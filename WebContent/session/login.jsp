<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>login</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>
<body>
	<form action="sessionlogin.jsp" method="post">
		<table border="1">
			<tr>
				<td class="label"><label for="id">���̵�</label></td>
				<td class="content"><input type="email" name="id" id="id"
					maxlength="50" placeholder="ex@ex.ex" autofocus="autofocus"
					required="required" /></td>
			</tr>
			<tr>
				<td class="label"><label for="pw">���</label></td>
				<td class="content"><input type="password" name="pw" id="pw"
					placeholder="6~16�ڸ�" maxlength="16" required="required" /></td>
			</tr>
			<tr>
				<td class="button" colspan="2"><input type="submit" value="�α���" /><input
					type="reset" value="�ٽ��Է�" /></td>
			</tr>
		</table>
	</form>
</body>
</html>