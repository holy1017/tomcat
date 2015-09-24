/**
 * 
 */
$(function() {
	$("#send").click(function() {
		$("#emailform").attr({
			"method":"post",
			"action":"emailsend.jsp"
		})
		$("#emailform").submit()
	})
})