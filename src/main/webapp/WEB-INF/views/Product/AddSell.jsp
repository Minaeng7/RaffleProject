<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<script src="package/dist/sweetalert2.all.min.js"></script>
<link rel="stylesheet" href="package/dist/sweetalert2.min.css">
<script>
    
	/* function setThumbnail(event) {
     for (var image of event.target.files) { 
         var reader = new FileReader();
         
          reader.onload = function(event) { 
              var img = document.createElement("img");
               img.setAttribute("src", event.target.result);
               img.style.width ="500    px";
                document.querySelector("div#image_container").appendChild(img);
             }; 
             console.log(image); 
             reader.readAsDataURL(image); } 
            }

            let flatpickrInstance */
            
</script>



<body>

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
					<h2>Add Raffle</h2>
					<ul class="breadcrumb">
						<li class="breadcrumb-item"><a href="SList">상점으로
								이동하기</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Title Box -->

	<!-- Start My Account  -->
	<div class="shop-add-box"
		style="height: 600px; padding-bottom: 0px; margin-bottom: 400px;">
		<h1
			style="border-bottom: 3px solid #222; margin-left: 20px; padding-top: 40px;">래플
			등록</h1>
		<div class="container tm-mt-big tm-mb-big">
			<div class="row">
				<div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
					<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
						<div class="row" style="padding-top: 20px;">
							<div class="col-12">
								<h2 class="tm-block-title d-inline-block"></h2>
							</div>
						</div>

						<form action="loginCheck/AddSell"  enctype="multipart/form-data" method="post" class="tm-edit-product-form">

							<div class="row tm-edit-product-row">
								<div class="col-xl-6 col-lg-6 col-md-12">
									<img id="blah" src="#" style="width:180px; height:180px" onclick="inputfile()"/>
									<img id="blah1" src="#" style="width:180px; height:180px" onclick="inputfile1()"/>
									<img id="blah2" src="#"  style="width:180px; height:180px" onclick="inputfile2()"/>
									<input type="file" id="file" name="file" onchange="setThumbnail(event);" required>
									<input type="file" id="file1" name="file1" onchange="setThumbnail1(event);" required>
									<input type="file" id="file2" name="file2" onchange="setThumbnail2(event);" required>
							
<!-- 이미지 미리보기 -->
	<script>
			function inputfile(){
				$('#file').click();
				
			}
			function inputfile1(){
				$('#file1').click();
				
			}
			function inputfile2(){
				$('#file2').click();
				
			}
	
	
	
	          function setThumbnail(event) {
		            var uploadWrap = event.target.parentNode; 
		            //이벤트 대상자의 부모
		                  var reader = new FileReader();
		 
		                   reader.onload = function(event) {
		                        var newImg = document.createElement("img");
								$('#blah').attr('src',event.target.result);		                       
								 uploadWrap.appendChild(newImg);

								
		                }; 
		                reader.readAsDataURL(event.target.files[0]);
						console.log("setThumbnail")
		    
		        }

	          function setThumbnail1(event) {
		            var uploadWrap = event.target.parentNode; 
		            //이벤트 대상자의 부모
		                  var reader = new FileReader();
		 
		                   reader.onload = function(event) {
		                        var newImg = document.createElement("img");
								$('#blah1').attr('src',event.target.result);		                     
								   uploadWrap.appendChild(newImg);

								
		                }; 
		                reader.readAsDataURL(event.target.files[0]);
						console.log("setThumbnail")
		    
		        }


	          function setThumbnail2(event) {
		            var uploadWrap = event.target.parentNode; 
		            //이벤트 대상자의 부모
		                  var reader = new FileReader();
		 
		                   reader.onload = function(event) {
		                        var newImg = document.createElement("img");
								$('#blah2').attr('src',event.target.result);		                       
								 uploadWrap.appendChild(newImg);

								
		                }; 
		                reader.readAsDataURL(event.target.files[0]);
						console.log("setThumbnail")
		    
		        }

	</script>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
									<div class="form-group mb-3">
										<label for="name">Product Name</label> <input id="name"
											name="rafflename" type="text" class="form-control validate"
											required />
									</div>
									<div class="form-group mb-3">
										<label for="name">nickame</label> <input id="name"
											name="nickname" type="text" class="form-control validate"
											required />
									</div>
									<div class="form-group mb-3">
										<label for="name">memberno</label> <input id="name"
											name="memberno" type="text" value="${login.memberno}"
											class="form-control validate" readonly />
									</div>
									<div class="form-group mb-3">
										<label for="description">Description</label>
										<textarea class="form-control validate" name="text" rows="3"
											required></textarea>
									</div>
									<div class="form-group mb-3">
										<label for="price">Raffleprice</label> <input id="price"
											name="raffleprice" type="text" class="form-control validate"
											required />
									</div>
									<div class="row">
										<div class="form-group mb-3 col-xs-12 col-sm-6">
											<label for="expire_date">Deadline</label> <input
												id="expire_date" name="deadline" type="date"
												class="form-control validate" data-large-mode="true" required/>
										</div>
										<div class="form-group mb-3 col-xs-12 col-sm-6">
											<label for="stock">Raffleamount</label> <input id="stock"
												name="raffleamount" type="text"
												class="form-control validate" value="1" readonly />
										</div>
									</div>
								</div>
							</div>
							<div class="col-12">
								<button type="submit"
									class="btn btn-dark btn-block text-uppercase">Add
									Product Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	

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
	<script>
        $(function() {
          $("#expire_date").datepicker({
        	  dateFormat: 'yy/mm/dd'
          });
        });
      </script>
</body>

</html>