<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String action = request.getParameter("action");
	String method = request.getParameter("method");

	String id = "";
	//try{
	String state = request.getParameter("state");
	//if (true) {
	if ("false".equals(request.getParameter("login"))) {
		out.print("������" );
%>
<script type="text/javascript">
alert("����ġ1");
</script>
<%
	}
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="login.js"></script>
<script type="text/javascript">
	/* 	$(document).ready(function() {
	 $("#loginbt").click(function() {
	 var para = $("#loginform").serialize();
	 //var para = "action=loginchack.jsp&method=post";
	 alert(para)
	 $.ajax({
	 type : "post",
	 url : "loginchack.jsp",
	 data : para,
	 success : function(data) {
	 $("#login").html(data)
	 },
	 error : function(data, status) {
	 alert("error:" + status)
	 }
	 })

	 })
	 }) */
</script>
<%-- <form action=<%=action %> method=<%=method %>> --%>
<form action="logindb.jsp" method="post" id="loginform"
	name="loginform">
	<table>
		<tr>
			<td class="label"><label for="id">���̵�</label></td>
			<td class="input"><input type="text" name="id" id="id"
				maxlength="50" placeholder="id" autofocus="autofocus"
				required="required" /></td>
		</tr>
		<tr>
			<td class="label"><label for="pw">���</label></td>
			<td class="input"><input type="password" name="pw" id="pw"
				placeholder="1~16�ڸ�" maxlength="16" required="required" /></td>
		</tr>
		<tr>
			<td class="button" colspan="2"><input type="button" value="�α���"
				id="loginbt" /><input type="reset" value="�ٽ��Է�" /></td>
		</tr>
	</table>
</form>
<%-- <%
	} else {
%>
<%=id%>
<from method="post" action="logout.jsp"> <input type="submit"
	value="�α׾ƿ�" /> </from>
<%
	}
	/* }catch{
		
	} */
%> --%>