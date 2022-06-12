<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
					<h2>나의 래플</h2>
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
									<th>Raffle Name</th>
									<th>Price</th>
									<th>총판매수량</th>
									<th>수정</th>
									<th>추첨</th>
									<th>당첨자확인</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var = "item" items="${MyRaffleS}">
								
								<tr>
									<td>S</td>
									<td><c:out value = "${item.sell_rno}"/></td>
									<td><c:out value ="${item.rafflename}"/></td>
									<td><fmt:formatNumber value="${item.raffleprice }" maxFractionDigits="3"/></td>
									<td><c:out value ="${item.raffleamount}"/></td>
									<td><form action = "UpdateMyRaffleS">
									<input type = "hidden" name = sell_rno value = "${item.sell_rno}">
									<input type = "hidden" name = memberno value = "${item.memberno}">
									<input type = "hidden" name = nickname value = "${item.nickname}">
									<input type = "hidden" name = rafflename value = "${item.rafflename}">
									<input type = "hidden" name = raffleprice value = "${item.raffleprice}">
									<input type = "hidden" name = raffleamount value = "${item.raffleamount}">
									<input type = "hidden" name = viewcnt value = "${item.viewcnt}">
									<input type = "hidden" name = text value = "${item.text}">
									<input type = "hidden" name = deadline value = "${item.deadline}">
									<button>수정</button>
									</form></td>
									<td><form action="SShuffle">
									<input type = "hidden" name = sell_rno value = "${item.sell_rno}">
									<button>추첨</button>
									</form></td>
									<td><form action = "WinnercheckS" >
									<input type = "hidden" name = sell_rno value = "${item.sell_rno}">
									<p align="center"><button>확인</button></p>
									</form></td>
									<td><form action ="DeleteMyRaffleS">
									<input type = "hidden" name = sell_rno value = "${item.sell_rno}">
									<button>삭제</button>
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
									<th>Raffle Name</th>
									<th>Price</th>
									<th>참여가능인원</th>
									<th>수정</th>
									<th>추첨</th>
									<th>당첨자정보</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var = "item" items="${MyRaffleR}">
								
								<tr>
									<td>R</td>
									<td><c:out value = "${item.resell_rno}"/></td>
									<td><c:out value ="${item.rafflename}"/></td>
									<td><fmt:formatNumber value="${item.total_price }" maxFractionDigits="3"/></td>
									<td><c:out value ="${item.attend_amount}"/></td>
									<td><form action = "UpdateMyRaffleR">
										<input type = "hidden" name = resell_rno value = "${item.resell_rno}">
										<input type = "hidden" name = memberno value = "${item.memberno}">
										<input type = "hidden" name = nickname value = "${item.nickname}">
										<input type = "hidden" name = rafflename value = "${item.rafflename}">
										<input type = "hidden" name = total_price value = "${item.total_price}">
										<input type = "hidden" name = attend_amount value = "${item.attend_amount}">
										<input type = "hidden" name = per_price value = "${item.per_price}">
										<input type = "hidden" name = viewcnt value = "${item.viewcnt}">
										<input type = "hidden" name = deadline value = "${item.deadline}">
										<input type = "hidden" name = text value = "${item.text}">
									<button>수정</button>
									</form></td>
									<td><form action = "RShuffle">
										<input type = "hidden" name = resell_rno value = "${item.resell_rno}">
										<input type = "hidden" name = memberno value = "${item.memberno}">
										<input type = "hidden" name = nickname value = "${item.nickname}">
										<input type = "hidden" name = rafflename value = "${item.rafflename}">
										<input type = "hidden" name = total_price value = "${item.total_price}">
										<input type = "hidden" name = attend_amount value = "${item.attend_amount}">
										<input type = "hidden" name = per_price value = "${item.per_price}">
										<input type = "hidden" name = viewcnt value = "${item.viewcnt}">
										<input type = "hidden" name = deadline value = "${item.deadline}">
										<input type = "hidden" name = text value = "${item.text}">
										<input type = "hidden" name = image value = "${item.image}">
									<button>추첨</button>
									</form></td>
									<td><form action = "WinnercheckR" >
										<input type = "hidden" name = resell_rno value = "${item.resell_rno}">
										<input type = "hidden" name = memberno value = "${item.memberno}">
										<input type = "hidden" name = nickname value = "${item.nickname}">
										<input type = "hidden" name = rafflename value = "${item.rafflename}">
										<input type = "hidden" name = total_price value = "${item.total_price}">
										<input type = "hidden" name = attend_amount value = "${item.attend_amount}">
										<input type = "hidden" name = per_price value = "${item.per_price}">
										<input type = "hidden" name = viewcnt value = "${item.viewcnt}">
										<input type = "hidden" name = deadline value = "${item.deadline}">
										<input type = "hidden" name = text value = "${item.text}">
										<input type = "hidden" name = image value = "${item.image}">
									<p align="center"><button>확인</button></p>
									</form></td>
									<td><form action = "DeleteMyRaffleR">
									<input type = "hidden" name = resell_rno value = "${item.resell_rno}">
									<button>삭제</button>
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





	<!-- Start copyright  -->
	<div class="footer-copyright">
		<p class="footer-company">
			All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By
			: <a href="https://html.design/">html design</a>
		</p>
	</div>
	<!-- End copyright  -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

</body>
</html>