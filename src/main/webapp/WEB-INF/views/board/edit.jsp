<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="package/dist/sweetalert2.min.css">
 
</head>

<body>
          
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
    <ul class="left-board">
        <li class="left-side-menu">게시판 목록</li>
        <li><a href="notice">공지사항</a></li>
        <li><a class="notice_color" href="forum">자유 게시판</a></li>

    </ul>
    <div class="board_list_wrap">
        <table class="board_list">
            <caption class="notice" style="border-bottom: 1px solid black; margin-bottom: 10px;">자유게시판 수정</caption>
        </table>
        <form action="update">
        <input type="hidden" name="memberno" value="${fdto.memberno }" />
	        <div id="forum_title">
	            제목 <input name="title" id="utitle" rows="1" cols="55" value="${fdto.title }" maxlength="100" required></input>
	        </div>
	        <div id="forum_content">
	           번호 <input type="text" name="bno" value="${fdto.bno }" readonly><br><br>
	           작성자 <input type="text" name="username" value="${login.username }" readonly><br>
	            본문 <textarea name="content" id="ucontent" required>${fdto.content }</textarea>
	            <button type="submit" name="" class="btn btn-secondary" style="margin-left: 710px;
	            margin-top: 15px;">저장하기</button>
	        </div>
		</form>
    </div>
    <!-- End My Account -->

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
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
    <script>
        $(function() {
          $("#expire_date").datepicker();
        });
      </script>
</body>

</html>