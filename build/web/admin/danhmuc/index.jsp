<%@page import="com.luccui.constants.ToastStatus"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh mục</title>  
        <jsp:include page="../includes/style.jsp" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="../includes/nav.jsp"></jsp:include>
            <jsp:include page="../includes/sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-4">
                            <div class="card">
                                <div class="card-body">
                                    <ul class="list-group">
                                        <c:forEach var="danhmuc" items="${danhmucs}" >
                                            <li class="list-group-item">
                                                <a href="#">
                                                    <i class="fa <c:out value="${danhmuc.getHinhAnh()}" />"></i>
                                                    <span class="ml-2" ><c:out value="${danhmuc.getTenDanhMuc()}" /></span>
                                                </a>
                                            </li>
                                        </c:forEach> 
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-8">
                            <div class="card">
                                <div class="card-body">
                                    <h4>Thêm mới danh mục</h4>
                                    <hr />
                                    <form>
                                        <div class="form-group">
                                            <label>Tên danh mục</label>
                                            <input class="form-control" name="ten_danh_muc" />
                                        </div>
                                        <div class="form-group"> 
                                            <button class="btn">Chọn hình ảnh</button>
                                        </div>
                                        <button class="btn btn-success">Lưu lại </button>
                                    </form>
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