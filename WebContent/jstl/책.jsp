<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="board.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript"></script>
</head>
<body>

<c:set var="book" value="<%=new HashMap<String,String>() %>"></c:set>

<c:set target="${book }" property="java" value="java~ㄱㄱ"></c:set>
<c:set target="${book }" property="c" value="c~ㄱㄱ"></c:set>
<c:set target="${book }" property="jsp" value="jsp~ㄱㄱ"></c:set>
<%-- <c:set target="${book }" property="으휄" value="으휄~ㄱㄱ"></c:set> --%>
${book.java }<br>
${book.c }<br>
${book.jsp }<br>
<%-- ${book.으휄 }<br> --%>

<jsp:useBean id="onready" class="java.util.Date"></jsp:useBean>
<c:set target="${onready }" property="year" value="2009"></c:set>
${onready.year }<br>


</body>
</html>