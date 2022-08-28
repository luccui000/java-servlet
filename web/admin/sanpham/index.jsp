<%@page import="com.luccui.constants.ToastStatus"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>  
        <jsp:include page="../includes/style.jsp" />
    </head>
    <body>
        <div class="main-wrapper">
            <jsp:include page="../includes/nav.jsp"></jsp:include>
            <jsp:include page="../includes/sidebar.jsp"></jsp:include>
            <div class="page-wrapper">
                <div class="content">
                    <div class="card">
                        <div class="card-body">
                            <a class="btn btn-success btn-sm" href="./san-pham?action=create">Thêm mới</a>
                            <table class="table mt-2" id="tblSanPham">
                                <thead>
                                    <tr>
                                        <th>Mã sản phẩm</th>
                                        <th>Hình ảnh</th>
                                        <th>Tên sản phẩm</th> 
                                        <th>Giá SP</th>
                                        <th>Khuyến mãi</td>
                                        <th>Số lượng</th>
                                        <th></th>
                                    </th>
                                </thead>
                                <tbody> 
                                    <c:forEach var="sanpham" items="${sanphams}">
                                        <tr>
                                            <td><c:out value="${sanpham.getMaSanPham()}" /></td>
                                            <td>
                                                <img class="img-thumbnail" style="width: 100px" src="<%= request.getContextPath() %>/<c:out value="${sanpham.getHinhAnh()}" />" />
                                            </td>
                                            <td><c:out value="${sanpham.getTenSanPham()}" /></td> 
                                            <td><c:out value="${sanpham.getGia()}" /></td>
                                            <td><c:out value="${sanpham.getGiaKM()}" /></td>
                                            <td><c:out value="${sanpham.getSoLuong()}" /></td>
                                            <td>
                                                <a href="./san-pham?action=edit&id=<c:out value='${sanpham.getId()}' />">Edit</a>
                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                <a href="./san-pham?action=delete&id=<c:out value='${sanpham.getId()}' />">Delete</a>                     
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
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