<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- <link rel="stylesheet" href="instagram.css"> -->
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


	<!-- Login section -->

	<section class="login container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item active" aria-current="page">Login</li>
				</ol>
			</nav>
		</div>
		<div class="row login-box">
			<h5 class="fw-bold">Đăng nhập tài khoản</h5>
			<div class="col-12 col-md-12 col-lg-6">
				<p class="fs-small fw-bold">Nếu bạn đã có tài khoản, đăng nhập
					tại đây.</p>
				<form style="color: #2E1C11;" action="Login" method="Post">
					<div class="mb-3">
						<label for="email" class="form-label">Email address <span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="email" name="user_Email" class="form-control" id="email"
							required>
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Password <span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="password" name="user_Password" class="form-control"
							id="password" required>
					</div>
					<p class="error" style="color: red;">${messageError}</p>
					<div class="login-btn d-flex align-items-center">
						<button type="submit" class="btn-web me-4 px-4">Đăng nhập</button>
						<a href="register.jsp"
							style="color: #2E1C11; text-decoration: underline; font-weight: bolder;">Đăng
							kí</a>
					</div>
				</form>
			</div>
			<div class="col-12 col-md-12 col-lg-6">
				<p class="fs-small fw-bold">Bạn quên mật khẩu? Nhập địa chỉ
					email để lấy lại mật khẩu qua email.</p>
				<form style="color: #2E1C11;">
					<div class="mb-3">
						<label for="email" class="form-label">Email address <span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="email" name="reset_Email" class="form-control"
							id="reset_email" required>
					</div>
					<div class="login-btn">
						<button ng-click="resetPassword()" class="btn-web me-4 px-4">Lấy
							lại mật khẩu</button>
					</div>
				</form>
			</div>
		</div>


	</section>
	<!--Finish Login section -->
	<!-- REset password modal -->
	<div class="modal fade" id="myModal" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered"
			style="max-width: 600px;">
			<div class="modal-content">
				<div class="modal-header" style="background-color: #f5f4f3;">
					<img src="images/logo/logo.webp"
						style="height: 10%; width: 10%; object-fit: center;"
						class="rounded me-2 img-fluid" alt="..." />
					<h1 class="modal-title fs-5 ms-3" style="color: #2E1C11">Thông
						báo</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body w-100">
					<h4 style="color: #2E1C11" id="resetMessage">{{resetMessage}}</h4>
					<h6>Cảm ơn vì luôn tin tưởng chúng tôi!</h6>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-web" data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

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
        	if(nameURL.includes("login.jsp")){
        		return true;
        	}
    	}
        
        $scope.resetPassword = function(){
        	var resetEmail = document.getElementById("reset_email").value;        	
        	$http({
	            method: 'GET',
	            url:'resetPassword?resetEmail='+resetEmail
	          }).then(function successCallback(response){
	           $scope.check = response.data;
	            if( $scope.check == "true"){
	            	$scope.resetMessage = "Mật khẩu mới của bạn là: 123456";
	            }else{
	            	$scope.resetMessage = "Email bạn vừa nhập không tồn tại!";
	            }
	            showModal();
	          });
        }
        function showModal(){
			const myModal = new bootstrap.Modal(document.getElementById('myModal'), {})
			  myModal.show(); 
		}
        
        
        
	});

    </script>
</body>
</html>