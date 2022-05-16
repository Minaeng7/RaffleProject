<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h1>My Raffle</h1>
${MyRaffleR}
${MyRaffleS}<br>
<form action="UpdateMyRaffleR">
<button>Resell수정</button>
</form>
<form action="UpdateMyRaffleS">
<button>sell수정</button>
</form>
<form action="DeleteMyRaffleR">
<button>Resell삭제</button>
</form>
<form action="DeleteMyRaffleS">
<button>sell삭제</button>
</form>
</body>
</html>