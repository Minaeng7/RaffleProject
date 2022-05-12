<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Seller Raffle</h1>
${AttendedRaffleR}
${AttendedRaffleS}
<form action="UpdateMyAttendingR">
<button>ResellAttending 수정</button>
</form>
<form action="UpdateMyAttendingS">
<button>sellAttending 수정</button>
</form>
<form action="DeleteMyAttendingR"><!-- 삭제의 경우 Raffleno 가 같이 넘어가도록 수정해야함. -->
<button>ResellAttending 삭제</button>
</form>
<form action="DeleteMyAttendingS"><!-- 삭제의 경우 Raffleno 가 같이 넘어가도록 수정해야함. -->
<button>sellAttending 삭제</button>
</form>
</body>
</html>