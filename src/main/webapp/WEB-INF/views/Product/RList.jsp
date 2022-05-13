<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

	<jsp:include page="../common/top.jsp"></jsp:include>	
    
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
                    <h2>상품목록 페이지입니다.</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Shop</li>
                    </ul>
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
                                <input class="form-control" placeholder="검색기능구현..." type="text">
                                <button type="submit"> <i class="fa fa-search"></i> </button>
                            </form>
                        </div>
                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>카테고리 적는 곳</h3>
                            </div>
                        	<div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                             	<div class="list-group-collapse sub-men">
                                 	<a class="list-group-item list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">왕카테고리1 <small class="text-muted">(100)</small>
									</a>
                                 	<div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                 	<div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action active">목록1 <small class="text-muted">(50)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">목록2 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">목록3 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">목록4 <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">목록5 <small class="text-muted">(20)</small></a>
                                  	</div>
                              	</div>
                          	</div>
                          	<div class="list-group-collapse sub-men">
                               	<a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">왕카테고리2 
									<small class="text-muted">(50)</small>
							   	</a>
                               	<div class="collapse" id="sub-men2" data-parent="#list-group-men">
                               		<div class="list-group">
                                        <a href="#" class="list-group-item list-group-item-action">Sports Shoes <small class="text-muted">(10)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Sneakers <small class="text-muted">(20)</small></a>
                                        <a href="#" class="list-group-item list-group-item-action">Formal Shoes <small class="text-muted">(20)</small></a>
                                    </div>
                                </div>
                           </div>
                                <a href="#" class="list-group-item list-group-item-action"> 왕카테고리3  <small class="text-muted">(150) </small></a>
                                <a href="#" class="list-group-item list-group-item-action">왕카테고리4 <small class="text-muted">(11)</small></a>
                                <a href="#" class="list-group-item list-group-item-action">왕카테고리5 <small class="text-muted">(22)</small></a>
                        	</div>
                        </div>
                    </div>
                </div>
<!-- 왼쪽 카테고리 끝 -->

                <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                    <div class="right-product-box">
<!-- 상품등록 버튼 -->  
						<a href="AddResell">Resell 상품 등록</a> 
<!-- 상품등록 버튼-->
                        <div class="row product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
<!-- 상품뿌리기 시작 -->                          
								<c:forEach var="rdto" items="${rdto}" varStatus="status">
                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                            <div class="products-single fix">
                                            	<a href="ResellRetrieve?resell_rno=${rdto.resell_rno }">
				                                <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
				                                </a>
	                                            <div class="why-text">
	                                                 <h4> rafflename : ${rdto.rafflename }</h4>
	                                                 <h5> total_price : ${rdto.total_price }</h5>
	                                            </div>
                                            </div>
                                        </div>
                          		</c:forEach>          
<!-- 상품 뿌리기 끝 -->
                                        
                                    </div>
                                </div>
                                
                                
<!-- 탭 전환 -->                   <div role="tabpanel" class="tab-pane fade" id="list-view">
<!-- 상품 뿌리기 -->
							<c:forEach var="rdto" items="${rdto }" varStatus="status">
                                    <div class="list-view-box">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                	<a href="ResellRetrieve?resell_rno=${rdto.resell_rno }">
                                                    <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                                    </a>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                <div class="why-text full-width">
                                                    <h4>상품 이름</h4>
                                                    <h5> <del>원래가격</del> 할인된가격</h5>
                                                    <p>가나다라마바사아자차카타파하</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                              </c:forEach>
<!-- 상품뿌리기 끝 -->

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->

   <jsp:include page="../common/bottom.jsp"></jsp:include>

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