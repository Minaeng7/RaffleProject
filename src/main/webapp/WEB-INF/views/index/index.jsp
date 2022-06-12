<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
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
    <link rel="stylesheet" href="css/bootstrap.min.css" >
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
    <script type="text/javascript">
    
/* for문 사용 필요 */
setInterval(function() {
        
        var dday = new Date("July 02, 2022, 0:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count0").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count0").innerHTML = "남은시간 : " +day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 0000);
        
        setInterval(function() {
        
        var dday = new Date("July 01, 2022, 1:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count1").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count1").innerHTML = "남은시간 : " +day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 0000);
        
        setInterval(function() {
        
        var dday = new Date("May 23, 2022, 3:00:00").getTime();
        
        var today = new Date().getTime();
        var gap = dday - today;
        var day = parseInt(Math.ceil(gap / (1000 * 60 * 60 * 24)));
        var hour = parseInt(Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)));
        var min = parseInt(Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60)));
        var sec = parseInt(Math.ceil((gap % (1000 * 60)) / 1000));
       

        if(day<=0&&hour<=0&&min<=0&&sec<=0){
                    
                    document.getElementById("count2").innerHTML = "종료되었습니다.";
        }else{
        document.getElementById("count2").innerHTML = "남은시간 : " +day + "일 " + hour + ":" + min + ":" + sec ;
    }
        }, 0000);
        setInterval(function() {
        
        var dday = new Date("May 24, 2022, 3:00:00").getTime();
        
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
        }, 0000);
        setInterval(function() {
        
        var dday = new Date("May 19, 2022, 12:00:00").getTime();
        
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
        }, 0000);

        setInterval(function() {
        
        var dday = new Date("May 21, 2022, 2:00:00").getTime();
        
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
        }, 0000);
</script>
</head>

<body>

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
 <!-- Start Slider -->
    <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-left">
               <a href="ResellRetrieve?resell_rno=4">
                 <img src="images/banner-01.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20">나이키 범고래의 주인공은?</h1>
                            <p class="m-b-40" id="count0">id:count0</p>
                        </div>
                    </div>
                </div>
                </a>
            </li>
            <li class="text-center">
                <a href="SellRetrieve?sell_rno=5">
                <img src="images/banner-02.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20">에어 조던 의 당첨자는?</h1>
                            <p class="m-b-40" id="count1"></p>
                        </div>
                    </div>
                </div>
                </a>
            </li>
            <li class="text-right">
                <a href="SellRetrieve?sell_rno=3">
                <img src="images/banner-03.jpg" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20">나이키 x 슈프림 콜라보 신발!</h1>
                            <p class="m-b-40" id="count2">id:count2</p>
                        </div>
                    </div>
                </div>
                </a>
            </li>
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div>
    <!-- End Slider -->

    <!-- Start Categories  -->
    <div class="product_title" style="margin-top : 20px">
    <div class="MP"> Most Popular </div>
    <div class="sub_title" data-v-b71614ae=""> 인기 상품 </div>
    </div>
    <div class="categories-shop">
        <div class="container">
            <div class="row">
              <c:forEach var="slist" items="${slist}" >
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="height: 280px; "><!-- 여기 부터 반복 -->
                    <a href="SellRetrieve?sell_rno=${slist.sell_rno }">
                        <img class="img-fluid" src="images/${slist.image }.jpg" alt="" />
                	</a>
                </div>
              </c:forEach>
                <!-- <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="height: 280px;">
                    <a href="링크">
                        <img class="img-fluid" src="images/main-popular-02.jpg " alt="" />
                    </a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12" style="height: 280px;" >
                    <a href="링크">
                        <img class="img-fluid" src="images/main-popular-03.jpg" alt="" />
                    </a>
                </div> -->
            </div>
        </div>
        
        <div class="container">
            <div class="row">
              <c:forEach var="slist" items="${slist}" >
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"><!-- 여기 부터 반복 -->
                    <div class="shop-cat-box1" style="height: 100px; ">
                        <a class="brand-text" href="#">${slist.nickname}<br>
                            <h1  class="product_item" id="count3"></h1>
                            <p class="PI">남은시간</p>

                        </a>
                    </div>
                </div>
               </c:forEach>
                <!-- <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box1" style="height: 100px;">
                        <a class="brand-text" href="#">아디다스 이지 500 유틸리티 블랙<br>
                            <h1  class="product_item" id="count4"></h1>
                            <p class="PI">남은시간</p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="shop-cat-box1" style="height: 100px;">
                        <a class="brand-text" href="#">뉴발란스 992 MADE IN USA 그레이<br>
                            <h1 class="product_item" id="count5"></h1>
                            <p class="PI">남은시간</p>
                        </a>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
    <!-- End Categories -->

    <!-- Start Products  -->
    <div class="products-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="title-all text-center">
                        <h1>New In</h1>
                        <p>신규 등록 상품</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="special-menu text-center">
                        <div class="button-group filter-button-group">
                            <button class="active" data-filter="*">All</button>
                            <button data-filter=".raffle">Raffle</button><!-- Seller -->
                            <button data-filter=".resell">Re-sell</button><!--  -->
                        </div>
                    </div>
                </div>
            </div>

            <div class="row special-list">
                <div class="col-lg-3 col-md-6 special-grid resell">
                  <c:forEach var="slist_new" items="${slist_new}">
                    <a href="SellRetrieve?sell_rno=${slist_new.sell_rno }">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                             <!--마감임박 넣을거면 넣는곳-->
                            </div>
                            <img src="images/${slist_new.image }.jpg" class="img-fluid" alt="Image">
                        </div>
                        <div class="why-text">
                            <h4>${slist_new.nickname }</h4>
                            <h5></h5>
                        </div>
                    </div>
                    </a>
                  </c:forEach>
                </div>

                <div class="col-lg-3 col-md-6 special-grid raffle">
                  <c:forEach var="rlist_new" items="${rlist_new}">
                    <a href="ResellRetrieve?resell_rno=${rlist_new.resell_rno }">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                              <!--마감임박 넣을거면 넣는곳-->
                            </div>
                            <img src="images/${rlist_new.image }.jpg" class="img-fluid" alt="Image">
                        </div>
                        <div class="why-text">
                            <h4>${rlist_new.nickname }</h4>
                            <h5></h5>
                        </div>
                    </div>
                    </a>
                  </c:forEach>
                </div>

                <!-- <div class="col-lg-3 col-md-6 special-grid raffle">
                    <a href="링크">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                                               마감임박 넣을거면 넣는곳
                             </div>
                            <img src="images/img-pro-3.jpg" class="img-fluid" alt="Image">
                        </div>
                        <div class="why-text">
                            <h4>오프화이트 X 에어 조던 1 레트로 하이 유니버시티 블루</h4>
                            <h5></h5>
                        </div>
                    </div>
                    </a>
                </div> -->

                <!-- <div class="col-lg-3 col-md-6 special-grid resell">
                    <a href="링크">
                    <div class="products-single fix">
                        <div class="box-img-hover">
                            <div class="type-lb">
                                마감임박 넣을거면 넣는곳
                            </div>
                            <img src="images/img-pro-4.jpg" class="img-fluid" alt="Image">
                        </div>
                        <div class="why-text">
                            <h4>에어 조던 1 미드 그레이 앤 그린</h4>
                            <h5> </h5>
                        </div>
                    </div>
                    </a>
                </div> -->
            </div>
        </div>
    </div>
  
    <!-- ALL JS FILES -->
   
</body>