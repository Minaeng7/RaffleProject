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
        
        <!-- 새로운 로그인정보  --> 
        <div class="profile_info" >
            <h4 class="group_title">로그인정보</h4>
            <div class="mypage_unit"> 
                <h5 class="login_title">이메일주소</h5>
                <input type="text" name = "email" value = "${mypage.email}" style="border: 1px solid #e8e8e8"/>
            
            </div>
            <div class="mypage_unit">
            <h5 class="login_title">비밀번호</h5>
            <input type="password" name = "passwd" value = "${mypage.passwd}" style="border: 1px solid #e8e8e8"/>
            
            </div>
            
        
        <div class="profile_group" >
            <h4 class="group_title" >개인정보</h4>

            <div class="mypage_unit"> 
                <h5 class="login_title">아이디</h5>
                <p class="id_data" name = "userid">${mypage.userid}</p>
            </div>
            <div class="mypage_unit">
            <h5 class="login_title">휴대전화번호</h5>
             <input type="text" name = "phone" value = "${mypage.phone}" style="border: 1px solid #e8e8e8"/>
            
            </div>
            <div class="mypage_unit">
                <h5 class="login_title">생년월일</h5>
                <p class="birthday_data" name = "birth" value="${mypage.birth}">${mypage.birth}</p>
                    
            </div>
            <div class="mypage_unit_bottom">
                <h5 class="login_title">주소</h5>
                <input type="text" name = "post" id="sample4_postcode" value = "${mypage.post}" style="border: 1px solid #e8e8e8"/>
                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="border: 1px solid #e5e5e5"><br>
                <input type="text" name = "addr1" id="sample4_roadAddress" value = "${mypage.addr1}" style="border: 1px solid #e8e8e8"/>
                <input type="text" name = "addr2" id="sample4_jibunAddress" value = "${mypage.addr2}" style="border: 1px solid #e8e8e8"/>
                 
                </div>
        </div>

        <button class="btn btn-dark">저장하기</button>
    </div>	
        <!-- 새로운 로그인 정보 끝 -->
        </div>
        </form>
    <!-- End My Account -->

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
</script>   

    
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