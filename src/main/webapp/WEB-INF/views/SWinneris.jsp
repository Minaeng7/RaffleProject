<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="common/top.jsp"></jsp:include>
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
					<h2>My Raffle 추첨 결과</h2>
					<ul class="breadcrumb">
						</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->
	&nbsp;
<h1 align="center">당첨자 확인</h1><br>
당첨 래플 이름 : ${Winner.rafflename}
당첨자 이름 : ${Winner.username}
당첨자 우편번호 : ${Winner.post}
당첨자 주소 : ${Winner.addr1}
당첨자 연락처 : ${Winner.phone}
<button formaction="SupervisingRaffle">확인</button>
</body>
</html>