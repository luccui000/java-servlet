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
        <title>Trang thanh toán</title>
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
        <div class="body-content outer-top-vs">
            <div class="container">
                <div class="panel">
                    <div class="panel-body">
                         <div class="breadcrumb-inner">
                            <ul class="list-inline list-unstyled">
                                <li><a href="<%= request.getContextPath() %>/">Trang chủ</a></li>
                                <li class="active">Thanh toán</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div>
        <div class="container">
            
        </div>
        <div class="body-content" style="margin-top: 20px;">
            <div class="container">
                <div class="checkout-box ">
                    <div class="row">
                        <div class="col-xs-12 col-sm-9 col-md-9 rht-col">
                            <div class="panel-group checkout-steps" id="accordion">
                                <!-- checkout-step-01  -->
                                <div class="panel panel-default checkout-step-01">
                                    <!-- panel-heading -->
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseOne">
                                                <span>1</span>
                                                Thông tin tài khoản
                                            </a>
                                        </h4>
                                    </div> 
                                    <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;"> 
                                        <div class="panel-body">
                                            <div class="row"> 
                                                <div class="col-md-6 col-sm-6 guest-login">
                                                    <h4 class="checkout-subtitle">Đăng nhập tài khoản</h4>  
                                                    <form class="register-form" role="form">
                                                        <div class="radio radio-checkout-unicase">
                                                            <input id="guest" type="radio" name="text" value="guest" checked="">
                                                            <label class="radio-button guest-check" for="guest">Đăng ký khách</label>
                                                            <br>
                                                            <input id="register" type="radio" name="text" value="register">
                                                            <label class="radio-button" for="register">Đăng ký</label>
                                                        </div>
                                                    </form> 
                                                    <h4 class="checkout-subtitle outer-top-vs"></h4> 
                                                    <button type="submit" class="btn-upper btn btn-primary checkout-page-button checkout-continue ">Tiếp tục</button>
                                                </div> 
                                                <div class="col-md-6 col-sm-6 already-registered-login">
                                                    <h4 class="checkout-subtitle">Bạn đã có tài khoản ?</h4>
                                                    <p class="text title-tag-line">Vui lòng đăng nhập ở phía dưới:</p>
                                                    <form class="register-form" role="form">
                                                        <div class="form-group">
                                                            <label class="info-title" for="exampleInputEmail1">Email <span>*</span>
                                                            </label>
                                                            <input type="email" class="form-control unicase-form-control text-input" id="exampleInputEmail1" placeholder="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="info-title" for="exampleInputPassword1">Mật khẩu <span>*</span>
                                                            </label>
                                                            <input type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder="">
                                                            <a href="#" class="forgot-password">Quên mật khẩu?</a>
                                                        </div>
                                                        <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Đăng nhập</button>
                                                    </form>
                                                </div> 
                                            </div>
                                        </div> 
                                    </div> 
                                </div> 
                                <div class="panel panel-default checkout-step-02">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
                                                <span>2</span>
                                                Thông tin nhận hàng
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="info-title" for="">Họ tên nhận hàng<span>*</span></label>
                                                        <input name="ho_ten" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder=""> 
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="info-title" for="">Số điện thoại<span>*</span></label>
                                                        <input name="so_dien_thoai" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder=""> 
                                                    </div>
                                                </div> 
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="info-title" for="">Ghi chú nhận hàng<span>*</span></label>
                                                        <textarea name="ghi_chu" type="password" class="form-control unicase-form-control text-input" placeholder=""></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                                <div class="panel panel-default checkout-step-03">
                                    <div class="panel-heading">
                                        <h4 class="unicase-checkout-title">
                                            <a data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseThree">
                                                <span>3</span>Thông tin địa chỉ </a>
                                        </h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Tỉnh/Thành phố</label>
                                                        <select name="tinh" class="form-control unicase-form-control text-input">
                                                            <option>1</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Quận/Huyện</label>
                                                        <select name="huyen" class="form-control unicase-form-control text-input"></select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Phường xã</label>
                                                        <select name="xa" class="form-control unicase-form-control text-input"></select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="info-title" for="">Chi tiết địa chỉ<span>*</span></label>
                                                        <input name="dia_chi" type="password" class="form-control unicase-form-control text-input" id="exampleInputPassword1" placeholder=""> 
                                                    </div>
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div> 
                        </div>
                        <div class="col-xs-12 col-sm-3 col-md-3 sidebar">
                            <!-- checkout-progress-sidebar -->
                            <div class="checkout-progress-sidebar ">
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="unicase-checkout-title">Your Checkout Progress</h4>
                                        </div>
                                        <div class="">
                                            <ul class="nav nav-checkout-progress list-unstyled">
                                                <li>
                                                    <a href="#">Billing Address</a>
                                                </li>
                                                <li>
                                                    <a href="#">Shipping Address</a>
                                                </li>
                                                <li>
                                                    <a href="#">Shipping Method</a>
                                                </li>
                                                <li>
                                                    <a href="#">Payment Method</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- checkout-progress-sidebar -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.checkout-box -->
                <!-- ============================================== BRANDS CAROUSEL ============================================== -->
                <div id="brands-carousel" class="logo-slider wow fadeInUp" style="visibility: hidden; animation-name: none;">
                    <div class="logo-slider-inner">
                        <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme" style="opacity: 1; display: block;">
                            <div class="owl-wrapper-outer">
                                <div class="owl-wrapper" style="width: 4680px; left: 0px; display: block;">
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item m-t-15">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand1.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item m-t-10">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand2.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand3.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand4.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand5.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand6.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img src="assets/images/brands/brand2.png" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img data-echo="assets/images/brands/brand4.png" src="assets/images/blank.gif" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img data-echo="assets/images/brands/brand1.png" src="assets/images/blank.gif" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="owl-item" style="width: 234px;">
                                        <div class="item">
                                            <a href="#" class="image">
                                                <img data-echo="assets/images/brands/brand5.png" src="assets/images/blank.gif" alt="">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <!--/.item-->
                            <div class="owl-controls clickable">
                                <div class="owl-buttons">
                                    <div class="owl-prev"></div>
                                    <div class="owl-next"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /.owl-carousel #logo-slider -->
                    </div>
                    <!-- /.logo-slider-inner -->
                </div>
                <!-- /.logo-slider -->
                <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
            </div>
            <!-- /.container -->
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
