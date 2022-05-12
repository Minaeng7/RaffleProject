<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://kit.fontawesome.com/64d58efce2.js"
	crossorigin="anonymous"></script>
<script src="package/dist/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="package/dist/sweetalert2.min.css">
<script>

      function check_pw(){

          var pw = document.getElementById('passwd').value;
          var SC = ["!","@","#","$","%"];
          var check_SC = 0;
        console.log(passwd.length);
          if(passwd.length < 6 || passwd.length>16){
            
            Swal.fire(
              "비밀번호를 6글자 이상 16자 이하 입력해주세요."
              );       
         document.getElementById('passwd').value='';
          }
          for(var i=0;i<SC.length;i++){
              if(passwd.indexOf(SC[i]) != -1){
                  check_SC = 1;
              }
          }
          if(check_SC == 0&&passwd.length>6){
              Swal.fire(
                '!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.'
              );
              document.getElementById('passwd').value='';
          }
          if(document.getElementById('passwd').value !='' && document.getElementById('passwd2').value!=''){
              if(document.getElementById('passwd').value==document.getElementById('passwd2').value){
                  document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                  document.getElementById('check').style.color='blue';
              }
              else{
                  document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                  document.getElementById('check').style.color='red';
              }
          }
      }
  </script>

<link rel="stylesheet" href="css/loginForm.css" />
<title>Sign in & Sign up Form</title>
</head>
<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">
				<form action="login" class="sign-in-form" method="get">
					<h2 class="title">Sign in</h2>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text" name="userid"
							placeholder="Username" />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password" name="passwd"
							placeholder="Password" />
					</div>
					<input type="submit" value="Login" class="btn solid" />
				</form>
				<form action="memberAdd" class="sign-up-form">
					<h2 class="title">Sign up</h2>
					<div class="input-field">
						<i class="fas fa-user"></i> <input type="text" name="userid"
							id="userid" placeholder="UserID" />
						<!-- 회원가입_아이디 -->
					</div>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="email" name="email"
							placeholder="Email" />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password" name="passwd"
							id="passwd" placeholder="userPW" onchange="check_pw()" />
						<!-- 회원가입_비밀번호 -->
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i>
						<!-- 회원가입_비밀번호 확인 -->
						<a><input type="password" placeholder="userPW2" name="passwd2"
							id="passwd2" onchange="check_pw()" />&nbsp;<span id="check" name="check"></span></a>
						</td>
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="text" placeholder="Name"
							name="username" />
						<!-- 회원가입_이름 -->
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="text"
							placeholder="Nickname" name="nickname" />
						<!-- 회원가입_닉네임 -->
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="date" id="start"
							name="birth" value="2000-01-01" min="1900-01-01" max="2022-12-31" />
						<!-- 회원가입_생년월일 -->
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="text"
							placeholder="Phone Number" name="phone" />
						<!-- 회원가입_핸드폰 번호 -->
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i>
					 	<a><input type="text" name="post" id="sample4_postcode" placeholder="우편번호"/>
					 	<img src="images/find.png" height="30px" width="30px" id="searchPost" onclick="sample4_execDaumPostcode()"></a>
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i>
					 	<input type="text" name="addr1" id="sample4_roadAddress" placeholder="도로명주소"/>
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i>
					 	<input type="text" name="addr2" id="sample4_jibunAddress" placeholder="지번주소"/>
					</div>				
					<span id="guide" style="color:#999"></span>		
					
					
					
					
					<input type="submit" class="btn" value="Sign up" />
				</form>
			</div>
		</div>

		<div class="panels-container">
			<div class="panel left-panel">
				<div class="content">
					<h3>처음 오셨나요?</h3>
					<p>회원가입 해주세요.</p>
					<button class="btn transparent" id="sign-up-btn">회원가입</button>
				</div>
				<img src="images/log.svg" class="image" alt="" />
			</div>
			<div class="panel right-panel">
				<div class="content">
					<h3>가입이 되어있으시다면</h3>
					<p>로그인 해주세요</p>
					<button class="btn transparent" id="sign-in-btn">Sign in</button>
				</div>
				<img src="images/register.svg" class="image" alt="" />
			</div>
		</div>
	</div>

	<script src="resources/app.js"></script>
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
</body>
</html>