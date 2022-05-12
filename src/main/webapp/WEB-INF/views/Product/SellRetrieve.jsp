<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
${sdto }
<h1>sell 상품 보기</h1>
<table border="1">
	<tr>
		<th>래플번호</th>
		<td><span>${sdto.sell_rno }</span></td>
	</tr>
	
	<tr>
		<th>판매 회원 번호</th>
		<td><span>${sdto.memberno }</span></td>
	</tr>
	
	<tr>
		<th>판매자 닉네임</th>
		<td><span>${sdto.nickname }</span></td>
	</tr>
	
	<tr>
		<th>상품이름</th>
		<td><span>${sdto.rafflename }</span></td>
	</tr>
	
	<tr>
		<th>스팟 수</th>
		<td><span>${sdto.raffleamount }</span></td>
	</tr>
	
	<tr>
		<th>상품 설명</th>
		<td><span>${sdto.text }</span></td>
	</tr>
	
	<tr>
		<th>가격</th>
		<td><span>${sdto.raffleprice }</span></td>
	</tr>
	
	<tr>
		<th>기간</th>
		<td><span>${sdto.deadline }</span></td>
	</tr>
	
	<tr>
		<th>제품 사진</th>
		<td><span>${sdto.img }</span></td>
	</tr>
	
</table>
</body>
</html>