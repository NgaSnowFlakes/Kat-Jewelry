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

<body>
	<!-- Header section -->
	<jsp:include page="menu.jsp"></jsp:include>

	<!-- Finish header -->

	<!-- Image header sectiOn -->
	<div class="section mainHome container-fluid p-0 mb-4">
		<img src="images/slider/slide.webp" alt="" class="img-fluid w-100">
	</div>
	<!-- Finish image header section -->


	<!-- Register section -->

	<section class="register container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item active" aria-current="page">Đăng kí</li>
				</ol>
			</nav>
		</div>
		<div class="register-box">
			<h5 class="fw-bold">Đăng kí tài khoản</h5>
			<form class="row" style="color: #2E1C11;" action="signUp"
				method="POST" name="signUpForm">
				<div class="col-12 col-md-6 col-lg-6">
					<div class="mb-3">
						<label for="firstname" class="form-label">Họ <span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="text" name="firstname" class="form-control" id="firstname"
							required>
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email address <span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="email" name="email" class="form-control" id="email"
							required>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-6">
					<div class="mb-3">
						<label for="lastname" class="form-label">Tên<span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="text" name="lastname" class="form-control" id="lastname"
							required>
					</div>
					<div class="mb-3">
						<label for="password" class="form-label">Mật khẩu<span
							style="color: red; font-weight: bold;">*</span></label> <input
							type="password" name="password" class="form-control"
							id="password" required>
					</div>
				</div>
				<p class="error" style="color: red;">${errorMessage}</p>
				<div class="login-btn d-flex align-items-center">
					<button type="submit" class="btn-web me-4 px-4">Đăng kí</button>
					<a href="login.html"
						style="color: #2E1C11; text-decoration: underline; font-weight: bolder;">Đăng
						nhập</a>
				</div>
			</form>


		</div>


	</section>
	<!--Finish register section -->


	<!-- Footer section -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Finish footer section -->


	<!-- Script -->
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script src="app.js"></script>
</body>
</html>