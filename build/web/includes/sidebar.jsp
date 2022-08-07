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
<div class="sidebar-widget outer-bottom-small">
<h3 class="section-title">Khuyến mãi đặc biệt</h3>
<div class="sidebar-widget-body outer-top-xs">
<div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs" style="opacity: 1; display: block;">
  <div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 1320px; left: 0px; display: block;"><div class="owl-item" style="width: 220px;"><div class="item">
    <div class="products special-product">
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p5.jpg" alt=""> </a> </div> 
              </div> 
            </div> 
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-5" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-5" style="display: none;"></button><div id="rateit-range-5" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-5" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div> 
              </div>
            </div> 
          </div> 
        </div> 

      </div>
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p9.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-6" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-6" style="display: none;"></button><div id="rateit-range-6" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-6" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p11.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-7" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-7" style="display: none;"></button><div id="rateit-range-7" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-7" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
    </div>
  </div></div><div class="owl-item" style="width: 220px;"><div class="item">
    <div class="products special-product">
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p15.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-8" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-8" style="display: none;"></button><div id="rateit-range-8" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-8" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p13.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-9" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-9" style="display: none;"></button><div id="rateit-range-9" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-9" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p12.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-10" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-10" style="display: none;"></button><div id="rateit-range-10" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-10" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
    </div>
  </div></div><div class="owl-item" style="width: 220px;"><div class="item">
    <div class="products special-product">
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p1.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-11" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-11" style="display: none;"></button><div id="rateit-range-11" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-11" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p3.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-12" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-12" style="display: none;"></button><div id="rateit-range-12" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-12" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 
              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
      <div class="product">
        <div class="product-micro">
          <div class="row product-micro-row">
            <div class="col col-xs-5">
              <div class="product-image">
                <div class="image"> <a href="#"> <img src="assets/images/products/p7.jpg" alt=""> </a> </div>
                <!-- /.image --> 

              </div>
              <!-- /.product-image --> 
            </div>
            <!-- /.col -->
            <div class="col col-xs-7">
              <div class="product-info">
                <h3 class="name"><a href="#">Floral Print Shirt</a></h3>
                <div class="rating rateit-small rateit"><button id="rateit-reset-13" data-role="none" class="rateit-reset" aria-label="reset rating" aria-controls="rateit-range-13" style="display: none;"></button><div id="rateit-range-13" class="rateit-range" tabindex="0" role="slider" aria-label="rating" aria-owns="rateit-reset-13" aria-valuemin="0" aria-valuemax="5" aria-valuenow="4" aria-readonly="true" style="width: 70px; height: 14px;"><div class="rateit-selected" style="height: 14px; width: 56px;"></div><div class="rateit-hover" style="height:14px"></div></div></div>
                <div class="product-price"> <span class="price"> $450.99 </span> </div>
                <!-- /.product-price --> 

              </div>
            </div>
            <!-- /.col --> 
          </div>
          <!-- /.product-micro-row --> 
        </div>
        <!-- /.product-micro --> 

      </div>
    </div>
  </div></div></div></div>


<div class="owl-controls clickable"><div class="owl-buttons"><div class="owl-prev"></div><div class="owl-next"></div></div></div></div>
</div>
<!-- /.sidebar-widget-body --> 
</div> 
<div class="sidebar-widget product-tag">
<h3 class="section-title">Product tags</h3>
<div class="sidebar-widget-body outer-top-xs">
<div class="tag-list"> <a class="item" title="Phone" href="category.html">Phone</a> <a class="item active" title="Vest" href="category.html">Vest</a> <a class="item" title="Smartphone" href="category.html">Smartphone</a> <a class="item" title="Furniture" href="category.html">Furniture</a> <a class="item" title="T-shirt" href="category.html">T-shirt</a> <a class="item" title="Sweatpants" href="category.html">Sweatpants</a> <a class="item" title="Sneaker" href="category.html">Sneaker</a> <a class="item" title="Toys" href="category.html">Toys</a> <a class="item" title="Rose" href="category.html">Rose</a> </div>
<!-- /.tag-list --> 
</div> 
</div>  
<div class="sidebar-widget newsletter outer-bottom-small">
<h3 class="section-title">Newsletters</h3>
<div class="sidebar-widget-body outer-top-xs">
<p>Sign Up for Our Newsletter!</p>
<form>
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Subscribe to our newsletter">
  </div>
  <button class="btn btn-primary">Subscribe</button>
</form>
</div> 
</div>
<div class="sidebar-widget outer-top-vs ">
<div id="advertisement" class="advertisement owl-carousel owl-theme" style="opacity: 1; display: block;">
<div class="owl-wrapper-outer"><div class="owl-wrapper" style="width: 1320px; left: 0px; display: block;"><div class="owl-item" style="width: 220px;"><div class="item">
  <div class="avatar"><img src="assets/images/testimonials/member1.png" alt="Image"></div>
  <div class="testimonials"><em>"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>"</em></div>
  <div class="clients_author">John Doe <span>Abc Company</span> </div>
  <!-- /.container-fluid --> 
</div></div><div class="owl-item" style="width: 220px;"><div class="item">
  <div class="avatar"><img src="assets/images/testimonials/member3.png" alt="Image"></div>
  <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>"</em></div>
  <div class="clients_author">Stephen Doe <span>Xperia Designs</span> </div>
</div></div><div class="owl-item" style="width: 220px;"><div class="item">
  <div class="avatar"><img src="assets/images/testimonials/member2.png" alt="Image"></div>
  <div class="testimonials"><em>"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>"</em></div>
  <div class="clients_author">Saraha Smith <span>Datsun &amp; Co</span> </div>
  <!-- /.container-fluid --> 
</div></div></div></div> 
<div class="owl-controls clickable"><div class="owl-pagination"><div class="owl-page active"><span class=""></span></div><div class="owl-page"><span class=""></span></div><div class="owl-page"><span class=""></span></div></div><div class="owl-buttons"><div class="owl-prev"></div><div class="owl-next"></div></div></div></div>
<!-- /.owl-carousel --> 
</div> 