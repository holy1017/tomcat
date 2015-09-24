<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="java.io.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String save = "/file/fileUplaod";
	ServletContext context = getServletContext();
	String uploadPath = context.getRealPath(save);
	//String uploadPath = context.getContextPath()+save;
	//System.out.println(context.getRealPath(save));
	//System.out.println(context.getContextPath());


	int size = 10 * 1024 * 1024;

	long currentTime = System.currentTimeMillis();
	SimpleDateFormat simDf = new SimpleDateFormat("yyyyMMddHHmmss");

	String name = "";
	String title = "";

	String filename1 = "";
	String filename2 = "";

	String file1 = "";
	String file2 = "";

	try {
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		name = multi.getParameter("name");
		title = multi.getParameter("title");

		Enumeration<?> files = multi.getFileNames();

		file1 = (String) files.nextElement();
		file2 = (String) files.nextElement();

		filename1 = multi.getFilesystemName(file1);
		filename2 = multi.getFilesystemName(file2);

		/* title = new String(title.getBytes("8859_1"), "UTF-8");
		 
		// 파일업로드
		file1 = multi.getFilesystemName("file1");
		
		// 실제 저장할 파일명(ex : 20140819151221.zip)
		newFileName = simDf.format(new Date(currentTime)) +"."+ file1.substring(file1.lastIndexOf(".")+1);
		  
		// 업로드된 파일 객체 생성
		File oldFile = new File(savePath + uploadFile);
		  
		// 실제 저장될 파일 객체 생성
		File newFile = new File(savePath + newFileName);
		  
		// 파일명 rename
		if(!oldFile.renameTo(newFile)){ 
		    // rename이 되지 않을경우 강제로 파일을 복사하고 기존파일은 삭제 
		    buf = new byte[1024];
		    fin = new FileInputStream(oldFile);
		    fout = new FileOutputStream(newFile);
		    read = 0;
		    while((read=fin.read(buf,0,buf.length))!=-1){
		fout.write(buf, 0, read);
		    }             
		    fin.close();
		    fout.close();
		    oldFile.delete();
		}    */

	} catch (Exception e) {
		e.printStackTrace();
	}
	int j = 0;
	System.out.println(j++ + name);
	System.out.println(j++ + title);
	System.out.println(j++ + filename1);
	System.out.println(j++ + filename2);
	System.out.println(j++ + file1);
	System.out.println(j++ + file2);
%>
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
	<div id=""><%=name%>
	</div>
	<div id=""><%=title%>
	</div>
	<div id=""><%=filename1%>
	</div>
	<div id=""><%=filename2%>
	</div>
	<div id=""><%=uploadPath%>
	</div>
	<form action="fileChack.jsp" method="post" name="filechack">
		<%-- input[type="hidden" name="" value="<%= %>"]*4 --%>
		<input type="hidden" name="name" value="<%=name%>" /> <input
			type="hidden" name="title" value="<%=title%>" /> <input
			type="hidden" name="filename1" value="<%=filename1%>" /> 
			<input
			type="hidden" name="filename2" value="<%=filename2%>" />
	</form>
	<a href="#" onclick="filechack.submit()">업로드 확인</a>
</body>
</html>