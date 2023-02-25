<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Bộ sưu tập</title>


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

	<!-- Gallery section -->
	<section class="gallery container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item active" aria-current="page">Bộ sưu
						tập</li>
				</ol>
			</nav>
		</div>
		<div class="row line justify-content-center">
			Bộ sưu tập
			<div class="my-3"
				style="height: 1px; opacity: 0.3; background: #2E1C11;"></div>
		</div>
		<div class="row gallery-board g-5">
			<div class="col-12 col-md-4 col-lg-4 ">
				<div class="card gallery-card border border-1 p-3">
					<img src="images/gallery/g1.webp" class="img-fluid mt-2"
						style="height: 320px; object-fit: cover;" alt="...">
					<div class="card-body" style="height: 280px; overflow: hidden;">
						<h6 class="card-date fw-bolder">28/09/2018</h6>
						<h5 class="card-title fw-bolder">Trang sức độc đáo tạo nên cá
							tính riêng</h5>
						<small class="card-author fst-italic">Viết bởi Kat Boss</small>
						<p class="card-text fs-small">Trang sức bạc độc đáo, cá tính
							tạo nên cá tính riêng cho bạn Trang sức bạc độc đáo, cá tính sẽ
							là gợi ý món quà bạn không nên bỏ qua trong những dịp đặc biệt
							trong năm như ngày sinh nhật hay thời gian tới đây là 20.10 hay
							Noel. KAT Jewelry hân hạnh gửi đến bạn những mẫu trang sức bạc cá
							tính-quà tặng noel độc đáo ch...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 col-lg-4">
				<div class="card gallery-card border border-1 p-3 ">
					<img src="images/gallery/g2.webp" class="img-fluid mt-2"
						style="height: 320px; object-fit: cover;" alt="...">
					<div class="card-body" style="height: 280px; overflow: hidden;">
						<h6 class="card-date fw-bolder">11/06/2018</h6>
						<h5 class="card-title fw-bolder">Tỏa sáng mùa hè cùng trang
							sức bạc 925</h5>
						<small class="card-author fst-italic">Viết bởi Kat Boss</small>
						<p class="card-text fs-small">Mùa hè là mùa xách balo lên và
							thưởng ngoạn vài chuyến du lịch , trong hành trang du lịch của
							bạn ắt hẳn sẽ không thiếu những bộ cánh thật sexy, kem chống nắng
							cho tiết hè oi bức .Nhưng bạn biết để nổi bật hơn hẳn là gì không
							? Chỉ cần bỏ túi vài chiếc nhẫn,dây chuyền hoặc thêm 1 bộ lắc tay
							lắc chân thật phá cá...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 col-lg-4">
				<div class="card gallery-card border border-1 p-3 ">
					<img src="images/gallery/g3.webp" class="img-fluid mt-2"
						style="height: 320px; object-fit: cover;" alt="...">
					<div class="card-body" style="height: 280px; overflow: hidden;">
						<h6 class="card-date fw-bolder">11/06/2018</h6>
						<h5 class="card-title fw-bolder">Đắm chìm trong những món quà
							bằng trang sức bạc cực kỳ độc đáo và đầy ý nghĩa.</h5>
						<small class="card-author fst-italic">Viết bởi Kat Boss</small>
						<p class="card-text fs-small">Một anh chàng tinh tế , lãng mạn
							sẽ không bỏ qua được bài viết này chứ? Một gợi ý nhỏ cho những
							chàng trai còn đang bâng khuâng không biết chọn gì, lựa gì cho
							người yêu bé bỏng hoặc mẹ của mình trong những ngày đặc biệt của
							họ .</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 col-lg-4 ">
				<div class="card gallery-card border border-1 p-3 ">
					<img src="images/gallery/g4.webp" class="img-fluid mt-2"
						style="height: 320px; object-fit: cover;" alt="...">
					<div class="card-body" style="height: 280px; overflow: hidden;">
						<h6 class="card-date fw-bolder">12/06/2018</h6>
						<h5 class="card-title fw-bolder">Quốc tế thiếu nhi người lớn
							cũng có quà</h5>
						<small class="card-author fst-italic">Viết bởi Kat Boss</small>
						<p class="card-text fs-small">Hè đến cùng với đó là ngày lễ
							Quốc tế thiếu nhi , còn gì vui hơn nữa khi các bé được tặng những
							món quà thật ý nghĩa và xinh đẹp . KaT cũng từng là 1 đứa bé mong
							ngóng đến ngày này để được quà đó ^^</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 col-lg-4 ">
				<div class="card gallery-card border border-1 p-3 ">
					<img src="images/gallery/g1.webp" class="img-fluid mt-2"
						style="height: 320px; object-fit: cover;" alt="...">
					<div class="card-body" style="height: 280px; overflow: hidden;">
						<h6 class="card-date fw-bolder">28/09/2018</h6>
						<h5 class="card-title fw-bolder">Trang sức độc đáo tạo nên cá
							tính riêng</h5>
						<small class="card-author fst-italic">Viết bởi Kat Boss</small>
						<p class="card-text fs-small">Trang sức bạc độc đáo, cá tính
							tạo nên cá tính riêng cho bạn Trang sức bạc độc đáo, cá tính sẽ
							là gợi ý món quà bạn không nên bỏ qua trong những dịp đặc biệt
							trong năm như ngày sinh nhật hay thời gian tới đây là 20.10 hay
							Noel. KAT Jewelry hân hạnh gửi đến bạn những mẫu trang sức bạc cá
							tính-quà tặng noel độc đáo ch...</p>
					</div>
				</div>
			</div>
			<div class="col-12 col-md-4 col-lg-4 ">
				<div class="card gallery-card border border-1 p-3 ">
					<img src="images/gallery/g5.webp" class="img-fluid mt-2"
						style="height: 320px; object-fit: cover;" alt="...">
					<div class="card-body" style="height: 280px; overflow: hidden;">
						<h6 class="card-date fw-bolder">12/06/2018</h6>
						<h5 class="card-title fw-bolder">Quà tặng ngày phụ nữ Việt
							Nam</h5>
						<small class="card-author fst-italic">Viết bởi Kat Boss</small>
						<p class="card-text fs-small">Ngày phụ nữ Việt Nam là ngày
							quan trọng đặc biệt đến mẹ và người yêu của bạn, là ngày để mình
							thể hiện tình yêu thương giành cho họ. Cùng KaT với một số gợi ý
							nhỏ dành tặng cho "người quan trọng" trong "ngày đặc biệt" nhé</p>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- End gallery section -->

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
        	if(nameURL.includes("gallery.jsp")){
        		return true;
        	}
    	}
	});

    </script>
</body>
</html>
