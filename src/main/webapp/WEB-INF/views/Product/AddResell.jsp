<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="package/dist/sweetalert2.all.min.js"></script>
    <link rel="stylesheet" href="package/dist/sweetalert2.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#imgUpload").on("change", function() {
		readURL(this);
	});
	
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function (e){
			$("#View").attr("src", e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		} 
	};//end func
	
	function setThumbnail(event) {
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

	            let flatpickrInstance
	            
});//end ready
</script>
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
                    <h2>My Account</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="shop-raffle.html">상점으로 이동하기</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start My Account  -->
      <div class="shop-add-box"style="    height: 600px;padding-bottom: 0px;margin-bottom: 200px;" >
        <h1 style="border-bottom: 3px solid #222; margin-left:20px; padding-top: 40px;">래플 등록</h1>
        <div class="container tm-mt-big tm-mb-big">
            <div class="row">
              <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
                <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                  <div class="row" style="padding-top: 20px;">
                    <div class="col-12">
                      <h2 class="tm-block-title d-inline-block"></h2>
                    </div>
                  </div>
                  
                  <form action="loginCheck/AddResell" class="tm-edit-product-form">
                  <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <div class="tm-product-img-dummy mx-auto">
                            <i
                              class="fas fa-cloud-upload-alt tm-upload-icon"
                              onclick="document.getElementById('fileInput').click();"
                            ></i>
                        </div>
                        <input type="file" id="upImgFiles" onChange="uploadImgPreview();" accept="image/*" multiple>

                        <hr/>
                    
                        <div id="thumbnailImgs"></div>

                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                            <div class="form-group mb-3">
                              <label for="name">Product Name</label>
                              <input id="name" name="name" type="text" class="form-control validate" required/>
                            </div>
                            <div class="form-group mb-3">
                              <label for="description">Description</label>
                              <textarea class="form-control validate" rows="3" required></textarea>
                            </div>
                            <div class="form-group mb-3">
                                <label for="price">Price</label>
                                <input id="price" name="price" type="text" class="form-control validate" required/>
                            </div>
                            <div class="row">
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label for="expire_date">Expire Date</label>
                                    <input id="expire_date" name="expire_date" type="datetime-local" class="form-control validate" data-large-mode="true"/>
                                </div>
                                <div class="form-group mb-3 col-xs-12 col-sm-6">
                                    <label for="stock">Units In Stock</label>
                                    <input id="stock" name="stock" type="text" class="form-control validate" required/>
                                </div>
                            </div>
                      </div>
                    </div>
                    <div class="col-12">
                      <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Product Now</button>
                    </div>
                  </form>
                  
                  </div>
                </div>
              </div>
            </div>
          </div>

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