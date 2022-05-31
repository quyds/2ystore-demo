<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Liên hệ từ khách hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
    
    <jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
    
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
        <!-- sidebar menu area start -->
        <div class="sidebar-menu">
            <div class="sidebar-header">
                <div class="logo">
                    <a href="">
						<img src="${base }/images/2yadmin.png" >
					</a>
                </div>
            </div>
            <div class="main-menu">
                <div class="menu-inner">
                    <nav>
                        <ul class="metismenu" id="menu">
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true">
                                	<i class="ti-pie-chart"></i>
                                    <span>Số liêu thống kê</span></a>
                                <ul class="collapse">
                                    <li><a href="index.html">Doanh số</a></li>
                                    <li><a href="">Số lượng hàng</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true">
                                	<i class="ti-user"></i>
                                    <span>Quản lý tài khoản</span></a>
                                <ul class="collapse">
                                    <li><a href="${base }/admin/admin">Admin</a></li>
                                    <li><a href="${base }/admin/user">User</a></li>
                                </ul>
                            </li>
                            <li class="active">
                                <a href="javascript:void(0)" aria-expanded="true">
                                	<i class="ti-layout"></i>
                                    <span>Quản lý danh mục</span></a>
                                <ul class="collapse">
                                    <li><a href="${base }/admin/categories">Danh mục</a></li>
                                    <li class="active"><a href="">Thêm danh mục</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true">
                                	<i class="ti-write"></i>
                                    <span>Quản lý hàng hóa</span></a>
                                <ul class="collapse">
                                    <li><a href="${base }/admin/list-item">Danh sách hàng hóa</a></li>
                                    <li><a href="${base }/admin/add-item">Thêm mặt hàng</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true">
                                	<i class="ti-package"></i>
                                    <span>Quản lý đơn hàng</span></a>
                                <ul class="collapse">
                                    <li><a href="${base }/admin/sale-order">Đơn hàng</a></li>
                                    <li><a href="alert.html">Đơn hàng đã giao</a></li>
                                </ul>
                            </li> 
                            <li>
                                <a href="javascript:void(0)" aria-expanded="true">
                                    <i class="ti-comment"></i>
                                    <span>Liên hệ</span>
                                </a>
                                <ul class="collapse">
                                    <li><a href="${base }/admin/contact">Khách hàng</a></li>
                                </ul>
                            </li> 
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        <div class="search-box pull-left">
                            <form action="#">
                                <input type="text" name="search" placeholder="Search..." required>
                                <i class="ti-search"></i>
                            </form>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix innerTopRight">
                        <ul class="notification-area pull-right">
                           <li class="center_login">
							<c:choose>
								<c:when test = "${isLogined}">
									<span style="margin-right: 50px;">Chào, ${userLogined.email }</span>
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
            <!-- header area end -->
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Hàng hóa</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="index.html">Trang chủ</a></li>
                                <li><span>Thêm mặt hàng</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <div class="main-content-inner">
                <div class="row">
                    <div class="col-lg-12 col-ml-12">
                        <div class="row">
                            <div class="col-12 mt-5">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Thêm danh mục</h4>
                                        <sf:form modelAttribute="categories" action="${base }/admin/add-categories" method="post" enctype="">
                                        	
                                        	<sf:hidden path="id" />
                                        	
                                   <!--     <div class="form-group">
                                                <label for="">Mã danh mục</label>
                                                <sf:input path="id" type="text" class="form-control" name="" id="" aria-describedby="emailHelp" placeholder="VD: 1234"></sf:input>
                                            </div> -->
                                            <div class="form-group">
                                                <label for="">Tên danh mục</label>
                                                <sf:input path="name" type="text" class="form-control" name="" id="maSanPham" placeholder="VD: Nike"></sf:input>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Mô tả</label>
                                                <sf:textarea path="description" type="text" class="form-control" name="" id="" placeholder="" style="height: 100px;" ></sf:textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary mt-4 pr-2 pl-2">Thêm</button>
                                            <button type="submit" class="btn btn-primary mt-4 pr-2 pl-2" style="background-color: ">Hủy</button>
                                        </sf:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->
        <footer>
            <div class="footer-area">
                <p>© Copyright 2022. All right reserved. Template by <a href="">HP</a>.</p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
    <!-- jquery latest version -->
  
  <jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>
 
</body>

</html>