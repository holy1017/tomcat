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
	<c:out value="sakdfjalskf" />
	<c:set var="setStr" value="set sadfsajlka;flaj" />
	${setStr }<br>
	<c:set var="n">24</c:set>
	${n }<br>
	<c:set var="d">24.13</c:set>
	${d }<br>
	${d+n }<br>
	<c:set var="h" value="true" />
	${h }<br>
</body>
</html>