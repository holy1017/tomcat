<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%
	String saveFolder="/upload";//파일 업로드 폴더 지정
	//현재 jsp페이지의 웹 어플리케이션의 절대경로를 구함.
	ServletContext context=getServletContext();
	String uploadPath=context.getRealPath(saveFolder);//업로드 경로
	
	System.out.println(uploadPath);
	
	int size=10*1024*1024;
	String name="";
	String subject="";
	String filename1="";
	String filename2="";

	try{
		MultipartRequest multi=new MultipartRequest(request,uploadPath, size,"UTF-8", new DefaultFileRenamePolicy());
		name=multi.getParameter("name");
		subject=multi.getParameter("subject");
		
		Enumeration<?> files=multi.getFileNames();
		String file1=(String)files.nextElement();
		filename1=multi.getFilesystemName(file1);
		String file2=(String)files.nextElement();
		filename2=multi.getFilesystemName(file2);
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>

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
</head>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
	<input type="hidden" name="name" value="<%=name %>">
	<input type="hidden" name="subject" value="<%=subject %>">
	<input type="hidden" name="filename1" value="<%=filename1 %>">
	<input type="hidden" name="filename2" value="<%=filename2 %>">
</form>
<a href="#" onclick="filecheck.submit()">업로드 확인 및 다운로드 페이지입니다.</a>
</body>
</html>