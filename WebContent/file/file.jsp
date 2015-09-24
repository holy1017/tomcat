<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 업로드</title>
<link rel="stylesheet" type="text/css" href="file.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="file.js"></script>
<script type="text/javascript"></script>
</head>
<body>

	<form action="" name="upload" id="upload" enctype="multipart/form-data">
		<table>
			<tr>
				<th colspan="2">파일 업로드</th>
			</tr>
			<tr>
				<td class="td">올린사람</td>
				<td><input type="text" name="name" id="name" class="input"
					placeholder="이름" required="required" /></td>
			</tr>
			<tr>
				<td class="td">제목</td>
				<td><input type="text" name="title" id="title" class="input"
					placeholder="제목" required="required" /></td>
			</tr>
			<tr>
				<td class="td">파일명1</td>
				<td><input type="file" name="file1" id="file1" class="file" /></td>
			</tr>
			<tr>
				<td class="td">파일명2</td>
				<td><input type="file" name="file2" id="file2" class="file" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center" id="button"><input
					type="button" value="전송" id="send" /><input type="button"
					value="취소" id="cancel" /></td>
			</tr>
		</table>
	</form>

</body>
</html>