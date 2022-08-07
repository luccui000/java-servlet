<%@page import="com.lucui.models.SanPham"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="com.luccui.utils.CurrencyFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./assets/css/main.css"/>
        <link rel="stylesheet" href="./assets/css/blue.css"/>
        <link rel="stylesheet" href="./assets/css/owl.carousel.css"/>
        <link rel="stylesheet" href="./assets/css/owl.transitions.css"/>
        <link rel="stylesheet" href="./assets/css/animate.min.css"/>        
        <link rel="stylesheet" href="./assets/css/rateit.css"/>  
        <link rel="stylesheet" href="./assets/css/bootstrap-select.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.css" integrity="sha512-ITS8GbPjCRA7c/PBl6Kqb9XjvQbKMBXpzEmpi7BgRwf6mUCySmHbF9opWfVUQvbdiYouDYxhxttWS+wyq4l+Ug==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
        <link href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <style>
            .price-container .price {
                font-size: 30px;
                font-weight: bold;
            }
            .quantity-container {
                display: flex;
                flex-direction: row;
                align-items: center;
            }
            .quantity-container .input-qty {
                width: 100px;
                margin-right: 20px;
                padding: 18px 10px;
            }
            .quantity-container .input-qty:focus {
                box-shadow: none;
            }
        </style>
    </head>
    <body class="cnt-home"> 
        <jsp:include page="includes/header.jsp" ></jsp:include>
        <div class="body-content outer-top-vs" id="top-banner-and-menu">
        <div class="container">
            <div class="row">  
                <div class="col-xs-12 col-sm-12 col-md-3 sidebar">  
                    <jsp:include page="includes/sidebar.jsp" ></jsp:include> 
                </div> 
                <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                    <div class="detail-block">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 gallery-holder">
                                <div class="product-item-holder size-big single-product-gallery small-gallery">
                                    <div id="owl-single-product" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
                                        <div class="owl-wrapper-outer">
                                            <div class="owl-wrapper" style="width: 6084px; left: 0px; display: block; transform: translate3d(0px, 0px, 0px); transition: all 200ms ease 0s;">
                                                <div class="owl-item" style="width: 338px;">
                                                    <div class="single-product-gallery-item" id="slide1">
                                                        <a data-lightbox="image-1" data-title="Gallery" href="assets/images/products/p1.jpg">
                                                            <img class="img-responsive" alt="" src='<c:out value="${sanpham.getHinhAnh()}" />' >
                                                        </a>
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>  
                                    </div>   
                                    <!-- /.gallery-thumbs -->
                                </div> 
                            </div> 
                            <div class="col-sm-12 col-md-8 col-lg-8 product-info-block">
                                <div class="product-info">
                                    <h1 class="name"><c:out value="${sanpham.getTenSanPham()}" /></h1>
                                      
                                    <div class="stock-container info-container m-t-10">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="pull-left">
                                                    <div class="stock-box">
                                                        <span class="">Trạng thái: </span>
                                                    </div>
                                                </div>
                                                <div class="pull-left">
                                                    <div class="stock-box">
                                                        <span class="value">Còn hàng</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                    <!-- /.stock-container -->
                                    <div class="description-container m-t-20">
                                        <p><c:out value="${sanpham.getMoTa()}" /></p> 
                                    </div>
                                    <hr />
                                    <div class="price-container info-container m-t-30">
                                        <div class="row">
                                            <div class="col-sm-6 col-xs-6">
                                                <div class="price-box">
                                                    <span class="price">
                                                        <% out.print(CurrencyFormat.VND(((SanPham)request.getAttribute("sanpham")).getGiaKM()).substring(4)); %>đ
                                                    </span>
                                                    <span class="price-strike">
                                                        <del>
                                                            <% out.print(CurrencyFormat.VND(((SanPham)request.getAttribute("sanpham")).getGia()).substring(4)); %>đ
                                                        </del>
                                                    </span>
                                                </div>
                                            </div> 
                                        </div> 
                                    </div> 
                                    <hr />
                                    <div class="quantity-container">
                                        <div class="qty-count">
                                            <input class="form-control input-qty" type="number" value="1" min="0" />
                                        </div>
                                        <div class="add-btn">
                                            <a href="#" class="btn btn-primary">
                                                <i class="fa fa-shopping-cart inner-right-vs"></i> THÊM VÀO GIỎ HÀNG 
                                            </a>
                                        </div>
                                    </div> 
                                </div> 
                            </div> 
                        </div> 
                    </div>
                    <div class="row mt-2" style="margin-top: 20px;">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#home">Thông tin sản phẩm</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#menu1">Mô tả chi tiết</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#menu2">Chính sách và điều khoản</a>
                            </li>
                        </ul>
                        <div class="tab-content" style="font-size: 15px">
                            <div id="home" class="tab-pane fade in active" >
                                <h3>Sản phẩm: <c:out value="${sanpham.getTenSanPham()}" /></h3>
                                <p><c:out value="${sanpham.getMoTa()}" /></p>
                            </div>
                            <div id="menu1" class="tab-pane card fade">
                                <h3>Chi tiết sản phẩm</h3>
                                <p><c:out value="${sanpham.getMoTaChiTiet()}" /></p>
                            </div>
                            <div id="menu2" class="tab-pane card fade">
                                <h3>Chính sách</h3>
                                <p>Some content in menu 2.</p>
                                <h3>Điều khoản</h3>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row" style="margin-top: 20px;">
                        <div id="product-tabs-slider" class="scroll-tabs outer-top-vs">
                            <div class="more-info-tab clearfix ">
                                <h3 class="new-product-title pull-left">Sản phẩm liên quan</h3> 
                            </div>
                            <div class="tab-content outer-top-xs">
                                <div class="tab-pane in active" id="all">
                                    <div class="product-slider">
                                        <div class="owl-carousel home-owl-carousel custom-carousel owl-theme"> 
                                            <c:forEach var="splq" items="${sanphamlienquan}" >
                                                <div class="item item-carousel">
                                                    <div class="products">
                                                        <div class="product">
                                                            <div class="product-image">
                                                                <div class="image">
                                                                    <a href="detail.html">
                                                                        <img src='<c:out value="${splq.getHinhAnh()}" />' alt=""> 
                                                                    </a>
                                                                </div> 
                                                                <div class="tag new">
                                                                    <span>new</span>
                                                                </div>
                                                            </div> 
                                                            <div class="product-info text-left">
                                                                <h3 class="name">
                                                                    <a href="detail.html"><c:out value="${splq.getTenSanPham()}" /></a>
                                                                </h3>
                                                                <div class="rating rateit-small"></div>
                                                                <div class="description"></div>
                                                                <div class="product-price">
                                                                    <span class="price">
                                                                        <c:out value="${splq.getGia()}" />
                                                                    </span>
                                                                    <span class="price-before-discount">
                                                                        <c:out value="${splq.getGia()}" />
                                                                    </span>
                                                                </div> 
                                                            </div> 
                                                            <div class="cart clearfix animate-effect">
                                                                <div class="action">
                                                                    <ul class="list-unstyled">
                                                                        <li class="add-cart-button btn-group">
                                                                            <button data-toggle="tooltip" class="btn btn-primary icon" type="button" title="Add Cart">
                                                                                <i class="fa fa-shopping-cart"></i>
                                                                            </button>
                                                                            <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                                                        </li>
                                                                        <li class="lnk wishlist">
                                                                            <a data-toggle="tooltip" class="add-to-cart" href="detail.html" title="Wishlist">
                                                                                <i class="icon fa fa-heart"></i>
                                                                            </a>
                                                                        </li>
                                                                        <li class="lnk">
                                                                            <a data-toggle="tooltip" class="add-to-cart" href="detail.html" title="Compare">
                                                                                <i class="fa fa-signal" aria-hidden="true"></i>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div> 
                                                            </div> 
                                                        </div> 
                                                    </div> 
                                                </div>
                                            </c:forEach>  
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
           
        <script src="./assets/js/jquery-1.11.1.min.js"></script> 
        <script src="./assets/js/bootstrap.min.js"></script> 
        <script src="./assets/js/bootstrap-hover-dropdown.min.js"></script> 
        <script src="./assets/js/owl.carousel.min.js"></script> 
        <script src="./assets/js/echo.min.js"></script> 
        <script src="./assets/js/jquery.easing-1.3.min.js"></script> 
        <script src="./assets/js/bootstrap-slider.min.js"></script> 
        <script src="./assets/js/jquery.rateit.min.js"></script> 
        <script type="text/javascript" src="./assets/js/lightbox.min.js"></script> 
        <script src="./assets/js/bootstrap-select.min.js"></script> 
        <script src="./assets/js/wow.min.js"></script> 
        <script src="./assets/js/scripts.js"></script>
    </body>
</html>
