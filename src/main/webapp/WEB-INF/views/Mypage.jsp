<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page = "common/top.jsp"></jsp:include>
<c:if test="${!empty mypage}">
<jsp:include page = "Mypage/Myinfo.jsp"></jsp:include>
</c:if>

<a href = "MyAttendedRaffle">응모한 래플 관리</a>
<a href = "SupervisingRaffle">나의 래플 관리</a>

</body>
</html>