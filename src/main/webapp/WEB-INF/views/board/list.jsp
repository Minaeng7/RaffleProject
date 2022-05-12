<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시글 목록</h1>
<a href="write">글쓰기</a>
<table border="1" width="600px">
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:forEach var="row" items="${list }">
	<tr>
		<td>${row.bno }</td>
		<td>${row.username }</td>
		<td><a href="${path }/board/view?bno=${row.bno }">${row.title }</a></td>
		<td><fmt:formatDate value="${row.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		<td>${row.viewcnt }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>