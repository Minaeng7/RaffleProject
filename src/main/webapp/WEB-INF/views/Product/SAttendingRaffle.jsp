<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	//주소 동일
	$("#same-address").on("click", function() {
		if(this.checked){
			$("#name").val($("#username").val());
			$("#sample4_postcode").val($("#post").val());
			$("#sample4_roadAddress").val($("#address1").val());
			$("#sample4_jibunAddress").val($("#address2").val());
		} else {
			$("#username").val("");
			$("#sample4_postcode").val("");
			$("#sample4_roadAddress").val("");
			$("#sample4_jibunAddress").val("");
		}
		
	});//end click
	
});//end ready
</script>

</head>
<body>
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
                    <h2>결제 화면 </h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Cart  -->
    <form action="Sorder">
    <input type="hidden" name="sell_rno" value="${sdto.sell_rno }">
    <input type="hidden" name="memberno" value="${login.memberno }">
    <input type="hidden" name="phone" value="${login.phone }">
    <input type="hidden" name="rafflename" value="${sdto.rafflename }">
    <div class="cart-box-main">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="checkout-address">
                        <div class="title-left">
                            <h3>배송지 정보</h3>
                        </div>
                        <!-- <form class="needs-validation" novalidate> -->
                            <div class="mb-3">
                                <label for="username">이름 *</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="username" name="username" value="${login.username }" readonly>
                                </div>
                            </div>
                            
                            <div class="mb-3">
                                <label for="post">주소 *</label><br>
                                <input type="text" class="" id="post" name="post" value="${login.post }" style="border: 1px solid #e8e8e8" readonly><br>
                                <input type="text" class="" id="address1" name="addr1" value="${login.addr1 }" style="border: 1px solid #e8e8e8" readonly>
                                <input type="text" class="" id="address2" name="addr2" value="${login.addr2 }" style="border: 1px solid #e8e8e8" readonly> 
                            </div>
                       
                            <hr class="mb-4">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="same-address">
                                <label class="custom-control-label" for="same-address">배송지 정보가 동일한 경우 선택하세요</label>
                            </div> 
							<hr class="mb-4">
<!-- 배송지 정보 수정 -->
                            <div class="mb-3">
                                <label for="username">이름 *</label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="name" name="" value="" required>
                                    <div class="invalid-feedback" style="width: 100%"> 이름을 입력하세요. </div>
                                </div>
                            </div>
                       
                            <div class="mb-3">
                                <label for="post">주소 *</label><br>
                                <input type="text" class="" id="sample4_postcode" name="" value="" style="border: 1px solid #e8e8e8" required>
                                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="border: 1px solid #e5e5e5"><br>
                                <input type="text" class="" id="sample4_roadAddress" name="" value="" style="border: 1px solid #e8e8e8">
                                <input type="text" class="" id="sample4_jibunAddress" name="" value="" style="border: 1px solid #e8e8e8"> 
                            </div>
<!-- 배송지 정보 수정 끝 -->
                    </div>
                </div>
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="odr-box">
                                <div class="title-left">
                                    <h3>상품</h3>
                                </div>
                                <div class="rounded p-2 bg-light">
                                    <div class="media mb-2 border-bottom">
                                        <div class="media-body"> <a href="SellRetrieve?sell_rno=${sdto.sell_rno }">${sdto.nickname }</a>
                                            <div class="small text-muted">가격 : ${sdto.rafflename }</div>
                                            <img src="images/${sdto.image }.jpg" class="img-fluid" alt="Image" style="height:200px; length:200px;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-12">
                            <div class="odr-box">
                                <div class="title-left">
                                    <h3>결제 정보</h3>
                                </div>
                                <div class="d-flex">
                                    <div class="font-weight-bold">Product</div>
                                    <div class="ml-auto font-weight-bold">Total</div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <label>Price</label>
                                    <div class="ml-auto font-weight-bold"> <fmt:formatNumber value="${sdto.raffleprice }" maxFractionDigits="3"/> </div>
                                </div>
                                <div class="d-flex">
                                    <label>Amount</label>
                                    <div class="ml-auto font-weight-bold"> ${sdto.raffleamount } </div>
                                </div>
                                <hr class="my-1">
                                
                                <div class="d-flex">
                                    <div class="font-weight-bold">결제 수단</div>
                                </div>
                                <div class="d-block my-3">
                                <div class="custom-control custom-radio">
                                    <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                    <label class="custom-control-label" for="credit">신용카드</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                    <label class="custom-control-label" for="debit">휴대폰</label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                                    <label class="custom-control-label" for="paypal">무통장입금</label>
                                </div>
                                
                                <hr>
                                <div class="d-flex gr-total">
                                    <h5>Total Price</h5>
                                    <div class="ml-auto h5"> ${sdto.raffleprice} </div>
                                </div>
                                <input type="submit" value="결제하기" style="border: 1px solid #e5e5e5">
                                <!-- <button onclick="" class="" style="border: 1px solid #e5e5e5">결제하기</button> -->
                                <hr class="d-flex">
                            </div>
                        </div>
                         
                        <div class="col-12 d-flex shopping-box"> <a href="checkout.html" class="ml-auto btn hvr-hover">Place Order</a> </div>
                        
                    </div>
                </div>
            </div>
		</div>
	</div>
</div>
</form>
<!-- End Cart -->
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