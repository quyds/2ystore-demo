<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cửa Hàng Bán Giày Sneaker Chính Hãng</title>
	
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
	<link rel="stylesheet" type="text/css" href="${base}/css/style.css">
	<link rel="stylesheet" type="text/css" href="${base}/css/home.css">
	
	<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>
	
</head>
<body>
		
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	
	
	<main class="contact" style="height: 1500px;">
        <div class="ps_contact pb-80">
			<div id="contact_map" class="iframe">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17712.226159571437!2d105.74847054706997!3d21.051209158339994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1647591243237!5m2!1svi!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			</div>
			<div class="ps-container">
				<div class="row row-flex contact_bot">
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 contact_info">
						<div class="ps_contact__block">
						  <header>
							 <h3>2Y STORE Trang Thông Tin Chính Thức<span> Thông tin liên hệ</span></h3>
						  </header>
						  <footer>
							<p><strong>2YSTORE.VN Trang Thông Tin Chính Thức.</strong></p>
							<p><strong>Địa chỉ: Cầu Diễn, Thành phố Hà Nội.</strong></p>
							<p><strong>Email: quytran541@gmail.com.</strong></p>
							<p><a href=""></a>https://2ystore.vn/</p>
							<p><strong>Hotline Bán Hàng: 0969696969.</strong></p>
							<p><strong><iframe width="100%" height="315" src="https://www.youtube.com/embed/h0JtStx60xs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></strong></p>
						  </footer>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 col-flex contact_email">
						<div class="ps_section__header mb-50">
							<h2 class="ps_section__title" data-mask="Liên hệ">
								-Với chúng tôi
							</h2>
							<c:if test="${not empty message }">
								<div class="alert alert-primary" role="alert">
									${message }
								</div>
							</c:if>
							
						<!--	Dạng 1 đơn giản -->
						<!--<form id="fcontact" name="fcontact" class="pl-lg-2" action="${base }/contact" method="post" novalidate="novalidate">
								<input type="hidden" name="_token" value="">
								<input name="link" type="hidden" value="">
								<div class="row mb-2">
									<div class="col-12 mb-4">
										<textarea class="form-control" name="fmessenger" id="fmessenger" placeholder="Nôi dung"></textarea>
									</div>
									<div class="col-md-12 mb-4">
										<input name="ffirstname" id="fname" class="form-control" type="text" placeholder="Họ bạn *">
									</div>
									<div class="col-md-6 mb-4">
										<input name="flastname" id="fname" class="form-control" type="text" placeholder="Tên bạn *">
									</div>
									<div class="col-md-6 mb-4">
										<input class="form-control" type="email" name="femail" id="femail" placeholder="Email *">
									</div>
								</div>
								<div class="form-group">
									<button type="button" onclick="submitForm()" class="ps-btn" style="width: 130px">Gửi ngay<i class="ps-icon-next"></i></button>
									<button type="reset" class="ps-btn" style="width: 130px">Nhập lại<i class="ps-icon-next"></i></button>
								</div>
							</form>-->
							
                            <!--	Dạng 2 String-form -->
                                <sf:form modelAttribute="Contacts" action="${base }/contact" method="post" enctype="multipart/form-data">
								<input type="hidden" name="_token" value="">
								<input name="link" type="hidden" value="">
								<div class="row mb-2">
								
									<div class="col-md-6 mb-4">
										<sf:input path="lastName" name="lastName" id="fname" class="form-control" type="text" placeholder="Họ bạn *"></sf:input>
									</div>
									<div class="col-md-6 mb-4">
										<sf:input path="firstName" name="firstName" id="fname" class="form-control" type="text" placeholder="Tên bạn *"></sf:input>
									</div>
									<div class="col-md-12 mb-4">
										<sf:input path="email" class="form-control" type="email" name="femail" id="femail" placeholder="Email *"></sf:input>
									</div>
									<div class="col-12 mb-4">
										<sf:textarea path="message" class="form-control" name="fmessenger" id="fmessenger" placeholder="Nôi dung"></sf:textarea>
									</div>
									<!--<div class="col-md-6 mb-4">
										<input class="form-control" type="file" name="fattachment" id="fattachment" placeholder="" >
									</div>-->
								</div>
								<div class="form-group">
									<button type="submit" class="ps-btn" style="width: 130px">Gửi ngay<i class="ps-icon-next"></i></button>
									<button type="reset" class="ps-btn" style="width: 130px">Nhập lại<i class="ps-icon-next"></i></button>
								</div>
							</sf:form>
							
							<!--	Dạng 3 Sử dụng Ajax -->
							<!--<form id="fcontact" name="fcontact" class="" action="${base }/contact" >
								<input type="hidden" name="_token" value="">
								<input name="link" type="hidden" value="">
								<div class="row mb-2">
									<div class="col-12 mb-4">
										<textarea class="form-control" name="fmessenger" id="fmessenger" placeholder="Nôi dung"></textarea>
									</div>
									<div class="col-md-12 mb-4">
										<input name="fname" id="fname" class="form-control" type="text" placeholder="Tên bạn *">
									</div>
									<div class="col-md-6 mb-4">
										<input class="form-control" type="email" name="femail" id="femail" placeholder="Email *">
									</div>
									<div class="col-md-6 mb-4">
										<input class="form-control" type="text" name="fphone" id="fphone" placeholder="Điện thoại *" >
									</div>
								</div>
								<div class="form-group">
									<button type="button" onclick="saveContact('${base}');" class="ps-btn" style="width: 130px">Gửi ngay<i class="ps-icon-next"></i></button>
									<button type="reset" class="ps-btn" style="width: 130px">Nhập lại<i class="ps-icon-next"></i></button>
								</div>
							</form>-->
						</div>
					</div>
				
				</div>
			</div> 
		</div> 
	</main>
	
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
	
</body>
</html>