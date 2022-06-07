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

</head>

<body>


    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>My info</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="SList">상점으로 이동하기</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start My Account  -->
    <form action = "updateMyinfo">
      <div class="mypagebox" align="center">
        <h1 style="border-bottom: 3px solid #222; margin-left:20px">회원정보</h1>
        <div class="name_profile" >
        <strong class="name" style="font-size : 20px; color:#000; padding:25px 60px 18px 0;"  >${mypage.username}</strong>
        </div>
        <div class="profile_info" >
            <h4 class="group_title">로그인정보</h4>
            <div class="mypage_unit"> 
                <h5 class="login_title">이메일주소</h5>
                <input type="text" name = "email" value = "${mypage.email}"/>
            
            </div>
            <div class="mypage_unit">
            <h5 class="login_title">비밀번호</h5>
            <input type="password" name = "passwd" value = "${mypage.passwd}"/>
            
            </div>
            
        
        <div class="profile_group" >
            <h4 class="group_title" >개인정보</h4>

            <div class="mypage_unit"> 
                <h5 class="login_title">아이디</h5>
                <p class="id_data" name = "userid">${mypage.userid}</p>
            </div>
            <div class="mypage_unit">
            <h5 class="login_title">휴대전화번호</h5>
             <input type="text" name = "phone" value = "${mypage.phone}"/>
            
            </div>
            <div class="mypage_unit">
                <h5 class="login_title">생년월일</h5>
                <p class="birthday_data" name = "birth" value="${mypage.birth}">${mypage.birth}</p>
                    
            </div>
            <div class="mypage_unit_bottom">
                <h5 class="login_title">주소</h5>
                <input type="text" name = "addr1" value = "${mypage.addr1}"/>
                 
                </div>
        </div>

        <button class="btn btn-dark">저장하기</button>
    </div>
        
        </div>
        </form>
    <!-- End My Account -->

   

    
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