<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script src="package/dist/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="package/dist/weetalert2.min.css">
<script>
	function check_quantity() {

		var quantity = document.getElementById('quantity').value;
		console.log(quantity);
		if (quantity >= 2) {
			Swal.fire("1개까지만 신청가능합니다.")
			document.getElementById('quantity').value = 1;
		}

	};
</script>
</head>

<body>


	<!-- Start Main Top -->
	<header class="main-header">
		<!-- Start Navigation -->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
			<div class="container">
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbar-menu" aria-controls="navbars-rs-food"
						aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="index.html"><img
						src="images/logo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li class="nav-item"><a class="nav-link"
							href="loginForm.html">Login</a></li>
						<li class="dropdown"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
							<ul class="dropdown-menu">
								<li><a href="shop-raffle.html">Raffle</a></li>
								<li><a href="shop-resell.html">Resell</a></li>
							</ul></li>
						<li class="dropdown"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">MyPage</a>
							<ul class="dropdown-menu">
								<li><a href="cart.html">Cart</a></li>
								<li><a href="MyPage.html">My Account</a></li>
								<li><a href="wishlist.html">Wishlist</a></li>
							</ul></li>
						<li class="dropdown"><a href="#"
							class="nav-link dropdown-toggle arrow" data-toggle="dropdown">게시판</a>
							<ul class="dropdown-menu">
								<li><a href="cart.html">공지사항</a></li>
								<li><a href="my-account.html">자유 게시판</a></li>
							</ul></li>
						<!-- <li class="nav-item"><a class="nav-link" href="contact-us.html">Contact Us</a></li>-->
					</ul>
				</div>
				<!-- /.navbar-collapse -->

				<!-- Start Atribute Navigation -->
				<div class="attr-nav">
					<ul>
						<li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
						<li class="side-menu"><a href="#"> <i
								class="fa fa-shopping-bag"></i> <span class="badge">3</span>
						</a></li>
					</ul>
				</div>
				<!-- End Atribute Navigation -->
			</div>
			<!-- Start Side Menu -->
			<div class="side">
				<a href="#" class="close-side"><i class="fa fa-times"></i></a>
				<li class="cart-box">
					<ul class="cart-list">
						<li><a href="#" class="photo"><img
								src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Delica omtantur </a>
							</h6>
							<p>
								1x - <span class="price">$80.00</span>
							</p></li>
						<li><a href="#" class="photo"><img
								src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Omnes ocurreret</a>
							</h6>
							<p>
								1x - <span class="price">$60.00</span>
							</p></li>
						<li><a href="#" class="photo"><img
								src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
							<h6>
								<a href="#">Agam facilisis</a>
							</h6>
							<p>
								1x - <span class="price">$40.00</span>
							</p></li>
						<li class="total"><a href="#"
							class="btn btn-default hvr-hover btn-cart">VIEW CART</a> <span
							class="float-right"><strong>Total</strong>: $180.00</span></li>
					</ul>
				</li>
			</div>
			<!-- End Side Menu -->
		</nav>
		<!-- End Navigation -->
	</header>


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
					<h2>Shop Detail</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Shop</a></li>
						<li class="breadcrumb-item active">Shop Detail</li>
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
					<div id="carousel-example-1"
						class="single-product-slider carousel slide" data-ride="carousel">
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block w-100" src="images/big-img-01.jpg"
									alt="First slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="images/big-img-02.jpg"
									alt="Second slide">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="images/big-img-03.jpg"
									alt="Third slide">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel-example-1"
							role="button" data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carousel-example-1"
							role="button" data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-1" data-slide-to="0"
								class="active"><img class="d-block w-100 img-fluid"
								src="images/smp-img-01.jpg" alt="" /></li>
							<li data-target="#carousel-example-1" data-slide-to="1"><img
								class="d-block w-100 img-fluid" src="images/smp-img-02.jpg"
								alt="" /></li>
							<li data-target="#carousel-example-1" data-slide-to="2"><img
								class="d-block w-100 img-fluid" src="images/smp-img-03.jpg"
								alt="" /></li>
						</ol>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">
					<div class="single-product-details">
						<h1 style="margin-top: 20px;">${sdto.rafflename }</h1>
						<h6>셀러 이름 : ${sdto.nickname}</h6>
						<h3 style="margin-left: 5px; margin: 10px">참가비 :</h3>
						<h3 style="margin-left: 5px; margin: 10px">참가 가능 인원 :</h3>
						<p>
						<h4>Short Description:</h4>
						<p style="padding: 20px;">대충 설명이라는중대충 설명이라는중 대충 설명이라는중 대충
							설명이라는중</p>
						<ul>
							<li>
								<div class="form-group size-st">
									<label class="size-label">Size</label> <select id="basic"
										class="selectpicker show-tick form-control">
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
									<label class="control-label">Quantity</label> <input
										class="form-control" id="quantity" value="0" min="0" max="2"
										type="number" onclick="check_quantity()">
								</div>
							</li>
						</ul>

						<div class="price-box-bar">
							<div class="cart-and-bay-btn">
								<a class="btn hvr-hover" data-fancybox-close="" href="SAttendingRaffle" style="margin-right: 15px">결제하기</a> 
								<a class="btn hvr-hover" data-fancybox-close="" href="#">장바구니</a>
							</div>
						</div>


					</div>
				</div>
			</div>

			<div class="row my-5">
				<div class="col-lg-12">
					<div class="title-all text-center">
						<h1>다른 래플들</h1>
					</div>
					<div class="featured-products-box owl-carousel owl-theme">
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
							</div>
							</a>
						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">

									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
								</a>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
								</a>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
								</a>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
									</div>
								</a>
								<div class="why-text">
									<h4>Lorem ipsum dolor sit amet</h4>
									<h5>$9.79</h5>
								</div>
								</a>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">
									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
								</a>
							</div>
						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">
									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
								</a>
							</div>

						</div>
						<div class="item">
							<div class="products-single fix">
								<a href="링크">
									<div class="box-img-hover">
										<img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">
									</div>

									<div class="why-text">
										<h4>Lorem ipsum dolor sit amet</h4>
										<h5>$9.79</h5>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- End Cart -->

	<!-- Start Footer  -->
	<footer>
		<div class="footer-main">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-widget">
							<h4>About ThewayShop</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam, quis nostrud exercitation
								ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							<ul>
								<li><a href="#"><i class="fab fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-google-plus"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-pinterest-p"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fab fa-whatsapp"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-link">
							<h4>Information</h4>
							<ul>
								<li><a href="#">About Us</a></li>
								<li><a href="#">Customer Service</a></li>
								<li><a href="#">Our Sitemap</a></li>
								<li><a href="#">Terms &amp; Conditions</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Delivery Information</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
						<div class="footer-link-contact">
							<h4>Contact Us</h4>
							<ul>
								<li>
									<p>
										<i class="fas fa-map-marker-alt"></i>Address: Michael I. Days
										3756 <br>Preston Street Wichita,<br> KS 67213
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-phone-square"></i>Phone: <a
											href="tel:+1-888705770">+1-888 705 770</a>
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-envelope"></i>Email: <a
											href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer  -->

	<!-- Start copyright  -->
	<div class="footer-copyright">
		<p class="footer-company">
			All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By
			: <a href="https://html.design/">html design</a>
		</p>
	</div>
	<!-- End copyright  -->

	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

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