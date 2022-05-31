<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cửa Hàng Bán Giày Sneaker Chính Hãng</title>
	
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
	
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	
	
	<main class="home">
		<div class="wrapper">
			<div class="banner">
				<img src="${base}/images/banner1.jpg" width="100%">
			</div>
			<div class="content_icon">
				<div class="icon_truck">
					<img src="${base}/images/iconfinder_truck.png" width="60" height="60">
					<h3>giao hàng toàn quốc</h3>
					<h4>Vận chuyển khắp Việt Nam</h4>
				</div>
				<div class="icon_payment">
					<img src="${base}/images/iconfinder_payment.png" width="60" height="60">
					<h3>thanh toán khi nhận hàng</h3>
					<h4>Nhận hàng tại nhà rồi thanh toán</h4>
				</div>
				<div class="icon_service">
					<img src="${base}/images/iconfinder_service.png" width="60" height="60">
					<h3>bảo hành dài hạn</h3>
					<h4>Bảo hành lên đến 60 ngày</h4>
				</div>
				<div class="icon_refresh">
					<img src="${base}/images/iconfinder_refresh.png" width="60" height="60">
                    <h3>đổi hàng dễ dàng</h3>
					<h4>Đổi hàng thoải mái trong 30 ngày</h4>
				</div>
			</div>
			<div class="product_new">
				<div class="product_new_1">
					<h2>top sản phẩm mới nhất</h2>
				</div>
                <div class="list_home">
					<div class="column">
						<div class="column_1">
						   <a href=""><img src="../images/nike/1.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						   <div class="name">
						   	<a href="">${tnquy.name }</a>
						   </div>
						   <div class="price">${tnquy.age }</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						  <a href=""><img src="${base}/images/nike/2.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						  <div class="name">
						  	<a href="">AIR FORCE 1 SHADOW SEAFOAM</a>
						  </div>
						  <div class="price">4.600.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						  <a href=""><img src="${base}/images/nike/3.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						 <div class="name">
						 	<a href="">AIR MAX 90 HAPPY PINEAPPLE</a>
						 </div>
						 <div class="price">2.800.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						  <a href=""><img src="${base}/images/nike/4.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						  <div class="name">
						  	<a href="">AIR MAX AP</a>
					  	  </div>
						  <div class="price">2.900.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
							<a href=""><img src="${base}/images/adidas/1.jpg" width="100%"></a>
						</div>
						<div class="column_2">
							<div class="name">
								<a href="">Giày thể thao Red Nike Flex</a>
							</div>
							<div class="price">2.900.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
							<a href=""><img src="${base}/images/adidas/2.jpg" width="100%"></a>
						</div>
						<div class="column_2">
							<div class="name">
								<a href="">Giày thể thao Red Nike Flex</a>
							</div>
							<div class="price">2.600.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						<a href=""><img src="${base}/images/adidas/3.jpg" width="100%"></a>
						</div>
						<div class="column_2">
						<div class="name">
							<a href="">Giày thể thao Red Nike Flex</a>
						</div>
						<div class="price">2.600.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						<a href=""><img src="${base}/images/adidas/4.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						<div class="name">
							<a href="">Giày thể thao Red Nike Flex</a>
						</div>
						<div class="price">4.200.000</div>
						</div>
					</div>
				</div>
					<div class="product_new_2">
					<h2>top sản phẩm bán chạy</h2>
				</div>
                <div class="list_home">
					<div class="column">
						<div class="column_1">
						   <a href=""><img src="${base}/images/nike/1.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						   <div class="name">
						   	 <a href="">AIR MAX 90 LOVE LETTER</a>
						   </div>
						   <div class="price">4.200.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						  <a href=""><img src="${base}/images/nike/2.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						  <div class="name">
						  	<a href="">AIR FORCE 1 SHADOW SEAFOAM</a>
					  	</div>
						  <div class="price">4.600.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						  <a href=""><img src="${base}/images/nike/3.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						  <div class="name">
						  	<a href="">AIR MAX 90 HAPPY PINEAPPLE</a>
						  </div>
						  <div class="price">2.800.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						  <a href=""><img src="${base}/images/nike/4.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						  <div class="name">
						  	<a href="">AIR MAX AP</a>
						  </div>
						  <div class="price">2.900.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						<a href=""><img src="${base}/images/adidas/1.jpg" width="100%"></a>
						</div>
						<div class="column_2">
						<div class="name">
							<a href="">Giày thể thao Red Nike Flex</a>
						</div>
						<div class="price">2.900.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						<a href=""><img src="${base}/images/adidas/2.jpg" width="100%"></a>
						</div>
						<div class="column_2">
						<div class="name">
							<a href="">Giày thể thao Red Nike Flex</a>
						</div>
						<div class="price">2.600.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						<a href=""><img src="${base}/images/adidas/3.jpg" width="100%"></a>
						</div>
						<div class="column_2">
						<div class="name">
							<a href="">Giày thể thao Red Nike Flex</a>
						</div>
						<div class="price">2.600.000</div>
						</div>
					</div>
					<div class="column">
						<div class="column_1">
						<a href=""><img src="${base}/images/adidas/4.jpeg" width="100%"></a>
						</div>
						<div class="column_2">
						<div class="name">
							<a href="">Giày thể thao Red Nike Flex</a>
						</div>
						<div class="price">4.200.000</div>
						</div>
					</div>
			    </div>
			</div>
		</div>
	</main>
	
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>

</body>
</html>