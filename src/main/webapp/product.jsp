<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sản phẩm</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="project_css/header_footer.css" />
<link rel="stylesheet" href="project_css/product.css">
<link rel="stylesheet" href="icofont/icofont/icofont.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head>
<body ng-app="myApp" ng-controller="homeController">
	<!-- Header section -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- Finish header -->

	<!-- Image header sectiOn -->
	<div class="section mainHome container-fluid p-0 mb-4">
		<img src="images/slider/slide.webp" alt="" class="img-fluid w-100">
	</div>
	<!-- Finish image header section -->


	<!-- Product section -->
	<section class="product container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<li class="breadcrumb-item active" aria-current="page">Sản
						phẩm</li>
				</ol>
			</nav>
		</div>
		<div class="row">
			<div class="search_box col-9 col-md-8 col-lg-8 row text-center">
				<form class="d-flex justify-content-center align-items-center"
					role="search">
					<input class="px-2 search w-75" type="search" placeholder="Search"
						aria-label="Search" ng-model="searchBox" />
					<button class="btn1 px-3" type="submit">Search</button>
				</form>
			</div>
			<div
				class="product-category d-flex justify-content-center align-items-center col-3 col-md-4 col-lg-4">
				<div
					class="product-category d-flex justify-content-center align-items-center">
					<i class="bi bi-grid-3x3-gap-fill mx-2 p-1"></i> <i
						class="bi bi-list mx-2 p-1"></i> <select
						class="form-select select-category" ng-model="selectedOption"
						ng-change="updateOrderBy()">
						<option value="">Sắp xếp theo</option>
						<option value="nameAsc">A -> Z</option>
						<option value="nameDesc">Z -> A</option>
						<option value="priceAsc">Giá tăng dần</option>
						<option value="priceDesc">Giá giảm dần</option>
					</select>
				</div>
			</div>

			<div class="row product-board">
				<div class="line-border p-0 my-3"
					style="background-color: #2E1C11; height: 1px; opacity: 0.3;"></div>

				<div class="col-6 col-md-4 col-lg-3 my-2"
					ng-repeat="o in products | limitTo: productPerPage : begin | orderBy:prop:reverse | filter:searchBox ">

					<div class="card">
						<div class="image">
							<img src="images/products/{{o.pImage}}" class="card-img-top"
								alt="..." />
							<div class="overlay">
								<div class="icon d-flex w-100 justify-content-between">
									<a ng-click="addToCart(o.pID)" style="width: 45%;"><i
										class="bi bi-bag me-1" id="addToCart"></i>Add</a> <a
										href="detail?pID={{o.pID}}" style="width: 45%;"><i
										class="bi bi-search me-1"></i>View</a>
								</div>
							</div>
						</div>
						<div class="card-body text-center">
							<h6 class="card-title text-uppercase">{{o.pName}}</h6>
							<span class="price">{{o.pPrice}}₫</span>
						</div>
					</div>
				</div>

				<div class="line-border p-0 my-3"
					style="background-color: #2E1C11; height: 1px; opacity: 0.3;"></div>

				<div class="row">
					<nav>
						<ul class="pagination float-end">
							<li class="page-item" ng-disabled="currentPage == 1"><a
								class="page-link" href="" ng-click="loadItem(currentPage - 1)"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li>
							<li class="page-item" ng-repeat="item in pageCount"><a
								class="page-link" href="" ng-click="loadItem(item)"
								ng-class="{ 'page-link-active': item === currentPage }">{{item}}</a></li>

							<li class="page-item"
								ng-disabled="currentPage == pageCount.length"><a
								class="page-link" href="" ng-click="loadItem(currentPage + 1)"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
	</section>
	<!-- End Product section -->
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
	<div id="cateID" style="display: none">${cateID}</div>

	<!-- Script -->
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script src="js/angular.min.js"></script>
	<script src="js/angular-route.js"></script>

	<script>
		var app = angular.module("myApp", [ "ngRoute" ]);
		app.controller("homeController", function($scope, $rootScope, $http) {
			const cateID = document.querySelector("#cateID").textContent;
			if (cateID != null) {

				$http({
					method : 'GET',
					url : "GetProductByCateController?cateID=" + cateID
				}).then(
						function successCallback(response) {
							$scope.products = response.data;
							$scope.currentPage = 1;
							$scope.productPerPage = 8;
							$scope.begin = 0;
							$scope.pageCount = [];

							// Update the pageCount array based on the number of products and productPerPage
							for (var i = 1; i <= Math
									.ceil(($scope.products.length)
											/ $scope.productPerPage); i++) {
								$scope.pageCount.push(i);
							}

							// Update the begin variable based on the current page
							$scope.loadItem = function(pageNumber) {
								$scope.currentPage = pageNumber;
								$scope.begin = ($scope.currentPage - 1)
										* $scope.productPerPage;
							};
						});
			}

			$http({
				method : 'GET',
				url : 'getCategory'
			}).then(function successCallback(response) {
				$rootScope.cate = response.data;
			});

			$scope.getProductByCate = function(cateID) {
				/* alert(cateID); */
				$http({
					method : 'GET',
					url : "GetProductByCateController?cateID=" + cateID
				}).then(function successCallback(response) {
					$scope.products = response.data;
					$scope.currentPage = 1;
					$scope.productPerPage = 8;
					$scope.begin = 0;
					$scope.pageCount = [];

					// Update the pageCount array based on the number of products and productPerPage
					for (var i = 1; i <= Math
							.ceil(($scope.products.length)
									/ $scope.productPerPage); i++) {
						$scope.pageCount.push(i);
					}

					// Update the begin variable based on the current page
					$scope.loadItem = function(pageNumber) {
						$scope.currentPage = pageNumber;
						$scope.begin = ($scope.currentPage - 1)
								* $scope.productPerPage;
					};
				});
			}

			$scope.addToCart = function(pID) {
				$http({
					method : 'POST',
					url : "add_to_cart?pID=" + pID
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

			$scope.updateOrderBy = function() {
				switch ($scope.selectedOption) {
				case 'nameAsc':
					$scope.prop = 'pName';
					$scope.reverse = false;
					break;
				case 'nameDesc':
					$scope.prop = 'pName';
					$scope.reverse = true;
					break;
				case 'priceAsc':
					$scope.prop = 'pPrice';
					$scope.reverse = false;
					break;
				case 'priceDesc':
					$scope.prop = 'pPrice';
					$scope.reverse = true;
					break;
				default:
					$scope.prop = '';
					$scope.reverse = false;
				}
			}

		});
		
		
	</script>

</body>
</html>
