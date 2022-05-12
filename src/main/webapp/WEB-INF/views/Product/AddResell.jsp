<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#imgUpload").on("change", function() {
		readURL(this);
	});
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e){
			$("#View").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		} 
	};//end func
});//end ready
</script>
</head>
<body>
<h1> Resell 상품 등록</h1>
로그인 정보 : ${login }
<form action="loginCheck/ResellRetrieve" method="get" enctype="multipart/form-data">
	<input type="hidden" name="memberno" value="${login.memberno }">
	<input type="hidden" name="nickname" value="${login.nickname }">
회원 번호 : ${login.memberno }<br>
래플 번호 : <input type="text" name="resell_rno" value="1" placeholder="resell 래플번호 입력하세요"><br>
닉네임 : ${login.nickname }<br>
상품(래플)이름 : <input type="text" name="rafflename" value="" placeholder="상품이름을 입력하세요"><br>
totalprice : <input type="text" id="totalprice" name="totalprice" value="">원<br>
perprice : <input type="text" id="perprice" name="perprice" value="">원<br>
스팟 수 : <input type="text" id="attendamount" name="attendamount" value="" placeholder="수량"><br>
래플 진행 기간 : <input type="date" id="deadline" name="deadline" value="" min="1980-01-01" max="2022-12-31"><br>
제품 설명 : <input type="text" name="text" value="" placeholder="게시글 내용을 작성해주세요."><br>
이미지 등록 : <input type="file" id="imgUpload" name="img" value=""><br>
		<img id="View" src="#" alt="이미지 미리보기">
<hr>
<input type="submit" value="상품등록">
</form>
</body>
</html>