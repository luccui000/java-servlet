<%@page import="com.luccui.utils.CurrencyFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.lucui.models.ChiTietDonHang"%> 
<%@page import="com.luccui.utils.DateUtil"%>
<%@page import="java.sql.Date"%>
<%@page import="com.lucui.models.DonHang"%>
<%@page import="com.luccui.constants.ToastStatus"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết đơn hàng</title>  
        <jsp:include page="../includes/style.jsp" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="../includes/nav.jsp"></jsp:include>
            <jsp:include page="../includes/sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content">
                    <% 
                        DonHang donhang = (DonHang)request.getAttribute("donhang"); 
                         
                    %>
                    
                    <div class="row">
                        <div class="col-sm-5 col-4">
                            <h4 class="page-title">Chi tiết đơn hàng</h4>
                        </div>
                        <div class="col-sm-7 col-8 text-right m-b-30">
                            <div class="btn-group btn-group-sm">
                                <button class="btn btn-white">CSV</button>
                                <button class="btn btn-white">PDF</button>
                                <button class="btn btn-white">
                                    <i class="fa fa-print fa-lg"></i> Print </button>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row custom-invoice">
                                        <div class="col-6 col-sm-6 m-b-20">
                                            <img src="assets/img/logo-dark.png" class="inv-logo" alt="">
                                            <ul class="list-unstyled">
                                                <li>Minh Lực</li>
                                                <li>126 Nguyễn Thiện Thành,</li>
                                                <li>TP Trà Vinh</li> 
                                            </ul>
                                        </div>
                                        <div class="col-6 col-sm-6 m-b-20">
                                            <div class="invoice-details">
                                                <h3 class="text-uppercase">Mã đơn hàng #<%= donhang.getMaDonHang()  %></h3>
                                                <ul class="list-unstyled">
                                                    <li>Date: <span><%= donhang.getNgayDat() %></span>
                                                    </li>
                                                    <li>Due date: <span><%= DateUtil.addDays(donhang.getNgayDat(), 2) %></span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-lg-6 m-b-20">
                                            <h5>Người mua:</h5>
                                            <ul class="list-unstyled">
                                                <li>
                                                    <h5>
                                                        <strong><%= donhang.getHoTen() %></strong>
                                                    </h5>
                                                </li>  
                                                <li><%= donhang.getDiaChi() %></li>
                                                <li><%= donhang.getSoDienThoai() %></li> 
                                            </ul>
                                        </div>
                                        <div class="col-sm-6 col-lg-6 m-b-20">
                                            <div class="invoices-view">
                                                <span class="text-muted">Chi tiết hóa đơn</span>
                                                <ul class="list-unstyled invoice-payment-details">
                                                    <li>
                                                        <h5>Tổng tiền: <span class="text-right">$288.2</span>
                                                        </h5>
                                                    </li>
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Đơn giá</th>
                                                    <th>Số lượng</th>
                                                    <th class="text-right">Thành tiền</th> 
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="ctdh" items="${chitietdonhangs}" >
                                                    <tr>
                                                        <td><c:out value="${ctdh.getId()}" /></td>
                                                        <td><c:out value="${ctdh.getTenSanPham()}" /></td> 
                                                        <td><c:out value="${ctdh.getDonGia()}" /></td>
                                                        <td><c:out value="${ctdh.getSoLuong()}" /></td>
                                                        <td class="text-right"><c:out value="${ctdh.getThanhTien()}" /></td>
                                                    </tr>
                                                </c:forEach>  
                                            </tbody>
                                        </table>
                                    </div>
                                    <div>
                                        <div class="row invoice-payment">
                                            <div class="col-sm-7"></div>
                                            <div class="col-sm-5">
                                                <div class="m-b-20">
                                                    <h6>Tạm tính</h6>
                                                    <div class="table-responsive no-border"> 
                                                        <table class="table mb-0">
                                                            <tbody>
                                                                <tr>
                                                                    <th>Tạm tính: </th>
                                                                    <td class="text-right">
                                                                        <%= CurrencyFormat.VND(donhang.getThanhTien()).substring(4) %> đ
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Phí vận chuyển: 
                                                                    </th>
                                                                    <td class="text-right"><%= CurrencyFormat.VND(0).substring(4) %> đ</td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Tổng tiền: </th>
                                                                    <td class="text-right text-primary">
                                                                        <h5><%= CurrencyFormat.VND(donhang.getTongTien()).substring(4) %> đ</h5>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> 
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <jsp:include page="../includes/script.jsp" />
        <%
            String message = (String)session.getAttribute(ToastStatus.ERROR);
//            out.print(message);
            if(message != null) {
                out.print(String.format("<script>$.toast({ heading: '%s', text: '%s', showHideTransition: 'fade', icon: 'error', position: 'top-right' })</script>", "Thất bại", message));
                session.removeAttribute(ToastStatus.ERROR);
            }
        %>
    </body>
</html>