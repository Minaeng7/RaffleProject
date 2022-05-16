<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>Raffles! For Collectors</title>
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
    <script  src="https://code.jquery.com/jquery-3.6.0.js" ></script>
    <script type="text/javascript">
/* for문 사용 필요 */
setInterval(function() {
        
        var dday = new Date("May 02, 2022, 2:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count0").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count0").innerHTML = day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 1000);
        
        setInterval(function() {
        
        var dday = new Date("May 02, 2022, 2:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count1").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count1").innerHTML = day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 1000);
        
        setInterval(function() {
        
        var dday = new Date("May 03, 2022, 2:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count2").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count2").innerHTML = day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 1000);
        setInterval(function() {
        
        var dday = new Date("May 05, 2022, 2:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count3").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count3").innerHTML = day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 1000);
        setInterval(function() {
        
        var dday = new Date("May 05, 2022, 2:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count4").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count4").innerHTML = day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 1000);

        setInterval(function() {
        
        var dday = new Date("May 05, 2022, 2:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count5").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count5").innerHTML = day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 1000);
</script>
</head>

<body>
	<jsp:include page="common/top.jsp"></jsp:include>
	<jsp:include page="index/index.jsp"></jsp:include>
	<jsp:include page="common/bottom.jsp"></jsp:include>

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="js/inewsticker.js"></script>
	<script src="js/bootsnav.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>