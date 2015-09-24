


/**
 * 
 */
var xhr

function createRequest() {
	try {
		xhr = new XMLHttpRequest()
	} catch (e) {
		// TODO: handle exception
		try {
			xhr = new ActiveXObject("Msxml2.XMLHTTP")
		} catch (e) {
			// TODO: handle exception
			try {
				xhr = new ActiveXObject("Microsoft.XMLHTTP")
			} catch (e) {
				// TODO: handle exception
				/**
				 * @param url
				 * @param type
				 * @param process
				 * @param send
				 */
				xhr = null
				log("createRequest null")
				return null
			}
		}
	}
	log("createRequest ok")
	return xhr
}

function xmlHttpRequest(type,url,process,send) {
	createRequest()
	xhr.open(type,url,true)
	xhr.onreadystatechange=process
	xhr.send(send)
}

function log(log) {
	$("#log").prepend("로그:" + log + "<br>")
}