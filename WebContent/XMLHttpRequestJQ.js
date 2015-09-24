
$(document).ready(function() {
	$("#request").click(function() {
		var id=$("#id").val();
		var para="id="+id;
		$.ajax({
			method : "get",
			type : "get",
			url : "request.jsp",
			data:para,
			success : function(data) {
				alert("data"+data)
				$('#dresult').html(data)
			},
			Error:function(e){
				alert("Error"+e)
			}
		})
	})
})