<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="/fileUploadSmtp/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/fileUploadSmtp/js/board.js"></script>
<script type="text/javascript">
	$(function(){
		$("#upload").click(function(){
			if(!chkFile($('#filename1'))) return;
			else if(!chkFile($('#filename2'))) return;
			else {
				$('#uploadForm').attr({
					"method":"post",
					"action":"fileUpload.jsp"
				})
				$("#uploadForm").submit();
			}
		})
	})

</script>
</head>
<body>
<form name="uploadForm" id="uploadForm" enctype='multipart/form-data'>
<table>
	<tr>
		<td colspan='2' class='tc'><h3> 파일 업로드 폼 </h3></td>
	</tr>
	<tr>
		<td > 올린 사람</td>
		<td > <input type='text' name='name' id='name'  placeholder='이름'></td>
	<tr>
	    <td> 제목</td>
		<td> <input type='text' name='subject' id='subject'  placeholder='제목'></td>
	</tr>
	<tr>
	    <td> 파일명1</td>
		<td> <input type='file' name='filename1' id='filename1'></td>
	</tr>
	<tr>
	    <td> 파일명2</td>
		<td> <input type='file' name='filename2' id='filename2'></td>
	</tr>
	
	<tr>
		<td colspan='2' class='tc'> 
		<input type='button' id='upload'value='전송'>
		<input type='reset' value='취소'>
		</td>
	</tr>
</table>
</form>
</body>
</html>