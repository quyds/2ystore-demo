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
	
	<link rel="stylesheet" type="text/css" href="${base}/css/detail.css">
	<link rel="stylesheet" type="text/css" href="${base}/css/home.css">
	
	<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
	
	<jsp:include page="/WEB-INF/views/customer/layout/css.jsp"></jsp:include>
</head>
<body>
	
<jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>

<main class="ps-main">
		<section class="search">
			<div class="ps-container">
				<div class="clearfix">
					<form>
						<div class="row">
							<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3 dvtoolbar dvtool input-search">
								<div class="form-group">
									<label class="label-search">Chọn Size Giày</label>
									<select class="select-search">
										<option value="">Chọn Size Giày</option>
										<option value="">36</option>
										<option value="">37</option>
										<option value="">38</option>
										<option value="">39</option>
										<option value="">40</option>
									</select>
									<span></span>
								</div>
							</div>
							<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3 dvtoolbar dvtool input-search">
								<div class="form-group">
									<label class="label-search">Khoảng Giá</label>
									<select class="select-search">
										<option value="">Tất cả</option>
										<option value="">Từ 3 đến 5 Triệu</option>
										<option value="">Từ 5 đến 10 Triệu</option>
										<option value="">Từ 10 đến 15 Triệu</option>
										<option value="">Trên 15 Triệu</option>
									</select>
								</div>
							</div>
							<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3 dvtoolbar dvtool input-search">
								<div class="form-group">
									<label class="label-search">Sắp Xếp Theo</label>
									<select class="select-search">
										<option value="">Giá thấp đến cao</option>
										<option value="">Giá cao đến thấp</option>
										<option value="">Tên A - Z</option>
										<option value="">Tên Z - A</option>
									</select>
								</div>
							</div>
							<div class="col-sm-12 col-md-3 col-lg-3 col-xl-3 dvtool btn-search-lock">
								<button class="btn-search" style="width: 75%;">Tìm Giày Ngay</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
		<section class="ps-product-detail" style="padding-top: 80px; padding-bottom: 80px;">
			<div class="ps-container">
				<div class="row" style="justify-content: center;">
					<div class="col-xl-10 col-lg-12 col-xl-offset-1">
						<div class="ps-product_thumbnail">
							<div class="ps-product_preview">
								<div class="ps-product_variants slick-initialized slick-slider slick-vertical">
								
								</div>
							</div>
							<div class="ps-product_image slick-initialized slick-slider">
								<a href=""><img src="${base }/Upload/${product.avatar }" style="width: 80%"></a>
							</div>
						</div>
						<div class="ps-product_info">
							<div class="ps-product_rating">
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
							<h1>${product.title }</h1>
							<p class="ps-product_category">Mã SP: <strong>${product.id }</strong></p>
							<h3 class="ps-product_price">
								<b class="new-price">
									<fmt:setLocale value="vi_VN" scope="session" />
									<fmt:formatNumber value="${product.price }" type="currency" />
								</b>
							</h3>
							<div class="ps-product_block ps-product_quickview"></div>
							<div class="size-color clearfix">
								<div class="product-form product-size">
									<div class="row">
										<div class="col-12">
											<ul class="wapper_cb size d-flex flex-wrap justify-content-center justify-content-lg-start">
												<li class="cb">
													<label>
														<input type="radio" class="radio" name="">
														<div class="rd_in">35</div>
													</label>
												</li>
												<li class="cb">
													<label>
														<input type="radio" class="radio" name="">
														<div class="rd_in">36</div>
													</label>
												</li>
												<li class="cb">
													<label>
														<input type="radio" class="radio" name="">
														<div class="rd_in">37</div>
													</label>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<form id="addToCart">
								<!-- <input type="" name="">
								<input type="" name=""> -->
								<div class="form-group d-block d-sm-flex align-items-sm-center justify-content-center justify-content-lg-start">
									<div class="product-form product-qty">
										<div class="product-form-group">
											<div class="number_price d-flex justify-content-center">
												<div class="custom">
													<button class="reduced items-count sub" type="button">-</button>
											  		<input type="text" class="input-text qty" title="Qty" min="1" maxlength="12" id="qty" name="quantity" value="1" readonly="">
													<button class="increase items-count add" type="button">+</button>
													<div class="clear"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div></div>
									<div class="col-12 col-lg-6 p-0">
										<button class="ps-btn d-block m-0 w-100 mb-10 text-center btn-pro-detail" onclick="AddToCart('${base }', ${product.id}, 1);">
											 Thêm vào giỏ
										</button>
									</div>
									<div class="col-12 col-lg-6 p-0">
										<button class="ps-btn btn-buy-now d-block m-0 w-100 mb-10 text-center btn-pro-detail">
											 Mua ngay
										</button>
									</div>
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
						<div class="tab-content tab-content-info">
							<div class="tab-pane active">
								<p>
									${product.details }
								<p>
									<strong>2YSTORE.VN</strong>
									✓30 Ngày Đổi Hàng ✓Giao Hàng Miễn Phí ✓Thanh Toán Khi Nhận Hàng ✓Bảo Hành Hàng Chính Hãng Trọn Đời.!!!
								</p>
								<p>
									<strong>Đến với "2YSTORE.VN” quý khách hàng sẽ có những sản phẩm ưng ý nhất, chất lượng phục vụ tốt và giá thành tốt nhất, cùng những “ Chương Trình Khuyến Mãi Đặc Biệt”.</strong>
								</p>
								<p>
									Địa chỉ: <strong>Cầu Diễn, Hà Nội</strong>
								</p>
								<p>
									<iframe width="100%" height="600" src="https://www.youtube.com/embed/fhKDgHUHrDw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								</p>
								<p></p>
								<p></p>
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