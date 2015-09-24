/**
 * 
 */


function startMethod() {
//	createRequest()
//	var url="";
//	xhr.open("get",url,true)
//	xhr.onreadystatechange=process
//	xhr.send(null)
//	xmlHttpRequest("get","requestget.xml",process,null)
	var id=document.getElementById("id").value
	xmlHttpRequest("get","request.jsp?id="+id,process,null)
}

function process() {
	$("#dresult").html(xhr.responseText)
}