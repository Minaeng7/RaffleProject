<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Attending Raffle</h1>
<form action ="UpdateAttendingRR">
<input type = "hidden" id = "raffleno" name = "Raffleno" value = "1">
<input type = "hidden" id = "memberno" name = "memberno" value = "1"><!-- 참여하는 member의 number -->
<input type = "hidden" id = "Rafflename" name = "Rafflename" value = "NIKE-limited">
참여자 성함 : <input type = "text" id = "Ausername" name = "username"><br>
우편번호 : <input type = "text" id = "post" name = "post"><br>
배송지 주소 : <input type = "text" id = "addr1" name = "addr1"><br>
배송지 상세 주소 : <input type = "text" id = "addr2" name = "addr2"><br>
참여자 연락처 : <input type = "text" id = "phone" name ="phone"><br>
참여 희망 스팟 수 :<input type = "text" id = "spot" name = "spot">
<button>제출</button>
</form>
</body>
</html>