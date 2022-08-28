<%@page import="com.luccui.utils.CurrencyFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.lucui.models.DonHang"%>
<%@page import="com.luccui.constants.Constant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin tài khoản</title>
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
            tbody > tr > td {
                padding: 20px 5px !important;
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
                                <li class="active">Tài khoản</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div> 
        <div class="body-content" style="margin-top: 20px;">
            <div class="container">
                <div class="panel">
                    <div class="panel-body">
                        <h4>Thông tin tài khoản</h4><hr />
                        <p style="font-size: 20px">Xin chào, 
                            <%
                                if(session.getAttribute(Constant.SESSION_ID) != null) {
                                    out.print(session.getAttribute(Constant.SESSION_HO_TEN));
                                }
                            %>
                        </p> 
                    </div>
                </div>
                <div class="panel">
                    <div class="panel-body">
                        <h4>Danh sách đơn hàng bạn đã đặt</h4>
                    <hr />
                    <% 
                        List<DonHang> donhangs = (List<DonHang>)request.getAttribute("donhangs");
                    %>

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Ngày đặt</th>
                                <th>Thành tiền</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                            <tr>
                        </thead>
                        <tbody>
                            <%
                                if(donhangs.size() > 0) {
                                    for(DonHang donhang : donhangs) {
                                        out.print("<tr>");
                                            out.print(String.format("<td>%s</td>", donhang.getMaDonHang()));
                                            out.print(String.format("<td>%s</td>", donhang.getNgayDat()));
                                            out.print(String.format("<td>%s đ</td>", CurrencyFormat.VND(donhang.getThanhTien()).substring(4)));
                                            out.print(String.format("<td>%s đ</td>", CurrencyFormat.VND(donhang.getTongTien()).substring(4)));
                                            if(donhang.getTrangThai() == 0)
                                                out.print(String.format("<td><span class='label label-secondary'>Chưa xác nhận</span></td>"));
                                            else if(donhang.getTrangThai() == 1)
                                                out.print(String.format("<td><span class='label label-info'>Đang giao hàng</span></td>"));
                                            if(donhang.getTrangThai() == 2)
                                                out.print(String.format("<td><span class='label label-success'>Đã hoàn thành</span></td>"));
                                        out.print("</tr>");
                                    } 
                                } else {
                                    out.print("<tr><td colspan='5'>Bạn chưa mua sản phẩm nào</td><tr>");
                                }
                            %>
                        </tbody>
                    </table>
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
        <script src="./assets/js/lightbox.min.js"></script> 
        <script src="./assets/js/bootstrap-select.min.js"></script> 
        <script src="./assets/js/wow.min.js"></script> 
        <script src="./assets/js/scripts.js"></script>
    </body>
</html>
