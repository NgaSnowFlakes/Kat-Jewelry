<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Trang chủ</title>


<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="js/bootstrap.bundle.min.js"></script>
<!-- Link css -->
<link rel="stylesheet" href="project_css/index.css" />
<link rel="stylesheet" href="project_css/header_footer.css">

<!-- Link boostrap and icon -->
<link rel="stylesheet" href="icofont/icofont/icofont.min.css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
</head>
<body ng-app="myApp" ng-controller="homeController">
	<jsp:include page="menu.jsp"></jsp:include>

	<!-- Main sectiOn -->
	<section class="main">
		<div id="mainHome" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="images/slider/slide.webp" class="d-block w-100" alt="..." />
				</div>
				<div class="carousel-item">
					<img src="images/slider/slide1.jpg" class="d-block w-100" alt="..." />
				</div>
				<div class="carousel-item">
					<img src="images/slider/slide2.webp" class="d-block w-100"
						alt="..." />
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#mainHome" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#mainHome" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>
	<!-- Finish main section -->


	<!-- Intro section -->
	<section class="intro container">
		<div class="row">
			<div class="col-lg-8 col-sm-6 mb-2">
				<img src="images/home/home1.webp" alt="" class="img-fluid w-100" />
			</div>
			<div class="col-lg-4 col-sm-6 m-auto">
				<div class="card">
					<img src="images/home/home2.webp" class="card-img-top" alt="..."
						class="" />
					<div class="card-body text-center mt-4">
						<h2 class="m-auto">Đeo trang sức là cách thể hiện bạn mà
							không cần một lời nói nào</h2>
						<p class="mt-4">Cuộc đời đó có bao lâu mà hững hờ, hãy cứ đeo
							trang sức như chưa từng được đeo.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Finish intro section -->


	<!-- Slogan section -->
	<section class="slogan_section container mb-4">
		<div class="row">
			<div class="col-md-12">
				<div class="slogan text-center">“Wearing jewelry is the way to
					express who you are... without saying a word."</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active" data-bs-interval="300">
							<img src="images/slogan/slogan1.jpg" class="d-block w-100"
								alt="..." />
						</div>
						<div class="carousel-item" data-bs-interval="300">
							<img src="images/slogan/slogan2.jpg" class="d-block w-100"
								alt="..." />
						</div>
						<div class="carousel-item" data-bs-interval="300">
							<img src="images/slogan/slogan3.jpg" class="d-block w-100"
								alt="..." />
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item" data-bs-interval="300">
							<img src="images/slogan/slogan2.jpg" class="d-block w-100"
								alt="..." />
						</div>
						<div class="carousel-item active" data-bs-interval="300">
							<img src="images/slogan/slogan1.jpg" class="d-block w-100"
								alt="..." />
						</div>
						<div class="carousel-item" data-bs-interval="300">
							<img src="images/slogan/slogan3.jpg" class="d-block w-100"
								alt="..." />
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="carousel slide" data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item" data-bs-interval="300">
							<img src="images/slogan/slogan3.jpg" class="d-block w-100"
								alt="..." />
						</div>
						<div class="carousel-item" data-bs-interval="300">
							<img src="images/slogan/slogan2.jpg" class="d-block w-100"
								alt="..." />
						</div>
						<div class="carousel-item active" data-bs-interval="300">
							<img src="images/slogan/slogan1.jpg" class="d-block w-100"
								alt="..." />
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Finish slogan section -->


	<!-- foundation section -->
	<section class="foundation container">
		<h1 class="text-center">TRANG SỨC BẠC DÀNH CHO NGƯỜI NỔI TIẾNG</h1>
		<div class="row">
			<div class="col-md-4">
				<div class="mb-3">
					<img src="images/foundation/found_1.webp" alt=""
						class="img-fluid w-100" />
				</div>
				<div>
					<img src="images/foundation/found_2.webp" alt=""
						class="img-fluid w-100" />
				</div>
			</div>
			<div class="col-md-8">
				<img src="images/foundation/found_main.webp" alt=""
					class="img-fluid w-100" />
			</div>
		</div>
	</section>
	<!-- Finish foundation section -->

	<!-- Best seller -->
	<!-- <section class="bestSeller container">
      <div class="row m-auto">
        <h1 class="text-center title text-uppercase">Best seller</h1>
      </div>
      <div id="bestSeller" class="carousel slide carousel-fade">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b1.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">
                      tr multi tiny bubble
                    </h5>
                    <span class="price">190.000₫</span>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b2.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">tr star organ zin</h5>
                    <span class="price">270.000₫</span>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b3.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">r tripple ball</h5>
                    <span class="price">250.000₫</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row">
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b4.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">r single big gem</h5>
                    <span class="price">290.000₫</span>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b5.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">r midi curve ring</h5>
                    <span class="price">350.000₫</span>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b6.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">r midi big heart</h5>
                    <span class="price">250.000₫</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row">
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b7.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">r midi tiny</h5>
                    <span class="price">190.000₫</span>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b8.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">r mid destiny</h5>
                    <span class="price">650.000₫</span>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="image">
                    <img src="images/bestseller/b9.webp" class="card-img-top" alt="..." />
                    <div class="overlay">
                      <div class="icon d-flex w-100 justify-content-between">
                        <a href="#" style="width:45%;"><i class="bi bi-bag me-1"></i>Add</a>
                        <a href="#" style="width:45%;"><i class="bi bi-search me-1"></i>View</a>
                      </div>
                    </div>
                  </div>
                  <div class="card-body text-center">
                    <h5 class="card-title text-uppercase">
                      e drop multi chain
                    </h5>
                    <span class="price">390.000₫</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#bestSeller"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#bestSeller"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </section> -->
	<!-- Finish best seller section -->


	<!-- Blogs section -->
	<section class="blog container">
		<div class="row m-auto">
			<h1 class="text-center title text-uppercase">Blog tips & hint</h1>
		</div>
		<div id="blog" class="carousel" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<div class="card">
						<div class="img-wrapper">
							<img src="images/blog/blog1.webp" class="d-block w-100" alt="..." />
						</div>
						<div class="card-body text-center">
							<a href="#" class="card-text">Tác dụng
								không tưởng của bạc 925 sẽ làm bạn bất ngờ!</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card">
						<div class="img-wrapper">
							<img src="images/blog/blog2.webp" class="d-block w-100" alt="..." />
						</div>
						<div class="card-body text-center">
							<a href="#" class="card-text">Dị ứng bạc
								từ đâu, nguyên nhân thực sự do bạc?</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card">
						<div class="img-wrapper">
							<img src="images/blog/blog3.webp" class="d-block w-100" alt="..." />
						</div>
						<div class="card-body text-center">
							<a href="#" class="card-text">Cách bảo quản trang sức bạc</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card">
						<div class="img-wrapper">
							<img src="images/blog/blog4.webp" class="d-block w-100" alt="..." />
						</div>
						<div class="card-body text-center">
							<a href="#" class="card-text">Bạc 925 là gì?</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card">
						<div class="img-wrapper">
							<img src="images/blog/blog5.webp" class="d-block w-100" alt="..." />
						</div>
						<div class="card-body text-center">
							<a href="#" class="card-text">Tại sao bạc lại bị đen</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card">
						<div class="img-wrapper">
							<img src="images/blog/blog6.webp" class="d-block w-100" alt="..." />
						</div>
						<div class="card-body text-center">
							<a href="#" class="card-text">Quà tặng ý nghĩa</a>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#blog" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#blog" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</section>
	<!-- Finish blog section -->


	<!-- About section -->
	<section class="about container">
		<div class="row m-auto">
			<h1 class="text-center title text-uppercase">About kat jewelry</h1>
		</div>
		<div class="about-content row">
			<div class="col-md-6">
				<div class="card align-items-center">
					<div class="img-wrapper">
						<img src="images/about/about1.webp" class="card-img-top" alt="..." />
					</div>
					<div class="card-body text-center">
						<p>Kat - Sự thành lập</p>
						<button class="btn btn-web" data-bs-toggle="collapse"
							href="#about_1" role="button" aria-expanded="false"
							aria-controls="about_1">Xem thêm</button>
						<div class="collapse" id="about_1">
							<div class="card card-body">Thành lập năm 2012, với lợi thế
								thiết kế, sản phẩm của KaT Jewelry độc đáo, khác biệt và mới mẻ
								từng ngày. Mang màu nâu chủ đạo, KaT xây dựng dấu ấn bohemian ma
								mị, làm xiêu lòng bất kỳ ai bước chân vào vùng đất bạc trù phú
								của KaT.</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card align-items-center">
					<div class="img-wrapper">
						<img src="images/about/about2.webp" class="card-img-top" alt="..." />
					</div>
					<div class="card-body text-center">
						<p>Kat - Nỗ lực</p>
						<button class="btn btn-web" data-bs-toggle="collapse"
							href="#about_2" role="button" aria-expanded="false"
							aria-controls="about_2">Xem thêm</button>
						<div class="collapse" id="about_2">
							<div class="card card-body">KaT Jewelry luôn cố gắng xây
								dựng chuỗi cửa hàng để các bạn nhận được sự trải nghiệm tốt
								nhất. Hiện nay KaT có 7 cửa hàng tại HCM, 1 cửa hàng tại Đà Nẵng
								và 1 cửa hàng tại Hà Nội.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Finish about section -->

	<!-- Feedback -->
	<section class="feedback container">
		<div class="row m-auto">
			<h1 class="text-center title text-uppercase">Khách hàng Feedback</h1>
		</div>
		<div class="m-auto text-center w-100">
			<button href="#" class="btn btn-web">Follow Us</button>
		</div>
		<div class="row my-4 feedback-board position-relative">
			<!-- Feeback row 1 -->
			<div class="col-md-4 feedback-col">
				<div class="card rounded-3 mb-2 feedback-col1">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">ntttmy</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 27, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f1.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Năm mới, tóc mới, nhẫn mới xinh
							xinh của katjewelry 🤭🤭</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col1">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">ntttmy</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 03, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f4.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Năm mới, tóc mới, nhẫn mới xinh
							xinh của katjewelry 🤭🤭</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col1">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">ntttmy</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">December 27, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f7.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Năm mới, tóc mới, nhẫn mới xinh
							xinh của katjewelry 🤭🤭</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col1">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">ntttmy</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">November 27, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f10.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Năm mới, tóc mới, nhẫn mới xinh
							xinh của katjewelry 🤭🤭</p>
					</div>
				</div>
			</div>

			<!-- Feeback row 2 -->

			<div class="col-md-4 feedback-col">
				<div class="card rounded-3 mb-2 feedback-col2">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">btuyen_2606</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 13, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f2.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">
							thi thoảng nhớ anh, thường xuyên thi thoảng😚<br /> _ _ _ _ _ _
							_ _ _ <br /> Tớ mới sắm được đôi bông tai siu xinh bên nhà
							katjewelry. Cả nhà ghé katjewelry sắm phụ kiện đi chơi Tết ...
						</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col2">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">trinhnguyendang.g</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 01, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f5.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">
							Mùa của tiệc tùng không thể nào thiếu các phụ kiện xinh xắn rồi!
							<br /> Mê nhất là phụ kiện của kat jewelry thôi vì vừa trẻ đẹp
							vừa năng động thời thượng
						</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col2">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">trinhnguyendang.g</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 01, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f8.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Mê nhất là phụ kiện của kat
							jewelry thôi vì vừa trẻ đẹp vừa năng động thời thượng</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col2">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">trinhnguyendang.g</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">December 01, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f11.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Mê nhất là phụ kiện của kat
							jewelry thôi vì vừa trẻ đẹp vừa năng động thời thượng</p>
					</div>
				</div>
			</div>

			<!-- Feeback row 3 -->
			<div class="col-md-4 feedback-col">
				<div class="card rounded-3 mb-2 feedback-col3">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">akiem8.0</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 27, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f3.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">📸 #shibuyasky #tokyo #japan
							#likesforlike</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col3">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">imphuon.g</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">January 02, 2023</p>
						<div class="img-wrapper">
							<img src="images/feedback/f6.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">
							Không muốn gì xa xôi , chỉ muốn bên anh thôi 😚😚 <br /> Vòng
							tay xinh xinh tui mới săn được từ katjewelry
						</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col3">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">shamii</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">December 31, 2022</p>
						<div class="img-wrapper">
							<img src="images/feedback/f9.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Vòng tay xinh xinh tui mới săn
							được từ katjewelry 😚😚</p>
					</div>
				</div>
				<div class="card rounded-3 mb-2 feedback-col3">
					<div class="card-body p-4">
						<div class="feedback-name d-flex align-items-center">
							<h4 class="f-name me-2 fw-bold">Leo</h4>
							<img src="images/logo/check_fill.png" alt=""
								style="width: 24px; height: 24px" />
						</div>
						<p class="feedback-date">November 31, 2022</p>
						<div class="img-wrapper">
							<img src="images/feedback/f12.webp" alt=""
								class="f-image img-fluid rounded-3" />
						</div>
						<p class="feedback-desc my-4">Vòng tay xinh xinh tui mới săn
							được từ katjewelry 😚😚</p>
					</div>
				</div>
			</div>
			<div class="container overlay-feedback"></div>
		</div>
		<div class="m-auto text-center my-0">
			<button href="#" class="btn btn-web p-3 loadMore">Xem thêm
				feedback</button>
		</div>
		<div class="row follow">
			<div class="d-flex justify-content-center align-items-center heading">
				<h4 class="me-3">Follow us on Instagram #Katjewelry</h4>
				<button class="btn text-center btn-web" href="#">Visit
					Instagram Page</button>
			</div>
			<div class="row m-auto mt-4">
				<div class="col-md-4 my-1">
					<div class="row g-2">
						<div class="col-6">
							<img src="images/follow/fl1.webp" alt="" class="img-fluid">
						</div>
						<div class="col-6">
							<img src="images/follow/fl2.webp" alt="" class="img-fluid">
						</div>
						<div class="col-6">
							<img src="images/follow/fl3.webp" alt="" class="img-fluid">
						</div>
						<div class="col-6">
							<img src="images/follow/fl4.webp" alt="" class="img-fluid">
						</div>
					</div>
				</div>
				<div class="col-md-4 my-1">
					<div class="row g-2">
						<img src="images/follow/fl5.webp" alt="" class="img-fluid">
					</div>
				</div>
				<div class="col-md-4 my-1">
					<div class="row g-2">
						<div class="col-6">
							<img src="images/follow/fl6.webp" alt="" class="img-fluid">
						</div>
						<div class="col-6">
							<img src="images/follow/fl7.webp" alt="" class="img-fluid">
						</div>

						<div class="col-6">
							<img src="images/follow/fl8.webp" alt="" class="img-fluid">
						</div>
						<div class="col-6">
							<img src="images/follow/fl9.webp" alt="" class="img-fluid">
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Finish feedback section -->

	<jsp:include page="footer.jsp"></jsp:include>


	<!-- Script -->
	<!-- Jquery -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script src="js/kat_jewelry.js"></script>
	<script src="js/angular.min.js"></script>
	<script src="js/angular-route.js"></script>

	<script>
      var app = angular.module("myApp", ["ngRoute"]);
      app.controller("homeController", function($scope,$rootScope, $http) {
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
        	if(nameURL.includes("HomeController")){
        		return true;
        	}
        	if(nameURL.includes("instagram.jsp")){
        		return true;
        	}
        	if(nameURL.includes("gallery.jsp")){
        		return true;
        	}
        	if(nameURL.includes("Login")){
        		return true;
        	}	
        	if(nameURL.includes("logout")){
        		return true;
        	}	
        		
    	}
	});

    </script>
</body>
</html>
