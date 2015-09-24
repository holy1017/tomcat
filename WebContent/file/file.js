/**
 * 
 */
function chkfile(item) {
	var ext=item.val().split('.').pop().toLowerCase()
	if(jQuery.inArray(ext,['gif','png','jpg','jpeg'])==-1){
		alert("'gif','png','jpg','jpeg'만 올릴수 있습니다.:"+ext+":"+item.val())
		return false
	}else{
		return true
	}
}
$(function() {
	$("#send").click(function() {
		if($("#file1").val()){
			if(!chkfile($("#file1")))return
		}
		else if($("#file2").val()){
			if(!chkfile($("#file2")))return
		}else{
			alert("파일 없음")
			return
		}		
			$("#upload").attr({
				"method":"post",
				"action":"fileUpload.jsp"
			})
			$("#upload").submit()
	})
})