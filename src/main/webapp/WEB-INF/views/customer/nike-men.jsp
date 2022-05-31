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
	<link rel="stylesheet" type="text/css" href="${base}/css/list-nike.css">
	
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
		<section class="ps-blog-grid pt-30 pb-30">
				<div class="ps-container">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-12">
							<div class="row">
								<div class="col-12">
					                <div class="breadcrumbs">
										<ul>
											<li>
												<a href="${base }/home">Trang chủ</a>
												<span> > </span>
											</li>
											<li>
										        <a href="${base }/list-nike"><span> Nike</span></a>
										        <span> > </span>
									        </li>
									         <li>
										        <a href="${base }/nike/men"><span> Nam</span></a>
										
									        </li>
										</ul>
									</div>
								</div>
								<c:forEach items="${nikeMen.data}" var="nikeMen" begin="0" end="23">
								<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-6 itemPro">
									<div class="ps-shoe mb-30">
										<div class="ps-shoe_thumbnail">
											<div class="product-label-group"></div>
											<a class="ps-shoe_overlay" href="${base }/product/details/${nikeMen.seo}"><img src="${base }/Upload/${nikeMen.avatar}"></a>
										</div>
										<div class="ps-shoe_content">
											<div class="ps-shoe_detail">
												<a class="ps-shoe_name" href="${base }/product/details/${nikeMen.seo}">${nikeMen.title}</a>
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
													<fmt:formatNumber value="${nikeMen.price }" type="currency" />
												</span>
											</div>
										</div>
									</div>
								</div>
								</c:forEach>
					            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					            	<div class="ps-pagination">
					            		<div class="pagination">
					            			<li class="page-item active">
					            				<a class="page-link" href="">1</a>
					            			</li>
					            			<li class="page-item">
					            				<a class="page-link" href="">2</a>
					            			</li>
					            		</div>
					            	</div>
					            </div>	
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<aside class="ps-widget-sidebar">
								<div class="ps-widget_content">
									<a href=""><img src="../images/bannersitebar01.jpg" width="100%"></a>
								</div>
							</aside>
							<aside class="ps-widget-sidebar">
								<div class="ps-widget_header">
                                    <h3>Tin tức mới</h3>
								</div>
								<div class="ps-widget_content">
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a  class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a  class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a  class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a  class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
                                    <div class="ps-post-sidebar">
                                    	<div class="ps-post_thumbnail">
                                    		<a href=""><img src="../images/sidebar/news/spa-giay-chuyen-nghiep-king-shoes-ve-sinh-giay-crep-protect.jpg" style="width: 100%"></a>
                                    	</div>
                                    	<div class="ps-post_content">
                                    		<a class="ps-post_title" href="">Dịch vụ vệ sinh giày sneaker chuyên nghiệp tại Hà Nội - 2YSTORE</a>
                                    		<span>
												<i class="fa fa-calendar-o"></i> 31/03/2022 - <i class="fa fa-clock-o"></i> 8:00AM
											</span>
                                    	</div>
                                    </div>
								</div>
							</aside>
							<aside class="ps-widget-sidebar">
								<div class="ps-widget_header">
									<h3>Sản phẩm mới</h3>
								</div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
                                <div class="ps-widget_content">
                                	<div class="ps-shoe-sidebar">
                                		<div class="ps-shoe_thumbnail">
                                			<a href=""><img src="../images/sidebar/sneaker/sneaker-c77124-super-star-adidas-1.jpeg" style="width: 100%"></a>
                                		</div>
                                		<div class="ps-shoe_content">
                                			<a class="ps-shoe_title" href="">SUPERSTAR</a>
                                			<div>sao</div>
                                			<p> 1,950,000 đ </p>
                                		</div>
                                	</div>
                                </div>
							</aside>
							<aside class="ps-widget-sidebar">
								<div class="ps-widget_header">
									<h3>Danh mục</h3>
								</div>
								<div class="ps-widget_content">
									<ul class="ps-tags">
										<li>
											<a href="">Jordan</a>
										</li>
										<li>
											<a href="">Yeezy</a>
										</li>
										<li>
											<a href="../layouts/list-nike.html">Nike</a>
										</li>
										<li>
											<a href="">Adidas</a>
										</li>		
									</ul>
								</div>
							</aside>
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