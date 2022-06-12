<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Start Top Search -->
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
					<h2>My Attended Raffle</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-main table-responsive">
						<h1>Seller's</h1>
						<table class="table">
							<thead>
								<tr>
									<th>S/R</th>
									<th>번호</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>결과</th>
									<th>응모 취소</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${AttendedRaffleS}">
									<tr>
										<td>S</td>
										<td><c:out value="${item.sell_rno}" /></td>
										<td><c:out value="${item.rafflename}" /></td>
										<td><fmt:formatNumber value="${item.raffleprice }" maxFractionDigits="3"/></td>
										<td><form action=SResult>
												<input type="hidden" name=sell_rno value="${item.sell_rno}">
												<button>확인</button>
											</form></td>
										<td><form action="DeleteMyAttendingS">
												<input type="hidden" name=sell_rno value="${item.sell_rno}">
												<button>응모 취소</button>
											</form></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="cart-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-main table-responsive">
						<h1>Reseller's</h1>
						<table class="table">
							<thead>
								<tr>
									<th>S/R</th>
									<th>번호</th>
									<th>Product Name</th>
									<th>Price</th>
									<th>Spot</th>
									<th>수정</th>
									<th>결과</th>
									<th>응모 취소</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${AttendedRaffleR}"
									varStatus="status">
									<tr>
										<td>R</td>
										<td><c:out value="${item.resell_rno}" /></td>
										<td><c:out value="${item.rafflename}" /></td>
										<td><fmt:formatNumber value="${item.per_price }" maxFractionDigits="3"/></td>
										<td><c:out value="${RSpotList[status.index].spot}" /></td>
										<td><form action="UpdateAttendingR">
												<input type="hidden" name="resell_rno" value="${item.resell_rno }"> 
												<input type="hidden" name="memberno" value="${item.memberno }"> 
												<input type="hidden" name="rafflename" value="${item.rafflename }">
												<input type="hidden" name="total_price" value="${item.total_price }"> 
												<input type="hidden" name="attend_amount" value="${item.attend_amount }">
												<input type="hidden" name="per_price" value="${item.per_price }"> 
												<input type="hidden" name="viewcnt" value="${item.viewcnt }"> 
												<input type="hidden" name="deadline" value="${item.deadline }">
												<input type="hidden" name="text" value="${item.text }">
												<button>수정</button>
											</form></td>
										<td><form action="RResult">
												<input type="hidden" name="resell_rno" value="${item.resell_rno }">
													<button>확인</button>
											</form></td>

										<td><form action="DeleteAttendingR">
												<input type="hidden" name="resell_rno"
													value="${item.resell_rno }">
												<button>응모 취소</button>
											</form></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="js/inewsticker.js"></script>
	<script src="js/bootsnav.js."></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>
