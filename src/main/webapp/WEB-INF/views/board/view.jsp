<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="package/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="package/dist/sweetalert2.min.css">
  
<!-- <script type="text/javascript">
$(document).ready(function(){
	$("#btnDelete").on("click", function() {
		if (confirm("삭제하시겠습니까?")) {
			document.form.action = "${path}/board/delete";
			document.form.submit();
		}
	});
	
	$("#btnUpdate").on("click", function() {
		var title = $("#title").val();
		var content = $("#content").val();
		var writer = $("#username").val();
		
		if (title == "") {
			alert("제목을 입력하세요");
			document.form.title.focus();
			return;
		}
		if (content == "") {
			alert("내용을 입력하세요");
			document.form.content.focus();
			return;
		}
		if (username == "") {
			alert("이름을 입력하세요");
			document.form.username.focus();
			return;
		}
		document.form.submit();
	})
})

</script> -->
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
    
     <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>자유게시판 페이지입니다.</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/raffle/">Home</a></li>
                        <li class="breadcrumb-item active">자유게시판</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
    
    <ul class="left-board">
        <li class="left-side-menu">게시판 목록</li>
        <li><a href="notice">공지사항</a></li>
        <li><a class="notice_color" href="forum">자유 게시판</a></li>

    </ul>
<div class="board_list_wrap">

        <table class="board_list">
            <caption class="notice" style="border-bottom: 1px solid black; margin-bottom: 15px;">자유게시판</caption>
        </table>
        <div id="forum_title">
          	  제목 <input type="text" name="title" id="utitle" rows="1" cols="55" value="${dto.title }" placeholder="제목을 입력해 주세요." maxlength="100"></input><br>
			번호 <input type="text" name="bno" value="${dto.bno }" readonly><br><br>
			작성자 <input type="text" name="username" value="${dto.username }" readonly> 
        </div>
        <div id="forum_content">
           	본문  <textarea name="content" id="ucontent" placeholder="내용을 입력해 주세요">${dto.content }</textarea>
        </div>
        <div style="text-align: right; margin-top:30px;">
            <button type="button" onclick="location.href='update'" class="btn btn-secondary">수정</button>
            <button type="button" onclick="location.href='delete'" class="btn btn-secondary">삭제</button>
        </div>

    </div>
    
    <jsp:include page="../common/bottom.jsp"></jsp:include>
</body>

</html>