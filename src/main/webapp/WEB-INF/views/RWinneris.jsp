<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<c:if test="${!empty mesg}">
<script>
alert("해당 래플은 이미 추첨이 완료 되었습니다.")
</script>
</c:if>
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
	<h1 align="center">당첨자 확인</h1><br>
		<c:if test="${!empty Winner.sell_rno }">
			<h2 align="center">
			당첨 래플 번호 : ${Winner.sell_rno}<br>
			당첨자 이름 : ${Winner.username}<br>
			당첨자 우편번호 : ${Winner.post}<br>
			당첨자 주소 : ${Winner.addr1}<br>
			당첨자 연락처 : ${Winner.phone}<br>
			<a href = "SupervisingRaffle"><button>확인</button></a>
			</h2>
		</c:if>
		<c:if test="${empty Winner.sell_rno }">
			<h2 align="center">
			아직 추첨이 진행되지 않았습니다. 
			추첨 후 확인해주세요
			<a href = "SupervisingRaffle"><button>확인</button></a>
			</h2>
		</c:if>
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
>>>>>>> b9092b3fd54f307e8d20ff7e953b27ff3b95943d
</body>

</html>