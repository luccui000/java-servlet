<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="danhmucs" class="com.luccui.dao.impl.DanhMucDAOImpl" /> 
<div class="side-menu animate-dropdown outer-bottom-xs">
<div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Danh mục</div>
<nav class="yamm megamenu-horizontal"> 
    <ul class="nav">
        <c:forEach var="danhmuc" items="${danhmucs.all()}">
            <li class="dropdown menu-item"> 
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="icon fa <c:out value="${danhmuc.getHinhAnh()}" />" aria-hidden="true"></i>
                    <c:out value="${danhmuc.getTenDanhMuc()}" />
                </a> 
            </li> 
        </c:forEach> 
    </ul> 
</nav> 
</div>  
<div class="sidebar-widget product-tag">
<h3 class="section-title">Tag sản phẩm</h3>
<div class="sidebar-widget-body outer-top-xs">
<div class="tag-list"> <a class="item" title="Phone" href="category.html">Điện thoại</a> <a class="item active" title="Vest" href="category.html">Iphone</a> <a class="item" title="Smartphone" href="category.html">Android</a> <a class="item" title="Furniture" href="category.html">Camera</a> <a class="item" title="T-shirt" href="category.html">Phụ kiện</a> <a class="item" title="Sweatpants" href="category.html">Sạc</a> <a class="item" title="Sneaker" href="category.html">Tai nghe</a> <a class="item" title="Toys" href="category.html">Tivi</a> <a class="item" title="Rose" href="category.html">Máy tính</a> </div>
<!-- /.tag-list --> 
</div> 
</div>  
<div class="sidebar-widget newsletter outer-bottom-small">
<h3 class="section-title">Đăng ký nhận tin</h3>
<div class="sidebar-widget-body outer-top-xs">
<p>Đăng ký để nhận tin mới nhất!</p>
<form>
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail1">Địa chỉ email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Thông tin email">
  </div>
  <button class="btn btn-primary">Đăng ký</button>
</form>
</div> 
</div>
<div class="sidebar-widget outer-top-vs ">
    <div id="advertisement" class="advertisement owl-carousel owl-theme" style="opacity: 1; display: block;">
        <div class="owl-wrapper-outer">
            <div class="owl-wrapper" style="width: 1320px; left: 0px; display: block;">
                <div class="owl-item" style="width: 220px;">
                    <div class="item">
                        <div class="avatar">
                            <img src="https://flatlogic.github.io/light-blue-vue-admin/img/a5.84f014f0.jpg" alt="Image">
                        </div>
                        <div class="testimonials">
                            <em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat. <em>"</em>
                        </div>
                        <div class="clients_author">John Doe <span>Abc Company</span>
                        </div>
                        <!-- /.container-fluid -->
                    </div>
                </div>
                <div class="owl-item" style="width: 220px;">
                    <div class="item">
                        <div class="avatar">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRhp1nY6bRT1YJ1TJ1UgSG-3aOFBpgMMqyR23AHpeGWRaxlV1MErA0LTx0hz98KHXadJk&usqp=CAU" alt="Image">
                        </div>
                        <div class="testimonials">
                            <em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat. <em>"</em>
                        </div>
                        <div class="clients_author">Stephen Doe <span>Xperia Designs</span>
                        </div>
                    </div>
                </div>
                <div class="owl-item" style="width: 220px;">
                    <div class="item">
                        <div class="avatar">
                            <img src="assets/images/testimonials/member2.png" alt="Image">
                        </div>
                        <div class="testimonials">
                            <em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat. <em>"</em>
                        </div>
                        <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span>
                        </div>
                        <!-- /.container-fluid -->
                    </div>
                </div>
            </div>
        </div>
        <div class="owl-controls clickable">
            <div class="owl-pagination">
                <div class="owl-page active">
                    <span class=""></span>
                </div>
                <div class="owl-page">
                    <span class=""></span>
                </div>
                <div class="owl-page">
                    <span class=""></span>
                </div>
            </div>
            <div class="owl-buttons">
                <div class="owl-prev"></div>
                <div class="owl-next"></div>
            </div>
        </div>
    </div>
    <!-- /.owl-carousel -->
</div>