<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
/* $(function(){
/* 	var child;
	child = window.open("AttendingRaffle.jsp", "_blank", "height:300, width:300"); //선언과 초기화 동시에 해도 됨 */
	$("form").on("submit", function(){
		window.open("views/AttendingRaffle", "_blank", "height:300, width:300"); 
	})
}); */

</script>
</head>
<body>
<form action="AttendingRaffle">
<input type = "hidden" id = "raffleno" value = "1">
<input type = "hidden" id = "memberno" value = "1">
<input type = "hidden" id = "username" value = "홍길동">

<div style="text-align: center">
<img alt="" src="resources/images/image.jpg"><br>
<span style = "font-size: 35px">NIKE-limited</span><br>
Seller : <span style = "font-size: 20px">손민형</span><br>
Total-spot : <span style = "font-size: 20px">30</span><br>
Left-spot : <span style = "font-size: 20px">10</span><br>
AttendigPrice : <span style = "font-size: 20px">50000</span><br>
<button>참여하기</button>
</div>
</form>
</body>
</html>