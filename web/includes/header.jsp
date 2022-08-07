<%@page import="com.lucui.models.DanhMuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header-style-1">
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        <div class="cnt-account">
          <ul class="list-unstyled">
            <li class="myaccount">
              <a href="#">
                <span>Tài khoản của tôi</span>
              </a>
            </li> 
            <li class="header_cart hidden-xs">
              <a href="#">
                <span>Giỏ hàng</span>
              </a>
            </li>
            <li class="check">
              <a href="#">
                <span>Thanh toán</span>
              </a>
              </span>
            </li>
            <li class="login">
              <a href="#">
                <span>Đăng nhập</span>
              </a>
            </li>
          </ul>
        </div>
        <!-- /.cnt-account -->
        <div class="cnt-block">
          <ul class="list-unstyled list-inline">
            <li class="dropdown dropdown-small">
              <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                <span class="value">VND </span>
                <b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">VND</a>
                </li>
                <li>
                  <a href="#">VND</a>
                </li>
                <li>
                  <a href="#">VND</a>
                </li>
              </ul>
            </li>
            <li class="dropdown dropdown-small">
              <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                <span class="value">Việt Nam </span>
                <b class="caret"></b>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">Việt Nam</a>
                </li>
                <li>
                  <a href="#">Việt Nam</a>
                </li>
                <li>
                  <a href="#">Việt Nam</a>
                </li>
              </ul>
            </li>
          </ul>
          <!-- /.list-unstyled -->
        </div>
        <!-- /.cnt-cart -->
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner -->
    </div>
    <!-- /.container -->
  </div> 
  <div class="main-header">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
          <div class="logo">
              <a href="<%= request.getContextPath() %>">
              <img src="assets/images/logo.png" alt="logo">
            </a>
          </div>
        </div> 
        <div class="col-lg-7 col-md-6 col-sm-8 col-xs-12 top-search-holder">
            <div class="search-area">
            <form>
              <div class="control-group">
                <ul class="categories-filter animate-dropdown">
                  <li class="dropdown"> 
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Danh mục <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <jsp:useBean id="dm" class="com.luccui.dao.impl.DanhMucDAOImpl" /> 
                        <%
                            for(DanhMuc d : dm.all()) {
                                out.print("<li role='presentation'>");
                                    out.print("<a role='menuitem' tabindex='-1' href=''>" + d.getTenDanhMuc() + " </a>");
                                out.print("</li>");
                            }
                        %> 
                    </ul>
                  </li>
                </ul>
                <input class="search-field" placeholder="Nhập vào từ khóa cần tìm kiếm..." />
                <a class="search-button" href="#"></a>
              </div>
            </form>
          </div> 
        </div> 
        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-12 animate-dropdown top-cart-row">
           <div class="dropdown dropdown-cart">
            <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
              <div class="items-cart-inner">
                <div class="basket">
                  <div class="basket-item-count">
                    <span class="count">2</span>
                  </div>
                  <div class="total-price-basket">
                    <span class="lbl">Giỏ hàng</span>
                    <span class="value">$4580</span>
                    </span>
                  </div>
                </div>
              </div>
            </a>
            <ul class="dropdown-menu">
              <li>
                <div class="cart-item product-summary">
                  <div class="row">
                    <div class="col-xs-4">
                      <div class="image">
                        <a href="detail.html">
                          <img src="assets/images/products/p4.jpg" alt="">
                        </a>
                      </div>
                    </div>
                    <div class="col-xs-7">
                      <h3 class="name">
                        <a href="index8a95.html?page-detail">Simple Product</a>
                      </h3>
                      <div class="price">$600.00</div>
                    </div>
                    <div class="col-xs-1 action">
                      <a href="#">
                        <i class="fa fa-trash"></i>
                      </a>
                    </div>
                  </div>
                </div>
                <!-- /.cart-item -->
                <div class="clearfix"></div>
                <hr>
                <div class="clearfix cart-total">
                  <div class="pull-right">
                    <span class="text">Sub Total :</span>
                    <span class='price'>$600.00</span>
                  </div>
                  <div class="clearfix"></div>
                  <a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a>
                </div>
                <!-- /.cart-total-->
              </li>
            </ul>
            <!-- /.dropdown-menu-->
          </div>
          <!-- /.dropdown-cart -->
          <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
        </div>
        <!-- /.top-cart-row -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
  </div>
  <!-- /.main-header -->
  <!-- ============================================== NAVBAR ============================================== -->
  <div class="header-nav animate-dropdown">
    <div class="container">
      <div class="yamm navbar navbar-default" role="navigation">
        <div class="navbar-header">
          <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="nav-bg-class">
          <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
            <div class="nav-outer">
              <ul class="nav navbar-nav">
                <li class="active dropdown">
                  <a href="home.html">Home</a>
                </li>
                <li class="dropdown yamm mega-menu">
                  <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Clothing</a>
                  <ul class="dropdown-menu container">
                    <li>
                      <div class="yamm-content ">
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Men</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Dresses</a>
                              </li>
                              <li>
                                <a href="#">Shoes </a>
                              </li>
                              <li>
                                <a href="#">Jackets</a>
                              </li>
                              <li>
                                <a href="#">Sunglasses</a>
                              </li>
                              <li>
                                <a href="#">Sport Wear</a>
                              </li>
                              <li>
                                <a href="#">Blazers</a>
                              </li>
                              <li>
                                <a href="#">Shirts</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Women</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Handbags</a>
                              </li>
                              <li>
                                <a href="#">Jwellery</a>
                              </li>
                              <li>
                                <a href="#">Swimwear </a>
                              </li>
                              <li>
                                <a href="#">Tops</a>
                              </li>
                              <li>
                                <a href="#">Flats</a>
                              </li>
                              <li>
                                <a href="#">Shoes</a>
                              </li>
                              <li>
                                <a href="#">Winter Wear</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Boys</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Toys & Games</a>
                              </li>
                              <li>
                                <a href="#">Jeans</a>
                              </li>
                              <li>
                                <a href="#">Shirts</a>
                              </li>
                              <li>
                                <a href="#">Shoes</a>
                              </li>
                              <li>
                                <a href="#">School Bags</a>
                              </li>
                              <li>
                                <a href="#">Lunch Box</a>
                              </li>
                              <li>
                                <a href="#">Footwear</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Girls</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Sandals </a>
                              </li>
                              <li>
                                <a href="#">Shorts</a>
                              </li>
                              <li>
                                <a href="#">Dresses</a>
                              </li>
                              <li>
                                <a href="#">Jwellery</a>
                              </li>
                              <li>
                                <a href="#">Bags</a>
                              </li>
                              <li>
                                <a href="#">Night Dress</a>
                              </li>
                              <li>
                                <a href="#">Swim Wear</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
                            <img class="img-responsive" src="assets/images/banners/top-menu-banner.jpg" alt="">
                          </div>
                          <!-- /.yamm-content -->
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="dropdown mega-menu">
                  <a href="category.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Electronics <span class="menu-label hot-menu hidden-xs">hot</span>
                  </a>
                  <ul class="dropdown-menu container">
                    <li>
                      <div class="yamm-content">
                        <div class="row">
                          <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                            <h2 class="title">Laptops</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Gaming</a>
                              </li>
                              <li>
                                <a href="#">Laptop Skins</a>
                              </li>
                              <li>
                                <a href="#">Apple</a>
                              </li>
                              <li>
                                <a href="#">Dell</a>
                              </li>
                              <li>
                                <a href="#">Lenovo</a>
                              </li>
                              <li>
                                <a href="#">Microsoft</a>
                              </li>
                              <li>
                                <a href="#">Asus</a>
                              </li>
                              <li>
                                <a href="#">Adapters</a>
                              </li>
                              <li>
                                <a href="#">Batteries</a>
                              </li>
                              <li>
                                <a href="#">Cooling Pads</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                            <h2 class="title">Desktops</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Routers & Modems</a>
                              </li>
                              <li>
                                <a href="#">CPUs, Processors</a>
                              </li>
                              <li>
                                <a href="#">PC Gaming Store</a>
                              </li>
                              <li>
                                <a href="#">Graphics Cards</a>
                              </li>
                              <li>
                                <a href="#">Components</a>
                              </li>
                              <li>
                                <a href="#">Webcam</a>
                              </li>
                              <li>
                                <a href="#">Memory (RAM)</a>
                              </li>
                              <li>
                                <a href="#">Motherboards</a>
                              </li>
                              <li>
                                <a href="#">Keyboards</a>
                              </li>
                              <li>
                                <a href="#">Headphones</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                            <h2 class="title">Cameras</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Accessories</a>
                              </li>
                              <li>
                                <a href="#">Binoculars</a>
                              </li>
                              <li>
                                <a href="#">Telescopes</a>
                              </li>
                              <li>
                                <a href="#">Camcorders</a>
                              </li>
                              <li>
                                <a href="#">Digital</a>
                              </li>
                              <li>
                                <a href="#">Film Cameras</a>
                              </li>
                              <li>
                                <a href="#">Flashes</a>
                              </li>
                              <li>
                                <a href="#">Lenses</a>
                              </li>
                              <li>
                                <a href="#">Surveillance</a>
                              </li>
                              <li>
                                <a href="#">Tripods</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          <div class="col-xs-12 col-sm-12 col-md-2 col-menu">
                            <h2 class="title">Mobile Phones</h2>
                            <ul class="links">
                              <li>
                                <a href="#">Apple</a>
                              </li>
                              <li>
                                <a href="#">Samsung</a>
                              </li>
                              <li>
                                <a href="#">Lenovo</a>
                              </li>
                              <li>
                                <a href="#">Motorola</a>
                              </li>
                              <li>
                                <a href="#">LeEco</a>
                              </li>
                              <li>
                                <a href="#">Asus</a>
                              </li>
                              <li>
                                <a href="#">Acer</a>
                              </li>
                              <li>
                                <a href="#">Accessories</a>
                              </li>
                              <li>
                                <a href="#">Headphones</a>
                              </li>
                              <li>
                                <a href="#">Memory Cards</a>
                              </li>
                            </ul>
                          </div>
                          <div class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner">
                            <a href="#">
                              <img alt="" src="assets/images/banners/top-menu-banner1.jpg">
                            </a>
                          </div>
                        </div>
                        <!-- /.row -->
                      </div>
                      <!-- /.yamm-content -->
                    </li>
                  </ul>
                </li>
                <li class="dropdown hidden-sm">
                  <a href="category.html">Health & Beauty <span class="menu-label new-menu hidden-xs">new</span>
                  </a>
                </li>
                <li class="dropdown hidden-sm">
                  <a href="category.html">Watches</a>
                </li>
                <li class="dropdown">
                  <a href="contact.html">Jewellery</a>
                </li>
                <li class="dropdown">
                  <a href="contact.html">Shoes</a>
                </li>
                <li class="dropdown">
                  <a href="contact.html">Kids & Girls</a>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Pages</a>
                  <ul class="dropdown-menu pages">
                    <li>
                      <div class="yamm-content">
                        <div class="row">
                          <div class="col-xs-12 col-menu">
                            <ul class="links">
                              <li>
                                <a href="home.html">Home</a>
                              </li>
                              <li>
                                <a href="category.html">Category</a>
                              </li>
                              <li>
                                <a href="detail.html">Detail</a>
                              </li>
                              <li>
                                <a href="shopping-cart.html">Shopping Cart Summary</a>
                              </li>
                              <li>
                                <a href="checkout.html">Checkout</a>
                              </li>
                              <li>
                                <a href="blog.html">Blog</a>
                              </li>
                              <li>
                                <a href="blog-details.html">Blog Detail</a>
                              </li>
                              <li>
                                <a href="contact.html">Contact</a>
                              </li>
                              <li>
                                <a href="sign-in.html">Sign In</a>
                              </li>
                              <li>
                                <a href="my-wishlist.html">Wishlist</a>
                              </li>
                              <li>
                                <a href="terms-conditions.html">Terms and Condition</a>
                              </li>
                              <li>
                                <a href="track-orders.html">Track Orders</a>
                              </li>
                              <li>
                                <a href="product-comparison.html">Product-Comparison</a>
                              </li>
                              <li>
                                <a href="faq.html">FAQ</a>
                              </li>
                              <li>
                                <a href="404.html">404</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="dropdown  navbar-right special-menu">
                  <a href="#">Get 30% off on selected items</a>
                </li>
              </ul>
              <!-- /.navbar-nav -->
              <div class="clearfix"></div>
            </div>
            <!-- /.nav-outer -->
          </div>
          <!-- /.navbar-collapse -->
        </div>
        <!-- /.nav-bg-class -->
      </div>
      <!-- /.navbar-default -->
    </div>
    <!-- /.container-class -->
  </div>
  <!-- /.header-nav -->
  <!-- ============================================== NAVBAR : END ============================================== -->
</header>