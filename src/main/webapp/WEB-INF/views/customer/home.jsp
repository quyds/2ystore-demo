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
	
	<link rel="stylesheet" type="text/css" href="${base}/css/home.css">
	
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
</head>
<body>
	
	<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	
	<main class="ps-main">
		<section class="ps-banner">
			<div class="slider" role="toolbar">
				<a href="">
					<img src="${base }/images/0001.png">
				</a>
			</div>
		</section>
		<section class="ps-features" style="border-bottom: 1px solid #d0d0d0;">
			<div class="ps-container" style="">
				<div class="row" style="">
					<div class="col-lg-3 col-md-3 col-sm-3 col-12 mb-3">
						<div class="ps-iconbox" style="margin-top: 5px;">
							<div class="ps-iconbox_header">
								<img src="${base }/images/iconfinder_truck.png">
							</div>
							<div class="ps-icon-money">
								<h4>giao hàng toàn quốc</h4>
								<p>Vận chuyển khắp Việt Nam</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-12 mb-3">
						<div class="ps-iconbox">
							<div class="ps-iconbox_header">
								<img src="${base }/images/iconfinder_payment.png">
							</div>
							<div class="ps-icon-money">
								<h4>thanh toán khi nhận hàng</h4>
								<p>Nhận hàng tại nhà rồi thanh toán</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-12 mb-3">
						<div class="ps-iconbox">
							<div class="ps-iconbox_header">
								<img src="${base }/images/iconfinder_service.png">
							</div>
							<div class="ps-icon-money">
								<h4>bảo hành dài hạn</h4>
								<p>Bảo hành lên đến 60 ngày</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 col-12 mb-3">
						<div class="ps-iconbox">
							<div class="ps-iconbox_header">
								<img src="${base }/images/iconfinder_refresh.png">
							</div>
							<div class="ps-icon-money">
								<h4>đổi hàng dễ dàng</h4>
								<p>Đổi hàng thoải mái trong 30 ngày</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="ps-section">
			<div class="ps-container">
				<div class="ps-section_header">
					<h3  class="ps-section_title" data-mask="Product">
						<a href="">sản phẩm mới</a>
					</h3>
				</div>
				<div class="ps-products">
					<div class="ps-product_columns">
						
						<c:forEach items="${products}" var="pro" begin="0" end="19">
							<div class="ps-product_column">
								<div class="ps-shoe mb-30">
									<div class="ps-shoe_thumbnail" >
										<div class="product-label-group"></div>
								   			<a class="ps-shoe_overlay" href="${base }/product/details/${pro.seo}"><img src="${base }/Upload/${pro.avatar}"></a>
									   	</div>
								   	<div class="ps-shoe_content">
										<div class="ps-shoe_detail">
											<a class="ps-shoe_name" href="${base }/product/details/${pro.seo}">${pro.title}</a>
											<div class="ps-shoe_rating">
												<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 		 									<svg viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 		 									<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	  											<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 		 									<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 										 	<div class="overlay" style="width: 53%"></div>
											</div>
											<span class="ps-shoe_price">
												<fmt:setLocale value="vi_VN" scope="session" />
												<fmt:formatNumber value="${pro.price }" type="currency" />
											</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						
					</div>
				</div>
			</div>
		</section>
		<section class="ps-section">
			<div class="ps-container">
				<div class="ps-section_header">
					<div class="row">
						<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12 ">
							<h3  class="ps-section_title" data-mask="Hot">
								<a href="">sản phẩm hot</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="ps-products">
					<div class="ps-product_columns">
						<c:forEach items="${productsHot.data}" var="proHot" begin="0" end="19">
							<div class="ps-product_column">
								<div class="ps-shoe mb-30">
									<div class="ps-shoe_thumbnail" >
										<div class="product-label-group"></div>
								   			<a class="ps-shoe_overlay" href="${base }/product/details/${proHot.seo}"><img src="${base }/Upload/${proHot.avatar}"></a>
									   	</div>
								   	<div class="ps-shoe_content">
										<div class="ps-shoe_detail">
											<a class="ps-shoe_name" href="${base }/product/details/${proHot.seo}">${proHot.title}</a>
											<div class="ps-shoe_rating">
												<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 		 									<svg viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 		 									<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	  											<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 		 									<svg  viewBox="0 0 940.688 940.688">
													<path d="M885.344,319.071l-258-3.8l-102.7-264.399c-19.8-48.801-88.899-48.801-108.6,0l-102.7,264.399l-258,3.8 c-53.4,3.101-75.1,70.2-33.7,103.9l209.2,181.4l-71.3,247.7c-14,50.899,41.1,92.899,86.5,65.899l224.3-122.7l224.3,122.601 c45.4,27,100.5-15,86.5-65.9l-71.3-247.7l209.2-181.399C960.443,389.172,938.744,322.071,885.344,319.071z" />
	 		 									</svg>
	 										 	<div class="overlay" style="width: 53%"></div>
											</div>
											<span class="ps-shoe_price">
												<fmt:setLocale value="vi_VN" scope="session" />
												<fmt:formatNumber value="${proHot.price }" type="currency" />
											</span>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</section>
	</main>
	
	<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/customer/layout/js.jsp"></jsp:include>

</body>
</html>