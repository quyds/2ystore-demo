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
	
	<link rel="stylesheet" type="text/css" href="${base}/css/cart.css">
	<link rel="stylesheet" type="text/css" href="${base}/css/home.css">
	
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
</head>
<body>
	
<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

<main class="row" style="padding-bottom: 80px; padding-top: 50px;">
		<section class="ps-content col-12">
			<div class="ps-container col-6">
				<div class="cartPage">
					<div class="ps-post_header">
						<h1 class="ps-post_title">Giỏ hàng</h1>
					</div>
					<div class="list_product">
						<c:forEach items="${cart.cartItems }" var="cart">
							<div class="product">
								<a href="#">
									<img src="${base }/Upload/${cart.productAvatar }" width="100%">
								</a>
								<div class="info">
									<div class="product_name">
										<a href="#"><h1>${cart.productName }</h1></a>
									</div>
									<div class="size-color clearfix">Size Giày</div>
									<div class="shoe-detail-3"><span>Mã SP: </span>${cart.productId }</div>
									<div class="action">
										<div class="soluong">
											<!--<a href="" class="thaydoi_sl tang" data-type="up"><i class='bx bx-chevron-right'></i></a>
											-<input type="text" name="sl_sp_1" value="${cart.quanlity} " data-price="${cart.priceUnit }">
											<a href="" class="thaydoi_sl giam" data-type="down"><i class='bx bx-chevron-left' ></i></a>-->
											<button style="width: 20px; border: 1px solid #ccc" onclick="UpdateQuanlityCart('${base }', ${cart.productId}, -1)" value="-">-</button>
											<strong style="padding: 2.5px 6px; border: 1px solid #ccc"><span id="quanlity_${cart.productId}">${cart.quanlity }</span></strong>
											<button style="width: 20px; border: 1px solid #ccc" onclick="UpdateQuanlityCart('${base }', ${cart.productId}, 1)" value="+">+</button>
										</div>
										<div class="price">
											<span>Thành tiền:</span>
											<div class="total-price-product" data-total="${cart.priceUnit }">
												<b class="new-price">
													<fmt:setLocale value="vi_VN" scope="session" />
													<fmt:formatNumber value="${cart.priceUnit }" type="currency" />
												</b>
											</div>
										</div>
								    </div>
								</div>
								<div class="delete">
									<i class='bx bx-x btn-delete' onclick="deletedCart('${base }', ${cart.productId});" style='color:#ffffff'  ></i>
								</div>
							</div>
						</c:forEach>				
				    </div>
				    <div class="total-price">
				    	<div class="col-auto">
							<div class="inforSum">
								<span>Tổng Tiền: </span>
								<span id="total_price_product">
									<b class="new-price totalPrice">
										<fmt:setLocale value="vi_VN" scope="session" />
										<fmt:formatNumber value="${cart.totalPrice }" type="currency" />
									</b>
								</span>
							</div>
						</div>
						<div class="col-auto d-flex">
							<div class="buyNext mr-4">
								<a class="ps-btn" href="${base }/home">Mua tiếp<i class="ps-icon-next"></i></a>
							</div>
							<div class="buyNext">
								<a class="ps-btn" href="${base }/cart/checkout">Đặt hàng <i class="ps-icon-next"></i></a>
							</div>
						</div>		
					</div>
				</div>
			</div>
		</section>
	</main>
	
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	
	

</body>
</html>