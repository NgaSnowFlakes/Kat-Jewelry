<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Header section -->
<style>
@media ( min-width : 992px) {
	.cartSizeSmall {
		display: none;
	}
}

@media ( max-width : 992px) {
	.cartSizeBig {
		display: none;
	}
}
</style>
<div class="container-fluid" id="navbar">
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="HomeController"><img
				src="images/logo/logo.webp" class="img-fluid" alt="" /></a>
			<div class="d-flex justify-content-between">
				<div class="cartSizeSmall">
					<a href="cart.jsp" class="d-flex"
						style="color: #2E1C11; position: relative;"><i
						class="bi bi-bag-plus ms-2"></i> <c:if
							test="${sessionScope.customer != null}">
							<span class="badge badge-danger text-danger fw-bolder"
								style="position: absolute; right: -10px; top: -10px;">${sessionScope.cartSize}</span>
						</c:if> </a>
				</div>

				<button class="navbar-toggler border border-0" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="bi bi-list"></i>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav m-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="HomeController">Trang
							chủ</a></li>
					<br>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Trang sức </a>
						<ul class="dropdown-menu">

							<li ng-if="getNameURL()" ng-repeat="item in cate"
								style="cursor: pointer"><a class="dropdown-item"
								href="ProductController?cateID={{item.cateID}}">{{item.cateName}}</a></li>
							<li ng-if="!getNameURL()" ng-repeat="item in cate"
								style="cursor: pointer"><a class="dropdown-item"
								ng-click="getProductByCate(item.cateID)"> {{item.cateName}}</a></li>


						</ul></li>
					<br>
					<li class="nav-item"><a class="nav-link" href="instagram.jsp">Instagram</a>
					</li>
					<br>
					<li class="nav-item"><a class="nav-link" href="gallery.jsp">Bộ
							sưu tập</a></li>
					<br>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Thông tin </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="infor.jsp">Hướng dẫn
									đo size</a></li>
							<li><a class="dropdown-item" href="infor.jsp">Bảo hành</a></li>
							<li><a class="dropdown-item" href="infor.jsp">Bảo quản</a></li>
							<li><a class="dropdown-item" href="infor.jsp">Giao hàng
									& đổi hàng</a></li>
							<li><a class="dropdown-item" href="infor.jsp">Hình thức
									thanh toán</a></li>
							<li><a class="dropdown-item" href="infor.jsp">Điều kiện
									VIP</a></li>
						</ul></li>
					<c:if test="${sessionScope.customer == null}">
						<li class="nav-item"><a class="nav-link" href="login.jsp">Login<i
								class="fa-regular fa-user ms-2"></i></a></li>
					</c:if>
					<c:if test="${sessionScope.customer != null}">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Hi
								${sessionScope.customer.firstName} </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="logout">Logout</a></li>
							</ul></li>
						<br>
					</c:if>

				</ul>
				<div class="cartSizeBig">
					<a href="cart.jsp" class="d-flex"
						style="color: #2E1C11; position: relative;"> <i
						class="bi bi-bag-plus ms-2"></i> <c:if
							test="${sessionScope.customer != null}">
							<span class="badge badge-danger text-danger fw-bolder"
								style="position: absolute; right: -10px; top: -10px;">${sessionScope.cartSize}</span>
						</c:if>
					</a>
				</div>
			</div>
		</div>
	</nav>
</div>
<!-- Finish header -->