<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="project_css/header_footer.css" />
<link rel="stylesheet" href="project_css/instagram.css">
<link rel="stylesheet" href="icofont/icofont/icofont.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
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


	<!-- Instagram section -->
	<section class="instagram container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item active" aria-current="page">Instagram</li>
				</ol>
			</nav>
		</div>

		<div class="row instagram-board">
			<div class="line-border p-0 my-3"
				style="background-color: #2E1C11; height: 1px; opacity: 0.3;"></div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i1.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i2.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i3.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i4.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i5.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i6.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i7.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i8.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i9.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i10.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i11.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...</h6>
					</div>
				</div>
			</div>
			<div class="col-6 col-md-4 col-lg-4 my-2">
				<div class="card">
					<div class="image">
						<img src="images/instagram/i12.jpg" class="card-img-top" alt="..." />
						<div class="overlay">
							<div class="icon">
								<a href="#"><i class="bi bi-heart"></i><span>156</span></a> <a
									href="#"><i class="bi bi-chat"></i><span>2</span></a>
							</div>
						</div>
					</div>
					<div class="card-body text-center">
						<h6 class="card-title">Đầu năm mua vàng cuối năm mua bạc...t
							line</h6>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Product section -->

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
        	if(nameURL.includes("instagram.jsp")){
        		return true;
        	}
    	}
	});

    </script>
</body>
</html>