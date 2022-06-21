<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="package/dist/sweetalert2.min.css">

</head>
<body>
<!-- 관리자로 로그인 시 변경되는 부분 -->
<c:choose>
	<c:when test="${login.memberno == 0 }">
		<jsp:include page="../Admin/top.jsp"></jsp:include>
	</c:when>
	<c:when test="${login.memberno != 0 }">
		<jsp:include page="../common/top.jsp"></jsp:include>
	</c:when>
</c:choose>
	



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
                    <h2>공지사항</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
    
 <!-- Start All Title Box -->
    <div class="shop-box-inner">
        <div class="container">
            <div class="row">
				<div class="board_list_wrap">
			        <table class="board_list">
			            <caption class="notice" style="border-bottom: 1px solid black; margin-bottom: 15px;">공지사항</caption>
			        </table>
			        <form action="admin_edit">
			        <input type="hidden" name="memberno" value="${login.memberno }">
			        <div id="forum_title">
			          	  제목 <input type="text" name="title" id="utitle" rows="1" cols="55" value="${ndto.title }" maxlength="100" readonly></input><br>
						번호 <input type="text" name="bno" value="${ndto.bno }" readonly><br><br>
						작성자 <input type="text" name="username" value="${ndto.username }" readonly> 
			        </div>
			        <div id="forum_content">
			           	본문  <textarea name="content" id="ucontent" cols="2" readonly>${ndto.content }</textarea>
			        </div>
			        <!-- <div style="text-align: right; margin-top:30px;">
			            <button type="button" onclick="location.href='notice'" class="btn btn-secondary">목록보기</button>
			        </div> -->
			        <!-- 관리자일 경우 수정 /삭제 가능-->
			        <c:if test="${login.memberno  == 0}">
			        <div style="text-align: right; margin-top:30px;">
			            <button type="submit" class="btn btn-outline-dark">수정</button>
			            <button type="button" onclick="location.href='admin_delete?bno=${ndto.bno}'" class="btn btn-outline-dark">삭제</button>
			        </div>
			        </c:if>
			        <!-- 관리자 아닌경우 -->
			        <c:if test="${login.memberno != 0}">
			        <div style="text-align: right; margin-top:30px;">
			            <button type="button" onclick="location.href='notice'" class="btn btn-outline-dark">목록보기</button>
			        </div>
			        </c:if>
				</form>
			    </div>
		    </div>
	    </div>
    </div>

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