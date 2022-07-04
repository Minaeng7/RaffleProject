<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <!-- Start All Title Box -->
	<div class="all-title-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2>For Reseller</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->
 <!-- Start Shop Page  -->
 <!-- 왼쪽 카테고리 -->
    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                    <div class="product-categori">
                        <div class="search-product">
                            <form action="#">
                                <input class="form-control" placeholder="" type="text">
                                <button type="submit"> <i class="fa fa-search"></i> </button>
                            </form>
                        </div>
                         <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>Category</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                <a href="SList" class="list-group-item list-group-item-action">Seller's Raffle </a>
                                <a href="RList" class="list-group-item list-group-item-action">Reseller's Raffle</a>
                            </div>
                        </div>
                    </div>
                </div>
<!-- 왼쪽 카테고리 끝 -->

                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                    <div class="right-product-box">
<!-- 상품등록 버튼 -->  
						<div class="product-item-filter row">
                            <div class="col-12 col-sm-8 text-center text-sm-left">
                                <div class="toolbar-sorter-right">
                                    <span></span>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4 text-center text-sm-right">
                                <ul class="nav nav-tabs ml-auto">
                                	<a href="AddResell"><button class="btn btn-outline-dark">상품 등록</button></a>
                                </ul>
                            </div>
                        </div>
<!-- 상품등록 버튼-->
                        <div class="row product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
<!-- 상품뿌리기 시작 -->                          
								<c:forEach var="rdto" items="${rdto}">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                            	<a href="ResellRetrieve?resell_rno=${rdto.resell_rno }">
				                                <img src="images/${rdto.image }" class="img-fluid" alt="Image">
				                                </a>
	                                            <div class="why-text" style="height:180px">
	                                            	<c:forEach var="dto" items="${dto }">
	                                                	<c:if test="${dto.resell_rno == rdto.resell_rno}">
	                                                	<h2 style="color:red">SOLD OUT</h2>
	                                                	</c:if>
                                                	</c:forEach>
	                                                 <h4> RaffleName : ${rdto.nickname }</h4>
	                                                 <h5> Entry fee : <fmt:formatNumber value="${rdto.per_price }" maxFractionDigits="3"/></h5>
	                                                 <h6> 조회 : ${rdto.viewcnt }</h6>
	                                            </div>
                                            </div>
                                        </div>
                          		</c:forEach>          
<!-- 상품 뿌리기 끝 -->
                                        
                                    </div>
                                </div>
                                
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <!-- End Shop Page -->

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
    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>