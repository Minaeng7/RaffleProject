<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
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

    <script src="package/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="package/dist/weetalert2.min.css">
    <script>

        function check_quantity(){

	        var q = document.getElementById('quantity').value;
	        var quantity = parseInt(q);
	            //console.log(quantity);
	        var a = "${rdto.attend_amount}";
	        var amount = parseInt(a);
	        //console.log(amount);
	        if(quantity >= amount ){
	  			Swal.fire(amount+" 개까지만 신청가능합니다.");
			}

        };     

    </script>

</head>

<body>

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
                    <h2>Shop Detail</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">Shop Detail </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
    
 <!-- Start Shop Detail  -->
    <div class="shop-detail-box-main">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-6">
                    <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active"> <img class="d-block w-100" src="images/${rdto.image }.jpg" alt="First slide"> </div>
                            <div class="carousel-item"> <img class="d-block w-100" src="images/${rdto.image }-1.jpg" alt="Second slide"> </div>
                            <div class="carousel-item"> <img class="d-block w-100" src="images/${rdto.image }-2.jpg" alt="Third slide"> </div>
                        </div>
                        <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev"> 
						<i class="fa fa-angle-left" aria-hidden="true"></i>
						<span class="sr-only">Previous</span> 
					</a>
                        <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next"> 
						<i class="fa fa-angle-right" aria-hidden="true"></i> 
						<span class="sr-only">Next</span> 
					</a>
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-1" data-slide-to="0" class="active">
                                <img class="d-block w-100 img-fluid" src="images/${rdto.image }.jpg" alt="" />
                            </li>
                            <li data-target="#carousel-example-1" data-slide-to="1">
                                <img class="d-block w-100 img-fluid" src="images/${rdto.image }-1.jpg" alt="" />
                            </li>
                            <li data-target="#carousel-example-1" data-slide-to="2">
                                <img class="d-block w-100 img-fluid" src="images/${rdto.image }-2.jpg" alt="" />
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="single-product-details">
                    
                    <form action="RAttendingRaffle?resell_rno=${rdto.resell_rno }">
                    <input type="hidden" name="resell_rno" value="${rdto.resell_rno }">
                    <input type="hidden" name="rafflename" value="${rdto.rafflename }">
                    <input type="hidden" name="memberno" value="${login.memberno }">
                    <input type="hidden" name="username" value="${login.username }">
                    <input type="hidden" name="nickname" value="${rdto.nickname }">
                    <input type="hidden" name="post" value="${login.post }">
                    <input type="hidden" name="addr1" value="${login.addr1 }">
                    <input type="hidden" name="addr2" value="${login.addr2 }">
                    <input type="hidden" name="phone" value="${login.phone }">
                    
                        <h1 style="margin-top : 20px;">래플이름 : ${rdto.rafflename }</h1>
                        <h3 style="margin-left: 5px; margin : 10px"> 셀러 이름 : ${rdto.memberno}</h3>
                        <h3 style="margin-left: 5px; margin : 10px"> 참가비 : <fmt:formatNumber value="${rdto.per_price }" maxFractionDigits="3"/></h3>
                        <h3 style="margin-left: 5px; margin : 10px"> 참가 가능 인원 : ${rdto.attend_amount }</h3>
                            <p>
                                <h4>Short Description:</h4>
                                <p style="padding:20px;">${rdto.text }대충 설명이라는중대충 설명이라는중 대충 설명이라는중 대충 설명이라는중  </p>
                                <ul>
                                    <li>
                                        <div class="form-group size-st">
                                            <label class="size-label">Size</label>
                                            <select id="basic" class="selectpicker show-tick form-control">
												<option value="0">Size</option>
												<option value="230">230</option>
												<option value="240">240</option>
												<option value="250">250</option>
												<option value="260">260</option>
												<option value="270">270</option>
												<option value="280">280</option>
												<option value="290">290</option>
											</select>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-group quantity-box">
                                            <label class="control-label">Quantity</label>
                                            <input class="form-control" id="quantity" name="spot" value="0" min="0" max="${rdto.attend_amount }" type="number"  onclick="check_quantity()">
                                        </div>
                                    </li>
                                </ul>

                                <div class="price-box-bar">
                                    <div class="cart-and-bay-btn">
                                       <a> <input type="submit" class="btn hvr-hover" data-fancybox-close="" style="margin-right:15px" value="구매하기"></a>
                                        <!-- <a class="btn hvr-hover" data-fancybox-close="" href="#">장바구니</a> -->
                                    </div>
                                </div>
						</form>
                             
                    </div>
                </div>
            </div>

            <div class="row my-5">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>다른 래플들</h1>
                    </div>
                    <div class="featured-products-box owl-carousel owl-theme">
					<c:forEach items="${rlist }" var="rlist">
                   	<c:set var ="i" value = "${i+1 }"/>
                        <div class="item">
                            <div class="products-single fix">
                                <a href="ResellRetrieve?resell_rno=${rlist.resell_rno }">
                                <div class="box-img-hover">
                                    <img src="images/img-resell-${i }.jpg" class="img-fluid" alt="Image">
                                </div>
                            
                                <div class="why-text">
                                    <h4>${rlist.rafflename }</h4>
                                    <h5><fmt:formatNumber value="${rlist.per_price }" maxFractionDigits="3"/></h5>
                                </div>
                          		</a>
                            </div>
                        </div>
						</c:forEach>
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
    <!-- <script src="js/bootstrap-select.js"></script> -->
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