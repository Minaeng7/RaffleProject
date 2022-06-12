<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/top.jsp"></jsp:include>
	<div class="top-search">
		<div class="container">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-search"></i></span>
				<input type="text" class="form-control" placeholder="Search">
				<span class="input-group-addon close-search"><i
					class="fa fa-times"></i></span>
			</div>
		</div>
	</div>
	<!-- End Top Search -->

	<!-- Start All Title Box -->
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>My Raffle 삭제</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->
<form action="DeleteMyRaffleSS" style="text-align: center;">
<input type = "hidden" name = "sell_rno" value = "${sell_rno}">
&nbsp;
<h2>정말 삭제하시겠습니까?</h2>
<button>삭제</button>
<button formaction="SupervisingRaffle">취소</button>
</form>


</body>
</html>