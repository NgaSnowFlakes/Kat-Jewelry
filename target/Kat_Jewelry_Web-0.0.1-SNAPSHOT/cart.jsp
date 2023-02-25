<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>


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
<script src="js/angular.min.js"></script>
<script src="js/angular-route.js"></script>

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

	<!-- Cart section -->
	<section class="cart container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item"><a href="product.jsp"></i>Trang
							sức</a></li>
					<li class="breadcrumb-item active" aria-current="page">Giỏ
						hàng</li>
				</ol>
			</nav>
		</div>
		<!-- Cart Start -->
		<div class="cart-table container">
			<div class="table-responsive">
				<table class="table table-bordered text-center">
					<thead class="fw-bolder" style="background: #2E1C11; color: white;">
						<tr class="">
							<th>Xóa</th>
							<th>Ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Giá</th>
							<th>Số lượng</th>
							<th>Thành tiền</th>
						</tr>
					</thead>
					<tbody style="font-family: 'boostrap-icons'">
						<tr class="align-middle" ng-repeat="item in cart_item">
							<td><a href="#" ng-click="removeItem(item)"> <i
									class="bi bi-trash" style="color: #2E1C11"></i>
							</a></td>
							<td><img src="images/products/{{item.pImage}}" alt=""
								class="img-fluid" style="height: 80px; object-fit: contain;"></td>
							<td class="text-uppercase">{{item.pName}}</td>
							<td>{{item.pPrice | currency:"₫":2}}</td>
							<td><div class="input-group quantity mx-auto"
									style="width: 100px;">
									<div class="input-group-btn">
										<a class="btn btn-sm btn-web btn-minus" href="#"
											ng-click="decreaseQuantity(item)"> <i class="fa fa-minus"></i>
										</a>
									</div>
									<input type="text"
										class="form-control form-control-sm bg-dark border-0 text-center text-white fw-bold"
										value="{{item.Item_quantity}}" readonly>
									<div class="input-group-btn">
										<a class="btn btn-sm btn-web btn-plus" href="#"
											ng-click="increaseQuantity(item)"> <i class="fa fa-plus"></i>
										</a>
									</div>
								</div></td>
							<td class="fw-bolder">{{item.pPrice*item.Item_quantity |
								currency:"₫":2}}</td>
						</tr>

					</tbody>
				</table>
			</div>


			<div class="row table-under-box m-0"
				style="font-family: 'boostrap-icons'">
				<div class="col-12 col-md-6 col-lg-6 mt-4 p-0">
					<div class="card border border-1">
						<div class="card-body p-0">
							<div class="cart-title" style="background-color: #2E1C11;">
								<h5 class="text-white fw-bold" style="padding: 10px 20px;">COUPON</h5>
							</div>
							<p class="fs-6 ms-2">Enter your coupon code if you have one</p>
							<div class="row m-auto ms-2 mb-3 ">
								<div class="col-8 col-md-8 col-lg-8 p-0 text-center me-3">
									<input type="text" placeholder="Coupon Code"
										class="h-100 w-100 fs-6"></input>
								</div>
								<button class="btn btn-web col-3 col-md-3 col-lg-3">Apply</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-6 mt-4 p-0">
					<div class="card border border-1">
						<div class="card-body p-0">
							<div class="cart-title" style="background-color: #2E1C11;">
								<h5 class="text-white fw-bold" style="padding: 10px 20px;">TỔNG
									TIỀN</h5>
							</div>
							<div class="row">
								<div class="col-8 col-md-8 col-lg-8">
									<p class="ms-2">Subtotal</p>
									<p class="ms-2">Shipping</p>
									<hr>
									<p class="fw-bold ms-2">Total</p>
								</div>
								<!-- For database load -->
								<div class="col-4 col-md-4 col-lg-4 text-center">


									<p>{{getSubtotal() | currency:"₫":2}}</p>
									<p>{{getSubtotal() *10/100 | currency:"₫":2}}</p>
									<hr>
									<p class="fw-bold">{{ (getSubtotal() + (getSubtotal() *
										10/100)) | currency:"₫":2 }}</p>
								</div>
							</div>
							<a class="btn btn-web text-uppercase float-end mb-2 me-2"
								href="#"
								ng-click="checkOut(getSubtotal() + (getSubtotal() * 10/100))">thanh
								toán</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Cart End -->
		<!--Check out Modal -->
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
						<h4 style="color: #2E1C11">Thanh toán thành công đơn hàng: {{
							(getSubtotal() + (getSubtotal() * 10/100)) | currency:"₫":2 }}</h4>
						<h6>Cảm ơn vì luôn tin tưởng chúng tôi!</h6>
					</div>
					<div class="modal-footer">
						<a href="HomeController" class="btn btn-primary">Về trang chủ</a>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- Footer section -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Finish footer section -->


	<!-- Script -->
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>


	<script>
		var app = angular.module("myApp", [ "ngRoute" ]);
		app.controller("HomeController", function($scope, $rootScope, $http) {
			$http({
				method : 'GET',
				url : 'getCategory'
			}).then(function successCallback(response) {
				$rootScope.cate = response.data;
				/* console.log($rootScope.cate); */
			});
			$http({
				method : 'GET',
				url : 'showCartController'
			}).then(function successCallback(response) {
				$rootScope.cart_item = response.data;
				console.log($rootScope.cart_item);
			});

			$scope.getNameURL = function() {
				let link = window.location.href;
				let lastLink = link.lastIndexOf("/");
				let nameURL = link.substring(lastLink + 1, link.length);
				if (nameURL.includes("cart.jsp")) {
					return true;
				}
				if (nameURL.includes("Inc_Desc_Remove")) {
					return true;
				}
			}

			$scope.getSubtotal = function() {
				var a = [];
				a = $rootScope.cart_item;
				if (a && a.length > 0) {
					var subtotal = 0;
					angular.forEach(a, function(item) {
						subtotal += item.pPrice * item.Item_quantity;
					});
					return subtotal;
				} else
					return null;

			};

			$scope.decreaseQuantity = function(item) {
				if (item.Item_quantity > 1) {
					item.Item_quantity--;
					$scope.updateCart(item, "desc")
				}
			};
			$scope.increaseQuantity = function(item) {
				item.Item_quantity++;
				$scope.updateCart(item, "inc");
			};
			$scope.removeItem = function(item) {
				var index = $rootScope.cart_item.indexOf(item);
				if (index > -1) {
					$rootScope.cart_item.splice(index, 1);
					$scope.updateCart(item, "remove");
				}

			};

			$scope.updateCart = function(item, action) {
				$http(
						{
							method : 'POST',
							url : 'Inc_Desc_Remove?action=' + action + "&pID="
									+ item.pID + "&qty=" + item.Item_quantity
						}).then(function successCallback(response) {

				});
			}
			
			$scope.checkOut = function(totalAmount){
				$http(
						{
							method : 'POST',
							url : 'Checkout?totalAmount=' + totalAmount
						}).then(function successCallback(response) {
							$scope.check = response.data;
							if($scope.check == "true"){
								showModal();
							}
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
