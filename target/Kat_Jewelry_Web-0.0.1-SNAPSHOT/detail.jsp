<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Chi tiết sản phẩm</title>


<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/bootstrap.bundle.min.js"></script>
<!-- Link css -->
<!-- <link rel="stylesheet" href="gallery.css" /> -->
<link rel="stylesheet" href="project_css/header_footer.css">

<!-- Link boostrap and icon -->
<link rel="stylesheet" href="icofont/icofont/icofont.min.css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />

<style>
@media screen and (max-width:576px) {
	.input-group.quantity.mx-auto {
		width: 50% !important;
	}
}
</style>
</head>

<body ng-app="myApp" ng-controller="HomeController">
	<!-- Header section -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- Finish header -->

	<!-- Image header sectiOn -->
	<div class="section mainHome container-fluid p-0 mb-4">
		<img src="images/slider/slide.webp" alt="" class="img-fluid w-100">
	</div>
	<!-- Finish image header section -->

	<!-- DEtail section -->
	<section class="detail container ">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item"><a href="product.jsp"></i>Trang
							sức</a></li>
					<li class="breadcrumb-item active" aria-current="page">Chi
						tiết sản phẩm</li>
				</ol>
			</nav>
		</div>

		<div class="row detail-product container m-0"
			style="font-family: 'boostrap icons';">
			<div class="col-12 col-md-6 col-lg-6">
				<img id="main-img" src="images/products/${product.pImage }" alt=""
					style="max-height: 400px" class="img-fluid w-100">
				<div class="product-thumnail d-flex mt-2">
					<c:forEach items="${list_Thumbnails}" var="thumb">
						<div class="col-3 col-md-3 col-lg-3 text-center">
							<img src="images/products/${thumb.thumbnailIMG }"
								ng-click="changeImg('${thumb.thumbnailIMG }')" alt=""
								class="img-fluid w-75">
						</div>
					</c:forEach>

				</div>
			</div>

			<div class="col-12 col-md-6 col-lg-6">
				<h3 class="name text-uppercase">${product.pName}</h3>
				<div class="status-box d-flex">
					<p>
						Tình trạng: <span class="status text-danger">Còn hàng</span>
					</p>
					<p class="ms-2">
						Mã sản phẩm: <span class="product_id">${product.pID}</span>
					</p>
				</div>
				<hr>
				<br>
				<p class="product_desc">${product.pDesc}</p>
				<hr>
				<br>
				<h3 class="product_price">{{price | currency:"₫":2}}</h3>
				<div class="quantity row">
					<div class="col-3 col-md-3 col-lg-3"></div>
					<p>Số Lượng:</p>
					<div class="input-group quantity mx-auto w-25">
						<div class="input-group-btn">
							<a class="btn btn-sm btn-minus" href="#" ng-click="decrease()">
								<i class="fa fa-minus"></i>
							</a>
						</div>
						<input type="text" ng-model="quantity" readonly
							class="form-control form-control-sm border-0 text-center text-white fw-bold opacity-50"
							style="background: #2E1C11" value="1">
						<div class="input-group-btn">
							<a class="btn btn-sm btn-plus" href="#" ng-click="increase()">
								<i class="fa fa-plus"></i>
							</a>
						</div>
					</div>

				</div>
				<div class="text-center mt-4">
					<a href="#" ng-click="addToCart(${product.pID}, quantity)"
						class="btn btn-web opacity-50">Thêm vào giỏ hàng</a>
				</div>
				<div class="social_media d-flex gap-2 mt-2">
					<a href="#" style="color: #2E1C11"><i class="bi bi-facebook"></i></a>
					<a href="#" style="color: #2E1C11"><i class="bi bi-twitter"></i></a>
					<a href="#" style="color: #2E1C11"><i class="bi bi-google"></i></a>
					<a href="#" style="color: #2E1C11"><i class="bi bi-pinterest"></i></a>
				</div>
			</div>
		</div>

	</section>
	<!-- End detail section -->

	<!-- Toast message -->
	<div class="toast-container position-fixed bottom-0 end-0 p-3">
		<div id="liveToast" class="toast" role="alert" aria-live="assertive"
			aria-atomic="true">
			<div class="toast-header"
				style="background-color: #f5f4f3; color: #2E1C11;">
				<img src="images/logo/logo.webp"
					style="height: 20px; width: 40px; object-fit: center;"
					class="rounded me-2 img-fluid" alt="..." /> <strong
					class="me-auto">Thông báo</strong> <small>mins ago</small>
				<button type="button" class="btn-close" data-bs-dismiss="toast"
					aria-label="Close"></button>
			</div>
			<div class="toast-body text-center fw-bold" style="color: #2E1C11">Sản
				phẩm đã được thêm vào giỏ hàng</div>
		</div>
	</div>

	<!-- Footer section -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Finish footer section -->


	<!-- Script -->
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script src="js/angular.min.js"></script>
	<script src="js/angular-route.js"></script>

	<script>
      var app = angular.module("myApp", ["ngRoute"]);
      app.controller("HomeController", function($scope,$rootScope, $http) {
        $http({
	            method: 'GET',
	            url:'getCategory'
	          }).then(function successCallback(response){
	            $rootScope.cate = response.data;
	            console.log($rootScope.cate);
	          });
        
        $scope.getNameURL = function(){
        	let link = window.location.href;
        	let lastLink = link.lastIndexOf("/");
        	let nameURL = link.substring(lastLink +1, link.length);
        	if(nameURL.includes("detail")){
        		return true;
        	}
    	}
        
        $scope.changeImg = function(src){
        	 document.getElementById("main-img").src = "images/products/" + src;
        }
        
        $scope.addToCart = function(pID, pQuantity) {
        	console.log(pID, pQuantity);
			 $http({
				method : 'POST',
				url : "add_to_cart?pID="+pID+"&pQuantity="+pQuantity
			}).then(function successCallback(response) {
				$scope.data = response.data;
				console.log($scope.data);
				if($scope.data == "false"){
					window.location.href = "login.jsp"
				}else{
					showToast();
				}
			});
		}
        function showToast(){
			const toastLiveExample = document.getElementById("liveToast");
			    var bsAlert = new bootstrap.Toast(toastLiveExample,{delay:2000});//inizialize it
			    bsAlert.show();//show it
		}
        $scope.price = ${product.pPrice};
        
        $scope.quantity = 1;
        $scope.decrease= function(){
        	if($scope.quantity > 1){
        		$scope.quantity--;
        		$scope.updatePrice();
        	}
        }
        $scope.increase= function(){
        		$scope.quantity++;
        		$scope.updatePrice();
        }
        $scope.updatePrice = function(){
        	$scope.price = ${product.pPrice} * $scope.quantity;
        }
        
	});

    </script>
</body>
</html>
