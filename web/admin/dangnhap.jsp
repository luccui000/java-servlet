<%@page import="com.luccui.constants.ToastStatus"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
        <link rel="stylesheet" href="../assets/admin/css/bootstrap.min.css"/>
        <jsp:include page="includes/style.jsp" />
    </head>
    <body>
        <div class="main-wrapper account-wrapper">
            <div class="account-page">
                <div class="account-center">
                    <div class="account-box">
                        <form action="<%= request.getContextPath() %>/admin/dang-nhap" method="POST" class="form-signin">
                            <h3>ĐĂNG NHẬP</h3>
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" value="admin@luccui.com" type="text" autofocus="" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label>
                                <input name="password" value="Pa$$w0rd!" type="password" class="form-control">
                            </div>
                            <div class="form-group text-right">
                                <a href="forgot-password.html">Quên mật khẩu?</a>
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" class="btn btn-primary account-btn">Đăng nhập</button>
                            </div>
                            <div class="text-center register-link"> 
                                Don’t have an account? <a href="register.html">Đăng ký tài khoản</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="includes/script.jsp" />
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
