<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<script type="text/javascript">
	$(document).ready(function() {

	})
	function ajaxlink(alink) {
		/* var para = $("#loginform").serialize(); */
		//var para = "action=loginchack.jsp&method=post";
		/* alert("ajaxlink:"+alink) */
		$.ajax({
			type : "post",
			url : alink,
			/* data : para, */
			success : function(data) {
				$("#main").html(data)
			},
			error : function(data, status) {
				alert("error:" + status)
			}
		})
	}
</script>
<table border="1" borderColor="green" width="100%" height="100%">
	<tr>
		<td align="left" valign="top">
			<table>
				<tr>
					<td height="25"><a href="javascript:ajaxlink('intro.jsp')" id="intro">��Ʈ��</a></td>
					<!-- 					<td height="25"><a href="index.jsp?menu=main" id="intro">��Ʈ��</a></td> -->
				</tr>
				<!-- 				<tr>
					<td height="25"><a href="index.jsp?menu=login">�α���</a></td>
				</tr> -->
				<tr>
					<td height="25"><a  href="javascript:ajaxlink('board.jsp')" id="board">�Խ���</a></td>
					<!-- 					<td height="25"><a href="index.jsp?menu=board" id="board">�Խ���</a></td> -->
				</tr>
				<tr>
					<td height="25">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
