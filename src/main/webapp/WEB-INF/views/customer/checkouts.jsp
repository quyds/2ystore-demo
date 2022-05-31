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
	<section class="checkout_content">
		<div class="checkout_main">
			<div class="main_header">
				<a href="${base }/home"><img src="../images/2ystore.png" width="15%">2YSTORE.VN</a>
				<ul>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<div class="main_content">
					<div class="step">
						<form action="${base }/cart/checkout" method="post">
							<div class="step_sections">
								<div class="section_header">
									<h4 class="section_title"> Thông tin giao hàng </h4>
								</div>
								<c:choose>
									<c:when test = "${isLogined}">
										<div class="section_content">
											<div class="form-group">
												<label for="customerPhone">Họ và tên</label>
												<input type="tel" class="form-control" id="customerFullName" name="customerFullName" value="${userLogined.username }" placeholder="Full name">
											</div>
											<div class="form-group">
												<label for="customerEmail">Đia chỉ Email</label>
												<input type="email" class="form-control" id="customerEmail" name="customerEmail" value="${userLogined.email }" placeholder="Enter email">
												<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
											</div>
											<div class="form-group">
												<label for="customerPhone">Số điện thoại</label>
												<input type="tel" class="form-control" id="customerPhone" value="${userLogined.phone }" name="customerPhone" placeholder="Phone">
											</div>
											<div class="form-group">
												<label for="customerAddress">Địa chỉ</label>
												<input type="text" class="form-control" id="customerAddress" value="${userLogined.address }" name="customerAddress" placeholder="Address">
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="section_content">
											<div class="form-group">
												<label for="customerPhone">Họ và tên</label>
												<input type="tel" class="form-control" id="customerFullName" name="customerFullName" placeholder="Full name">
											</div>
											<div class="form-group">
												<label for="customerEmail">Đia chỉ Email</label>
												<input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="Enter email">
												<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
											</div>
											<div class="form-group">
												<label for="customerPhone">Số điện thoại</label>
												<input type="tel" class="form-control" id="customerPhone" name="customerPhone" placeholder="Phone">
											</div>
											<div class="form-group">
												<label for="customerAddress">Địa chỉ</label>
												<input type="text" class="form-control" id="customerAddress" name="customerAddress" placeholder="Address">
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="step_footer" style="display: flex; align-items: center;">
								<div>
									<a class="step_footer_link" href="${base }/cart/view">Giỏ hàng</a>
								</div>
								<div>
									<button type="submit" class="btn">
										Tiếp tục đến phương thức thanh toán
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="main_footer">
				<ul style="display: flex; margin-bottom: 90px">
					<li style="margin: 0 10px">Chăm sóc khách hàng</li>
					<li style="margin: 0 10px">Chế độ bảo hành</li>
					<li style="margin: 0 10px">Hướng dẫn mua hàng</li>
				</ul>
			</div>	
		</div>
		<div class="checkout_sidebar">
			<div class="sidebar_content">
				<div class="order">
					<div class="order_info">
						<table class="product_table">
							<tbody>
								<c:forEach items="${cart.cartItems }" var="cart">
								<tr class="product">
									<td class="product_image">
										<a href=""><img src="${base }/Upload/${cart.productAvatar }" width="90%"></a>
										<span class="product_quantity">
											${cart.quanlity }
										</span>
									</td>
									<td class="product_description">
										<a href="">
											<span>${cart.productName }</span>
										</a>
										<div class="attribute_pro">
											Size giay
										</div>
									</td>
									<td class="product_price">
										<span>
											<b class="new-price">
												<fmt:setLocale value="vi_VN" scope="session" />
												<fmt:formatNumber value="${cart.priceUnit }" type="currency" />
											</b>
										</span>
									</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="order_price">
						<div class="order_price_top" >
							<div class="order_price_subtotal" style="display: flex;">
								<div>
									Tạm tính: 
								</div>
								<div>
									<span style="text-align: right;">
										<b class="new-price">
											<fmt:setLocale value="vi_VN" scope="session" />
											<fmt:formatNumber value="${cart.totalPrice }" type="currency" />
										</b>
									</span>
								</div>
							</div>
							<div class="order_price_shipping" style="display: flex;">
								<div>
									Phí vận chuyển: 
								</div>
								<div>
									<span style="text-align: right;">Chưa bao gồm</span>
								</div>
							</div>
						</div>
						<div class="order_price_bottom">
							<div class="order_price_total" style="display: flex;">
								<div>
									Tổng cộng:
								</div>
								<div>
									<b class="new-price">
										<fmt:setLocale value="vi_VN" scope="session" />
										<fmt:formatNumber value="${cart.totalPrice }" type="currency" />
									</b>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>