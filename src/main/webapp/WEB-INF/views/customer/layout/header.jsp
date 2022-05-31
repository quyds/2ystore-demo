<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header class="header navigation-sticky" itemscope="" itemtype="http://schema.org/WPHeader" style="margin-top: 0px; box-shadow: 0 0 10px rgb(0 0 0 / 10%);">
		<div id="topbar" class="clearfix hidden-xs tp_header">
			<div class="container-fluid clearfix topbar-top">
				<div class="no-padding col-xs-12 col-sm-8 col-md-6 hidden-xs top_bar_left">
					<div class="innerTopLeft">
						<ul>
							<li>
								<a class="btnHL" href="tel:0867887577">
								<span class="iconTop icon-1-top"><i class="fa fa-volume-control-phone" aria-hidden="true"></i></span>
								<span class="title-info-top"><b>0969.696.969</b></span>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="no-padding col-xs-12 col-sm-4 col-md-6 top_bar_right">
					<div class="innerTopRight">
						<ul>
							<li id="cart_header_top">
								<span id="site-cart-handle" class="icon-cart" aria-label="Open cart" title="Giỏ hàng">
									<a href="${base }/cart/view" class="count-holder">
										<span class="iconTop icon-5-top"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
										<span class="title-info-top">Giỏ hàng <span>(<span class="count"  min="0">${totalItems }</span>)</span>
										</span>
									</a>
								</span>
							</li>
							<li class="center_login">
							<c:choose>
								<c:when test = "${isLogined}">
									<span style="margin-right: 20px;">Chào, ${userLogined.email }</span>
									<div class="sub_login">
					                 <ul>
					                   <li>
					                     <a href="">Thông tin tài khoản</a>
					                   </li>
					                   <li>
					                     <a href="${base }/logout">Đăng xuất</a>
					                   </li>
					                 </ul>
					                </div>
								</c:when>
								<c:otherwise>
									<a href="${base }/login">
									<span class="iconTop icon-4-top"><i class="fa fa-user-circle" aria-hidden="true"></i></span>
									<span class="title-info-top">Tài khoản</span>
									</a>
								</c:otherwise>
							</c:choose>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<nav>
			<div class="main-header clearfix tp_header">
				<div class="no-padding hidden-xs col-sm-12 col-md-2">
					<div class="header-mid">
						<div class="logo">
							<!-- <a href=""><img src="../images/logo.png" width="50%"></a> -->
							<a href="${base }/home"><img src="${base }/images/2ystore.png" ></a>
						</div>
					</div>
				</div>
				<div class="no-padding col-xs-12 hidden-sm hidden-xs col-md-8 menu-pc">
					<div class="menu-desktop hidden-sm hidden-xs">
						<div class="menu">
							<ul>
								<li>
									<a href="${base }/list-nike">Giày nike</a>
									<div class="sub_menu">
					                 <ul>
					                   <li>
					                     <a href="${base }/nike/men">Nam</a>
					                   </li>
					                   <li>
					                     <a href="${base }/nike/women">Nữ</a>
					                   </li>
					                 </ul>
					                </div>
								</li>
								<li>
									<a href="">Giày adidas</a>
									<div class="sub_menu">
					                 <ul>
					                   <li>
					                     <a href="">Nam</a>
					                   </li>
					                   <li>
					                     <a href="">Nữ</a>
					                   </li>
					                 </ul>
					                </div>
								</li>
								<li>
									<a href="">Giày jordan</a>
									<div class="sub_menu">
					                 <ul>
					                   <li>
					                     <a href="">Nam</a>
					                   </li>
					                   <li>
					                     <a href="">Nữ</a>
					                   </li>
					                 </ul>
					                </div>
								</li>
								<li>
									<a href="">Giày yeery</a>
									<div class="sub_menu">
					                 <ul>
					                   <li>
					                     <a href="">Nam</a>
					                   </li>
					                   <li>
					                     <a href="">Nữ</a>
					                   </li>
					                 </ul>
					                </div>
								</li>
								<li>
									<a href="">Giày bitis</a>
									<div class="sub_menu">
					                 <ul>
					                   <li>
					                     <a href="">Nam</a>
					                   </li>
					                   <li>
					                     <a href="">Nữ</a>
					                   </li>
					                 </ul>
					                </div>
								</li>
								<li>
									<a href="">Tin tức</a>
								</li>
								<li>
									<a href="${base }/contact">Liên hệ</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="no-padding col-xs-12 hidden-sm hidden-xs col-md-2">
					<div class="searchFormHeader" itemscope="" itemtype="https://schema.org/WebSite">
						<meta itemprop="url" content="http://foxshop.vn/?msclkid=bb7becf6bad811ec862bfc80280681b4">
						<meta itemprop="name" content="Tìm kiếm">
						<form class="searchHeader searchDesktop" action="/search" method="get" itemprop="potentialAction" itemscope="" itemtype="https://schema.org/SearchAction">
							<meta itemprop="url" content="http://foxshop.vn/?msclkid=bb7becf6bad811ec862bfc80280681b4">
							<meta itemprop="target" content="/search?q={q}">
							<input itemprop="query-input" type="text" name="q" class="searchInput" placeholder="Tìm kiếm...">
							<input type="submit" class="btnSearch">
						</form>
						<div id="resultSearchDesktop" class="resultDesktop">
							<div class="innerResultDesktop"></div>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>