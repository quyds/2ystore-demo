<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Tài khoản - Cửa Hàng Bán Giày Sneaker Chính Hãng</title>
	
	<link rel="stylesheet" type="text/css" href="${base}/css/home.css">
	
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	
	<main class="row" style="padding-bottom: 80px; padding-top: 50px;">
		<section class="ps-container">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h3 class="form-heading">Đăng ký</h3>
					
					<form method="POST" action="${base }/register" class="form-signin">
					<!--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
						
						<!-- kiểm tra xem đã login thành công hay không, bằng cách kiểm tra biến login_error -->
						<!-- <c:if test="${not empty param.login_error}">
							<div class="alert alert-danger" role="alert">
								Tên đăng nhập hoặc mật khẩu không chính xác
							</div>
						</c:if> -->
	
						<div class="form-group">
							<!-- bắt buộc name phải đẻ là "username" -->
							<input type="text" name="username" class="form-control" placeholder="Username">
						</div>
	
						<div class="form-group">
							<!-- bắt buộc name phải đẻ là "password" -->
							<input type="password" name="password" class="form-control" placeholder="Password">
						</div>
						
						<div class="form-group">
							<!-- bắt buộc name phải đẻ là "email" -->
							<input type="email" name="email" class="form-control" placeholder="Email">
						</div>
						<div class="form-group">
							<!-- bắt buộc name phải đẻ là "email" -->
							<input type="text" name="phone" class="form-control" placeholder="Phone">
						</div>
						<div class="form-group">
							<!-- bắt buộc name phải đẻ là "email" -->
							<input type="text" name="address" class="form-control" placeholder="Address">
						</div>
						
						<!-- 
						<div class="form-group">
							<input type="checkbox" name="remember-me" />
						</div> 
						-->
	
						<button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top: 20px;">
							ĐĂNG KÝ
						</button>
						
						<div class="get_password">
							<a href="${base }/login">Đăng nhập</a>
							<a href="">Quên mật khẩu</a>
						</div>
	
					</form>
					
				</div>
			</div>
		</section>	
	</main>

	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	
</body>
</html>