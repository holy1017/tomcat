<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="email.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<form action="" id="emailform" name="email">
		<table>
			<colgroup>
				<col></col>
			</colgroup>
			<thead>
				<tr>
					<td colspan="4" class="td"><h3>이메일보내기</h3></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>받는사람주소</td>
					<td><input class="email" type="text" id="foremail" name="foremail"  size="30"
						maxlength="50" /></td>
					<td>받는사람이름</td>
					<td><input class="name" type="text" id="forname" name="forname" /></td>
				</tr>
				<tr>
					<td>보내는사람주소</td>
					<td><input class="email" type="text" id="myemail" name="myemail"  size="30"
						maxlength="50" /></td>
					<td>보내는사람이름</td>
					<td><input class="name" type="text" id="myname" name="myname"  /></td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="3"><input type="text" id="title" name="title"
						size="89" maxlength="80" /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3"><textarea name="msg" id="msg" cols="90"
							rows="10"></textarea></td>
				</tr>
				<tr>
					<td colspan="4" class="td"><input type="button" value="이메일보내기" id="send" /><input
						type="reset" value="다시쓰기"/></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>