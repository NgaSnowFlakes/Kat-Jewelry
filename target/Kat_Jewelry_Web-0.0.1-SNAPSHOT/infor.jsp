<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
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
<style>
.infor-box li {
	list-style: disc;
}
</style>
<body ng-app="myApp" ng-controller="HomeController">
	<!-- Header section -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- Finish header -->

	<!-- Image header sectiOn -->
	<div class="section mainHome container-fluid p-0 mb-4">
		<img src="images/slider/slide.webp" alt="" class="img-fluid w-100">
	</div>
	<!-- Finish image header section -->


	<!-- Infor section -->
	<section class="infor container">
		<div class="row breadcrum-box">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="HomeController"><i
							class="bi bi-house-door me-1"></i>Trang chủ</a></li>
					<br>
					<li class="breadcrumb-item active" aria-current="page">Thông
						tin</li>
					<br>
				</ol>
			</nav>
		</div>

		<div class="row infor-board">
			<div class="col-12 col-md-3 col-lg-3 infor-menu">
				<ul class="fs-6">
					<li><a href="#" style="color: #2E1C11;">Hướng dẫn đo size</a>
					</li>
					<li><a href="#" style="color: #2E1C11;">Bảo hành</a></li>
					<li><a href="#" style="color: #2E1C11;">Bảo quản</a></li>
					<li><a href="#" style="color: #2E1C11;">Giao hàng & đổi
							hàng</a></li>
					<li><a href="#" style="color: #2E1C11;">Hình thức thanh
							toán</a></li>
					<li><a href="#" style="color: #2E1C11;">Điều kiện VIP</a></li>
				</ul>
			</div>

			<div class="col-12 col-md-9 col-lg-9 infor-box"
				style="color: #2E1C11;">
				<h4 class="fw-bolder">BẢO HÀNH & BẢO QUẢN</h4>
				<h5 class="fw-bolder">CHÍNH SÁCH BẢO HÀNH TRANG SỨC BẠC CỦA KAT
					JEWELRY</h5>
				<p class="lh-base">Khi mua sản phẩm trang sức bạc có sẵn tại KaT
					Jewelry, quý khách sẽ nhận được các quyền lợi về bảo hành áp dụng
					từ 1/8/2019 như sau:</p>
				<li class="lh-base">Bảo hành vệ sinh trắng sáng MIỄN PHÍ vô
					thời hạn.</li> <br>
				<li class="lh-base">Đối với các trường hợp đứt, gãy, rơi hột,
					thay khoá, KaT nhận bảo hành MIỄN PHÍ 1 vị trí lỗi/ 1 sản phẩm
					trong 1 tháng kể từ ngày mua với điều kiện PHIẾU BẢO HÀNH còn
					nguyên vẹn không bị rách. KHÔNG áp dụng cho sản phẩm giảm giá và
					sản phẩm gia công theo yêu cầu.</li> <br>
				<li class="lh-base">Từ tháng thứ 2 hoặc từ vị trí lỗi thứ 2 trở
					đi, KaT sẽ tính phí dao động tuỳ vào tình trạng sản phẩm.</li> <br>
				<li class="lh-base">Thời gian bảo hành từ 3 - 5 tuần kể từ ngày
					nhận sản phẩm.</li> <br>
				<li class="lh-base">Thời gian đổi hàng là 3 ngày kể từ lúc mua
					với điều kiện sản phẩm còn nguyên vẹn như mới, sản phẩm đổi có giá
					trị cao hơn hoặc bằng giá trị sản phẩm đã mua, chỉ được đổi duy
					nhất 1 lần. KaT không hoàn tiền nếu đổi sản phẩm có giá trị thấp
					hơn. KHÔNG áp dụng đổi cho sản phẩm giảm giá và sản phẩm gia công
					theo yêu cầu. KaT KHÔNG chịu trách nhiệm khi khách đã mang sản phẩm
					ra khỏi cửa hàng, nên vui lòng kiểm tra kỹ sản phẩm và chọn món mà
					quý khách ưng ý nhất trước khi ra khỏi cửa hàng.</li> <br>

				<h5 class="fw-bolder">LƯU Ý KHÔNG NHẬN BẢO HÀNH CÁC TRƯỜNG HỢP
					SAU</h5>
				<li class="lh-base">Các sản phẩm biến dạng hoặc hư hỏng nặng
					trên 40% ( do KaT kiểm định % )</li> <br>
				<li class="lh-base">Khách hàng không chứng thực được lịch sử
					mua hàng.</li> <br>
				<li class="lh-base">Các sản phẩm Đá phong thuỷ , đá CZ, resin
					sẽ không nhận bảo hành.</li> <br>
				<li class="lh-base">Đối với sản phẩm giảm giá: không được hỗ
					trợ bảo hành FREE 1 LẦN, các trường hợp sửa chữa hư hỏng dưới 40%
					sẽ được tính phí, dịch vụ làm trắng sáng miễn phí trọn đời vẫn được
					áp dụng.</li> <br>
				<p class="lh-base">- KaT Jewelry chỉ nhận lưu giữ sản phẩm trong
					30 ngày kể từ khi sản phẩm đã được bảo hành và được thông báo để
					khách hàng nhận hàng. Sau 30 ngày, nếu không có phản hồi từ quý
					khách, sản phẩm sẽ thuộc quyền sở hữu của KaT.</p>
				<p class="lh-base">- Bên KaT cũng nhận sửa cũng như làm mới các
					sản phẩm bạc khác có tính phí nếu cam kết là bạc 925 trở lên, KaT
					có quyền từ chối tiếp nhận.</p>
				<p class="lh-base">- Quý khách có thể đem sản phẩm của mình đến
					bất kỳ store nào thuộc hệ thống KaT Jewelry để được bảo hành.</p>

				<h5 class="fw-bolder">BẠC 925 LÀ GÌ?</h5>
				<p class="ms-4 lh-base">
					Bạc 925 là một hợp kim chứa 92.5% là bạc nguyên chất và 7.5% còn
					lại hợp chất tạo độ cứng cáp, giúp chế tạo được những sản phẩm có
					độ tinh xảo tuyệt đối. 7.5% là công thức tuyệt mật của từng thuơng
					hiệu, nó sẽ quyết định độ bóng, độ cứng của bạc, giảm lỗ tổ ong
					(xuất hiện ở bạc nguyên chất). Vì bạc 100% quá mềm để có thể chế
					tác những sản phẩm bạc tinh xảo, khó gia công và dễ bị biến dạng
					trong quá trình sử dụng. <br> <br> Tại KaT Jewelry, để
					tránh tình trạng tỉ trọng bạc sai lệch, mỗi quy trình luôn được KaT
					kiểm tra nghiêm ngặt về phần trăm bạc trong thành phẩm. Nên những
					sản phẩm chế tác bên KaT có phần trăm bạc luôn ổn định trong khoảng
					92.5% - 95%. <br> <br> Khách hàng sẽ được KaT Jewelry hỗ
					trợ kiểm định chất lượng sản phẩm bằng máy đo nếu có nhu cầu (tính
					phí). Đám bảo chính xác hơn việc kiểm tra thủ công tại các, tiệm
					vàng nhỏ lẻ. <br> <br> Đối với 1 số đơn hàng đặt làm
					riêng (customize) đặc biệt do khách yêu cầu , KaT sẽ làm phần trăm
					bạc có thể cao hơn từ 95% - 99.9% tùy theo yêu cầu của khách.
				</p>

				<h5 class="fw-bolder">NGUYÊN NHÂN ĐEO BẠC BỊ ĐEN VÀ CÁCH KHẮC
					PHỤC:</h5>
				<p class="ms-4 lh-base">
					<strong style="text-decoration: underline;">Nguyên nhân</strong><br>
					<strong>Bạc bị đen không phải là do chất lượng kém mà
						nguyên nhân chính là do tuyến mồ hôi và môi trường tiếp xúc trang
						sức của người đeo.</strong><br>
				<p class="ms-4 lh-base">
					Bạc bị đen là do phản ứng hoá học tự nhiên khi tiếp xúc với chất
					lưu huỳnh, tạo thành muối bạc, lưu huỳnh kết tủa đen không tan bám
					trên bề mặt bạc. Các chất chứa lưu huỳnh có rất nhiều trong tự
					nhiên như: trong không khí, trong suối nước nóng, sản phẩm hoá chất
					tẩy rửa, và quan trọng hơn cả là trong tuyến mồ hôi của con người…
					Ngoài ra Lưu Huỳnh còn có thể truyền từ người này qua người khác
					trực tiếp hoặc gián tiếp như: cầm tay láy xe máy, tay nắm cửa, cầm
					chung đồ uống, sử dụng chung khăn lau, bắt tay, nắm tay hoặc sử
					dụng chung sản phẩm với người có mồ hôi muối. <br> <br>

					Vì vậy sản phẩm bạc để lâu ngày không đeo, vẫn có thể bị đen như
					bình thường nếu bạn để bạc ở nơi có chứa hợp chất của lưu huỳnh dù
					nhiều hay ít. Với những người tuyến mồ hôi có chứa nhiều lưu huỳnh
					(thường gọi là mồ hôi muối), bạc sẽ mau bị đen. Có những người
					tuyến mồ hôi ít hoặc không chứa lưu huỳnh hoặc một số người tuyến
					mồ hôi có khả năng khử muối bạc-lưu huỳnh (thường goị là mồ hôi
					dầu) thì đeo bạc lúc nào cũng rất sáng và bóng. <br> <br>

					- Sau khi tháo trang sức sau mỗi lần sử dụng, bạn nên vệ sinh sạch
					sẽ trang sức rồi cất và bảo quản ở nơi khô ráo và kín. Bên KaT cũng
					có bán bộ dung dịch rửa trang sức cho các bạn có nhu cầu cần mua và
					sử dụng, cách thức sử dụng KaT sẽ hướng dẫn trong bài khác . <br>
					<br> Khi đeo trang sức các bạn hạn chế tiếp xúc với hóa chất,
					nếu bạn nào dung nước hoa thì sau khi xịt nước hoa, hoặc bạn nào sử
					dụng lotion dưỡng da thì đợi tầm 10 – 15p hãy đeo trang sức vào,
					hạn chế đeo trang sức khi đi làm tóc (uốn ,nhuộm ,tẩy) vì hóa chất
					đó sẽ làm đen bạc.Sau khi tắm suối nước nóng, có thể thấy bạc bị
					đen, bởi vì trong nước nóng có hidrosunfua, nhanh chóng tạo thành
					muối bạc-lưu huỳnh và làm bạc bị đen. <br> <br> Trong mồ
					hôi thì ngoài các loại muối, còn có các axit amin mà trong thành
					phần lại có lưu huỳnh. Dù là bạc gì cũng đều có thể bị đen khi gặp
					môi trường tạo muối bạc-lưu huỳnh. Bên cạnh đó, tuyến mồ hôi mà cơ
					thể chúng ta tiết ra cũng phụ thuộc vào chế độ ăn uống, nghỉ ngơi
					vì vậy mà khi đeo dây chuyền bạc tự nhiên thấy bị xỉn màu bạn cũng
					đừng lo lắng về chất lượng bạc.
				</p>
				</p>
			</div>
		</div>
	</section>
	<!--Finish Infor section -->


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
        	if(nameURL.includes("infor.jsp")){
        		return true;
        	}
    	}
	});

    </script>
</body>
</html>