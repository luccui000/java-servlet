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
        <title>Trang đăng nhập</title>
        <jsp:include page="includes/style.jsp" ></jsp:include>
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
                                <li class="active">Đăng nhập</li>
                            </ul>
                        </div>                   
                    </div>
                </div> 
            </div>
        </div> 
        <div class="body-content" style="margin-top: 20px;">
            <div class="container">
                <div class="sign-in-page">
                    <div class="row">
                        <!-- Sign-in -->
                        <div class="col-md-6 col-sm-6 sign-in">
                            <h4 class="">Đăng nhập</h4>
                            <p class="">Xin chào, </p> 
                            <form method="POST" action="./dang-nhap" class="register-form outer-top-xs" role="form">
                                <div class="form-group">
                                    <label class="info-title" for="email">Email <span>*</span></label>
                                    <input name="email" type="email" class="form-control unicase-form-control text-input" id="email">
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="matkhau">Mật khẩu <span>*</span></label>
                                    <input name="mat_khau" type="password" class="form-control unicase-form-control text-input" id="matkhau">
                                </div>
                                <div class="radio outer-xs">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Nhớ mật khẩu! </label>
                                    <a href="#" class="forgot-password pull-right">Quên mật khẩu?</a>
                                </div>
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Đăng nhập</button>
                            </form> 
                        </div> 
                        <div class="col-md-6 col-sm-6 create-new-account">
                            <h4 class="checkout-subtitle">Tạo mới tài khoản</h4>
                            <p class="text title-tag-line">Tạo mới tài khoản để nhận nhiều ưu đãi.</p>
                            <form action="./dang-ky" method="POST" class="register-form outer-top-xs" role="form">
                                <div class="form-group">
                                    <label class="info-title" for="">Địa chỉ email <span>*</span></label>
                                    <input name="email" type="email" class="form-control unicase-form-control text-input" id="">
                                </div>
                                <div class="form-group">
                                    <label  class="info-title" for="">Họ tên <span>*</span></label>
                                    <input name="ho_ten" type="text" class="form-control unicase-form-control text-input" id="">
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="">Số điện thoại<span>*</span></label>
                                    <input name="so_dien_thoai" type="text" class="form-control unicase-form-control text-input" id="">
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="">Mật khẩu <span>*</span></label>
                                    <input name="mat_khau" type="password" class="form-control unicase-form-control text-input" id="">
                                </div> 
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Đăng ký</button>
                            </form>
                        </div> 
                    </div> 
                </div> 
            </div>
        </div> 
                               
        <jsp:include page="includes/footer.jsp" />        
        <jsp:include page="includes/script.jsp" /> 
        <%
            if(session.getAttribute("success") != null) {
                out.print("$.toast({ heading: 'Thành công', text: '" + session.getAttribute("success") + "', position: top-right, icon: 'success'  })");
            }
            if(session.getAttribute("error") != null) {
                out.print("$.toast({ heading: 'Lỗi', text: '" + session.getAttribute("error") + "', position: top-right, icon: 'error'  })");
            }
        %>
    </body>
</html>
