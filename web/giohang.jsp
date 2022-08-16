<%@page import="java.util.Map"%>
<%@page import="com.luccui.entities.Item"%>
<%@page import="com.lucui.models.GioHang"%>
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
        <title>Trang giỏ hàng</title>
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
            tbody > tr > td {
                padding: 20px 0 !important;
                font-size: 16px;
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
                                <li class="active">Giỏ hàng</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div> 
        <div class="body-content" style="margin-top: 20px;">
            <div class="container">
                <div class="checkout-box ">
                    <div class="row">
                        <div class="col-xs-12 col-sm-9 col-md-9 rht-col">
                             <div class="panel"> 
                                <div class="panel-heading">
                                    <h4 >
                                        Thông tin giỏ hàng
                                    </h4>
                                </div>
                                 <div class="panel-body">
                                     <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Mã sản phẩm</th>
                                                <th>Tên sản phẩm</th>
                                                <th style='width: 200px;'>Số lượng</th>
                                                <th>Đơn giá</th>
                                                <th class="text-right">Thành tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                               GioHang giohang = (GioHang)request.getAttribute("GIO_HANG");
                                               if(giohang != null) {
                                                   for(Map.Entry item : giohang.getItems().entrySet()) {
                                                        Item it = (Item)item.getValue(); 
                                                        out.print("<tr>");
                                                        out.print("<td>" + it.getSanPham().getMaSanPham() + "</td>");
                                                        out.print("<td class='ml-1'>" + it.getSanPham().getTenSanPham() + "</td>");
                                                        out.print("<td style='width: 200px;'>"
                                                                + "<form action='./gio-hang' >"
                                                                 + "<input name='action' value='updateCart' type='hidden' />"
                                                                 + "<input name='id' value='" + it.getSanPham().getId() + "' type='hidden' />"
                                                                 + "<div style='display: flex'>"
                                                                 + "<input name='soluong' min='1' value='" + it.getSoLuong() + "' class='form-control unicase-form-control text-input ' style='width: 80px' type='number' />"
                                                                 + "<button class='btn'><i class='fa fa-refresh'></i></button>"
                                                                 + "</div>"
                                                                 + "</form>"
                                                                + "</td>");
                                                        out.print("<td>" + CurrencyFormat.VND(it.getSanPham().getGiaKM()).substring(4) + "đ</td>");
                                                        out.print("<td class='text-right' style='font-weight: bold;'>" + CurrencyFormat.VND(it.getSanPham().getGiaKM() * it.getSoLuong()).substring(4) + "đ</td>"); 
                                                        out.print("</tr>");
                                                    }
                                               } else {
                                                   out.print("<tr><td class='text-center' colspan='5'>Không tìm thấy sản phẩm nào trong giỏ hàng</td></tr>");
                                               }
                                            %>
                                            <tr> 
                                                <td colspan="5" style="text-align: right;">
                                                    <span>Tạm tính: </span>
                                                    <b style="font-size: 20px; color: #157ed2"><%= CurrencyFormat.VND(giohang != null ? giohang.getTotal() : 0).substring(4) %> đ</b>
                                                </td>
                                            </tr>
                                        </tbody>
                                   </table> 
                                   
                                   <a href="<%= request.getContextPath() %>/thanh-toan" class="btn btn-primary">Đi đến thanh toán</a>
                                 </div>
                             </div>
                        </div>
                        <div class="col-xs-12 col-sm-3 col-md-3 sidebar"> 
                            <div class="checkout-progress-sidebar ">
                                <div class="panel-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="unicase-checkout-title">Quy trình đặt hàng</h4>
                                        </div>
                                        <div class="">
                                            <ul class="nav nav-checkout-progress list-unstyled">
                                                <li>
                                                    <a href="#">Kiểm tra giỏ hàng</a>
                                                </li>
                                                <li>
                                                    <a href="#">Điền thông tin</a>
                                                </li>
                                                <li>
                                                    <a href="#">Chọn địa chỉ</a>
                                                </li>
                                                <li>
                                                    <a href="#">Chọn phương thức thanh toán</a>
                                                </li>
                                            </ul>
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
