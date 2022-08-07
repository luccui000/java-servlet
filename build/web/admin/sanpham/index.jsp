<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách sản phẩm</title> 
        <jsp:include page="../includes/style.jsp"></jsp:include>  
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css"/>
        <style>
            #tblSanPham_wrapper .row:nth-child(1) {
                position: relative;
                width: 100%;
            }
            #tblSanPham_filter {
                position: absolute; 
                right: -5px;
                top: -40px;
            }
            #tblSanPham_filter .input-sm {
                border-radius: 0;
                width: 350px;
            }
            #tblSanPham_wrapper .row:last-child {
                width: 100%; 
            }
            #tblSanPham_paginate {
                margin-top: 20px;
                text-align: right;
            }
            #tblSanPham_paginate .paginate_button:hover {
               background-color: #ccc;
            }
        </style>
    </head>
    <body> 
        <div class="page-wrapper">
            <jsp:include page="../includes/sidebar.jsp"></jsp:include> 
            <div class="content container-fluid py-4">
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script> 
        <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script> 
        <script>
            $(document).ready(function() {
                $("#tblSanPham").DataTable({ 
                    "bLengthChange": false,
                    "bFilter": true,
                    "bInfo": false,
                    "bAutoWidth": false,
                    "language": {
                        "search": ""
                    }
                });
            })
        </script>
    </body>
</html>
