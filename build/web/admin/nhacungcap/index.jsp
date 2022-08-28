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
                    <div class="card">
                        <div class="card-body">
                            <a class="btn btn-success btn-sm" href="<%= request.getContextPath() %>/admin/nha-cung-cap?action=create">Thêm mới</a>
                            <table class="table mt-2" id="tblNhaCungCap">
                                <thead>
                                    <tr>
                                        <th>Tên nhà cung cấp</th>
                                        <th>Email</th>
                                        <th>Số điện thoại</th> 
                                        <th>Địa chỉ</th> 
                                        <th></th>
                                    </th>
                                </thead>
                                <tbody> 
                                    <c:forEach var="ncc" items="${nhacungcaps}">
                                        <tr>
                                            <td><c:out value="${ncc.getTenNhaCungCap()}" /></td> 
                                            <td><c:out value="${sanpham.getEmail()}" /></td> 
                                            <td><c:out value="${sanpham.getSoDienThoai()}" /></td>
                                            <td><c:out value="${sanpham.getDiaChi()}" /></td> 
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