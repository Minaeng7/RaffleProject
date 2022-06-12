<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
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
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->
	&nbsp;
	
    <!-- Start Cart  -->
    <c:choose>
	<c:when test="${RResult.memberno == Winner.memberno }">
	<form action="MyAttendedRaffle">
    
    <div class="cart-box-main">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <div class="odr-box">
                    	<div class="title-left">
                    	<h3>${Winner.username } 님이 응모하신 ${rdto.rafflename } 상품에 당첨되셨습니다.</h3>
                    	</div>
                        <div class="title-left">
                            <h3>상품</h3>
                        </div>
                        <div class="rounded p-2 bg-light">
                            <div class="media mb-2 border-bottom">
                                <div class="media-body"> <a href="ResellRetrieve?resell_rno=${rdto.resell_rno }"></a>
                                	<div class="font-weight-bold" >${rdto.nickname }</div>
                                	<div class="small text-muted" >${rdto.rafflename }</div>
                                	<img src="images/${rdto.image }.jpg" class="img-fluid" alt="Image" style="height:300px; length:300px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        	<div class="checkout-address">
	            <div class="title-left">
	                <h3>당첨자 정보</h3>
	            </div>
	            <div class="mb-3">
	                <label for="username">이름 *</label>
	                <div class="">
	                    <input type="text" class="form-control" id="username" name="" value="${Winner.username }" readonly>
	                </div><br>
	                <label for="username">연락처 *</label>
	                <div class="">
	                    <input type="text" class="form-control" id="phone" name="" value="${Winner.phone }" readonly>
	                </div>
	            </div>
	            
	            <div class="mb-3">
	                <label for="post">주소 *</label><br>
	                <input type="text" class="form-control" id="" name="" value="${Winner.post}" style="border: 1px solid #e8e8e8" readonly>
	                <input type="text" class="form-control" id="address1" name="" value="${Winner.addr1} ${Winner.addr2}" style="border: 1px solid #e8e8e8" readonly>
	            </div>
	        </div>
        </div>
	</div>
	</form>
	</c:when>
		<c:otherwise>
			<script>
				alert('안타깝습니다! 다음 기회에');
				location.href="MyAttendedRaffle";
			</script>
		</c:otherwise>
	</c:choose>
<!-- End Cart -->
    
    <jsp:include page="common/bottom.jsp"></jsp:include>

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