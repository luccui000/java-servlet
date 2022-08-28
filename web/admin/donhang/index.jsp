<%@page import="com.luccui.constants.ToastStatus"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đơn hàng</title>  
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
                            <table class="table mt-2" id="tblDonHang">
                                <thead>
                                    <tr>
                                        <th>Mã đơn hàng</th>
                                        <th>Người đặt</th>
                                        <th>Số điện thoại</th> 
                                        <th>Địa chỉ</th> 
                                        <th>In hóa đơn</th> 
                                        <th></th>
                                    </th>
                                </thead>
                                <tbody> 
                                    <c:forEach var="donhang" items="${donhangs}">
                                        <tr>
                                            <td>
                                                <a href="<%= request.getContextPath() %>/admin/don-hang?action=show&id=<c:out value='${donhang.getId()}' />">
                                                    <c:out value="${donhang.getMaDonHang()}" /></td> 
                                                </a> 
                                            <td><c:out value="${donhang.getHoTen()}" /></td> 
                                            <td><c:out value="${donhang.getSoDienThoai()}" /></td>
                                            <td><c:out value="${donhang.getDiaChi()}" /></td> 
                                            <td>
                                                <a class="btn btn-sm" href="<c:out value="${donhang.getId()}" />">
                                                    <i class="fa fa-print"></i>
                                                </a>
                                            </td> 
                                            <td>
                                                <c:choose>
                                                    <c:when test="${donhang.getTrangThai() == 0}" >
                                                        <a class="btn btn-primary btn-sm" href="<%= request.getContextPath() %>/admin/don-hang?action=xacnhan&status=<c:out value='${donhang.getTrangThai()}' />&id=<c:out value='${donhang.getId()}' />">Xác nhận</a> 
                                                    </c:when>
                                                    <c:when test="${donhang.getTrangThai() == 1}" >
                                                        <a class="btn btn-success btn-sm" href="<%= request.getContextPath() %>/admin/don-hang?action=danggiaohang&status=<c:out value='${donhang.getTrangThai()}' />&id=<c:out value='${donhang.getId()}' />">Đang giao hàng</a> 
                                                    </c:when>
                                                    <c:when test="${donhang.getTrangThai() == 2}" >
                                                        <a class="btn btn-secondary btn-sm" disable href="<%= request.getContextPath() %>/admin/don-hang?action=show&id=<c:out value='${donhang.getId()}' />">Đã hoàn thành</a> 
                                                    </c:when>
                                                </c:choose> 
                                                <!--<a href="<%= request.getContextPath() %>/admin/don-hang?action=show&id=<c:out value='${donhang.getId()}' />">Chi tiết</a>--> 
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
            String success = (String)session.getAttribute(ToastStatus.SUCCESS);
            String error = (String)session.getAttribute(ToastStatus.ERROR);
//            out.print(message);
            if(error != null) {
                out.print(String.format("<script>$.toast({ heading: '%s', text: '%s', showHideTransition: 'fade', icon: 'error', position: 'top-right' })</script>", "Thất bại", error));
                session.removeAttribute(ToastStatus.ERROR);
            }
            if(success != null) {
                out.print(String.format("<script>$.toast({ heading: '%s', text: '%s', showHideTransition: 'fade', icon: 'success', position: 'top-right' })</script>", "Thành công", success));
                session.removeAttribute(ToastStatus.SUCCESS);
            }
        %>
    </body>
</html>