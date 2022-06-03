<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<c:if test="${!empty mesg }">
<script>
	alert("${mesg} 응모 완료");
</script>
</c:if>
<% if (session.getAttribute("mesg") != null){
	session.removeAttribute("mesg");
}
%>
<!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>결제완료 </h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
        	<div class="col-md-12 col-lg-12">
                  <div class="odr-box">
                        <div class="title-left">
                            <h3>${Rdto.username} 님의 주문이 안전하게 처리되었습니다.</h3>
                        </div>
                   </div>
                   
                       <div class="odr-box">
                           <div class="title-left">
                               <h3>상품 및 배송 정보</h3>
                           </div>
                           <div class="rounded p-2 bg-light">
                               <div class="media mb-2 border-bottom">
                                   <div class="media-body">
	                                   <div class="font-weight-bold">${Rdto.post } ${Rdto.addr1} ${Rdto.addr2}</div>
	                                   <a href="SellRetrieve?sell_rno=${Rdto.resell_rno }">${dto.rafflename }</a>
                                       <div class="small text-muted">가격 : ${rdto.per_price }</div>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="col-md-12 col-lg-12">
                       <div class="odr-box">
                           <div class="title-left">
                               <h3>결제 내역</h3>
                           </div>
                           <div class="d-flex">
                               <div class="font-weight-bold">Product</div>
                               <div class="ml-auto font-weight-bold">Total</div>
                           </div>
                           <hr class="my-1">
                           <div class="d-flex">
                               <label>Price</label>
                               <div class="ml-auto font-weight-bold"> ${rdto.per_price } </div>
                           </div>
                           <div class="d-flex">
                               <label>Amount</label>
                               <div class="ml-auto font-weight-bold"> ${dto.spot } </div>
                           </div>
                           <hr class="my-1">
                           <div class="d-flex gr-total">
                               <h5>Total Price</h5>
                               <div class="ml-auto h5"> ${rdto.per_price * dto.spot } </div>
                           </div>
                       </div>
                   </div>
               </div>
            </div>
<!-- End Cart -->


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