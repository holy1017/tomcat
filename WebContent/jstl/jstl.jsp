<%@page import="java.util.Date"%>
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
	<c:out value="sakdfjalskf" />
	<c:set var="setStr" value="set sadfsajlka;flaj" />
	${setStr }
	<br>
	<c:set var="n">24</c:set>
	${n }
	<br>
	<c:set var="d">24.13</c:set>
	${d }
	<br> ${d+n }
	<br>
	<c:set var="h" value="true" />
	${h }
	<br>
	<c:set var="str" value="asfdasdfa" scope="session" />
	${str }
	<br> ${sessionScope.str }
	<br>

	<c:remove var="str" scope="page" />
	${str }
	<br>
	<c:remove var="str" scope="session" />
	${str }
	<br>

	<c:set var="app" value="asdfaf" scope="application"></c:set>
	${app }
	<br>
	<c:remove var="app" />
	${str }
	<br>


	<c:set var="book" value="<%=new HashMap<String, String>()%>"></c:set>

	<c:set target="${book }" property="java" value="java~ㄱㄱ"></c:set>
	<c:set target="${book }" property="c" value="c~ㄱㄱ"></c:set>
	<c:set target="${book }" property="jsp" value="jsp~ㄱㄱ"></c:set>
	<%-- <c:set target="${book }" property="으휄" value="으휄~ㄱㄱ"></c:set> --%>
	${book.java }
	<br> ${book.c }
	<br> ${book.jsp }
	<br>
	<%-- ${book.으휄 }<br> --%>

	<jsp:useBean id="onready" class="java.util.Date"></jsp:useBean>
	<c:set target="${onready }" property="year" value="2009"></c:set>
	${onready.year }
	<br>

	<c:set var="today" value="<%=new Date()%>"></c:set>

	<c:if test="${today.hours>17 }" var="bool">저녀먹음?</c:if>
	${today.hours }
	<br>
	<c:choose>
		<c:when test="${today.hours<6 }">새벽</c:when>
		<c:when test="${today.hours<12 }">오전</c:when>
		<c:when test="${today.hours<18 }">오후</c:when>
		<c:otherwise>바아암</c:otherwise>
	</c:choose>

	${bool }
	<br>

</body>
</html>