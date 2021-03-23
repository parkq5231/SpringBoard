<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getBoardList</title>
</head>
<body>
	<h3>게시판</h3>
	<c:forEach items="${list}" var="board">
		<a href="getBoard?seq=${board.seq}">${board.seq} ${board.title}</a>
		<br>
		<hr>
	</c:forEach>
</body>
</html>