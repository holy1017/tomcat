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
<script src=".js"></script>
<script type="text/javascript">
	$(function() {
		$("#writeForm").click(function() {
			location.href = "writeui.do"
		})
	})
</script>
</head>
<body>
	<div id="boardContainer">
		<div id="boardtit">글목록</div>
		<div id="boardList">
			<table summary="게시판 리스트">
				<colgroup>
					<col width="10%" />
					<col width="50%" />
					<col width="15%" />
					<col width="13%" />
					<col width="12%" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>자성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${not empty list }">
							<c:forEach var="dto" items="list">
								<tr align="center">
									<td>${dto.num }</td>
									<td align="center">${dto.title }</td>
									<td>${dto.author }</td>
									<td>${dto.writeday }</td>
									<td>${dto.readcnt }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5" align="center">게시물 없음</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		
		<!--  -->
		<div id="boardBut">
		<input type="button" value="글쓰기" id="writeForm"/>
		</div>
	</div>
</body>
</html>