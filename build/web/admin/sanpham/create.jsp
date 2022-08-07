<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm mới sản phẩm</title>
        <jsp:include page="../includes/style.jsp"></jsp:include>
    </head>
    <body>
        <div class="page-wrapper">
            <jsp:include page="../includes/sidebar.jsp"></jsp:include> 
            <div class="content container-fluid"> 
                <div class="row mt-2">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body p-0">
                                <nav class="navbar navbar-expand-lg "> 
                                    <div class="collapse navbar-collapse"> 
                                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0"> 
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Trang chủ</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Hóa đơn</a>
                                            </li>
                                        </ul>
                                        <form class="form-inline my-2 my-lg-0">
                                            <input class="form-control mr-sm-2" style="border-radius: 0; width: 350px;" type="search" placeholder="Nhập vào từ khóa tìm kiếm...">
                                            <button class="btn btn-outline-success my-2 my-sm-0" style="border-radius: 0;" type="submit">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </form>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <form method="POST" action="<%= request.getContextPath() %>/san-pham?action=store">
                    <div class="row py-4">
                        <div class="col-8">
                            <div class="card">
                                <div class="card-body"> 
                                    <div class="form-group">
                                        <label for="">Mã sản phẩm</label>
                                        <input name="ma_san_pham" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="">Tên sản phẩm</label>
                                        <input name="ten_san_pham" class="form-control" />
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="">Danh mục</label>
                                                <select name="danhmuc_id" class="form-control">
                                                    <c:forEach var="dm" items="${danhmucs}" >
                                                        <option
                                                            value="<c:out value="${dm.getId()}" />"
                                                            >
                                                            <c:out value="${dm.getTenDanhMuc()}" />
                                                        </option>
                                                    </c:forEach>
                                                </select>

                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="">Nhà cung cấp</label>
                                                <select name="nhacungcap_id" class="form-control">
                                                    <c:forEach var="ncc" items="${nhacungcaps}" >
                                                        <option
                                                            value="<c:out value="${ncc.getId()}" />"
                                                            >
                                                            <c:out value="${ncc.getTenNhaCungCap()}" />
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div> 
                                    </div>
                                    <div class="form-group">
                                        <label for="">Mô tả ngắn về sản phẩm</label>
                                        <textarea name="mo_ta_ngan" class="form-control" ></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Mô tả chi tiết về sản phẩm</label>
                                        <textarea name="mo_ta_chi_tiet" class="form-control" ></textarea>
                                    </div>
                                    <div class="row">
                                        <div class="col-10">
                                            <div class="row">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Giá nhập</label>
                                                        <input value="0" name="gia_sp" class="form-control" type="number" />
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Giá khuyến mãi</label>
                                                        <input value="0" name="gia_km" class="form-control" type="number" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-2">
                                            <div class="form-group">
                                                <label for="">Số lượng</label>
                                                <input value="1" name="so_luong" class="form-control" type="number"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4" >
                            <div class="card"> 
                                <div class="card-body" style="padding: 10px;">
                                    <h5 >Hành động</h5>
                                    <hr />
                                    <button class="btn btn-success" style="width: 80px;">Lưu</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div> 
        </div>
    </body>
</html>