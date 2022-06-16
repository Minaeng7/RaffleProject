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
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="shop-raffle.html">상점으로 이동하기</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->
<form action="DeleteMyAttendingRR" style="text-align: center;">
&nbsp;
<input type="hidden" name="resell_rno" value="${rdto.resell_rno }">
<input type="hidden" name="memberno" value="${rdto.memberno }">
<input type="hidden" name="rafflename" value="${rdto.rafflename }">
<input type="hidden" name="username" value="${rdto.username }">
<input type="hidden" name="post" value="${rdto.post }">
<input type="hidden" name="addr1" value="${rdto.addr1 }">
<input type="hidden" name="addr2" value="${rdto.addr2 }">
<input type="hidden" name="phone" value="${rdto.phone }">
<input type="hidden" name="spot" value="${rdto.spot }">
<h1 align="center">정말 삭제하시겠습니까?</h1><br>
<button >삭제</button>
<button formaction="MyAttendedRaffle">취소</button>
</form>


</body>
</html>