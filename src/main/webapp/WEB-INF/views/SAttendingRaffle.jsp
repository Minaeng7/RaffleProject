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
<form action ="SAttend">
<input type = "hidden" id = "raffleno" name = "Raffleno" value = "1">
<input type = "hidden" id = "memberno" name = "memberno"value = "1"><!-- 참여하고 있는 member의 number -->
<input type = "hidden" id = "Rafflename" name = "Rafflename" value = "NIKE-limited">
참여자 성함 : <input type = "text" id = "Ausername" name = "username"><br>
참여자 닉네임 : <input type = "text" id = "Anickname" name = "nickname"><br>
우편번호 : <input type = "text" id = "post" name = "post"><br>
배송지 주소 : <input type = "text" id = "addr1" name = "addr1"><br>
배송지 상세 주소 : <input type = "text" id = "addr2" name = "addr2"><br>
참여자 연락처 : <input type = "text" id = "phone" name ="phone"><br>
<button>제출</button>
</form>
</body>
</html>