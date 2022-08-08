<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="com.lucui.models.SanPham"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<jsp:useBean id="sanphams" class="com.luccui.dao.impl.SanPhamDAOImpl" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="./assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./assets/css/main.css"/>
        <link rel="stylesheet" href="./assets/css/blue.css"/>
        <link rel="stylesheet" href="./assets/css/owl.carousel.css"/>
        <link rel="stylesheet" href="./assets/css/owl.transitions.css"/>
        <link rel="stylesheet" href="./assets/css/animate.min.css"/>        
        <link rel="stylesheet" href="./assets/css/rateit.css"/>  
        <link rel="stylesheet" href="./assets/css/bootstrap-select.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.css" integrity="sha512-ITS8GbPjCRA7c/PBl6Kqb9XjvQbKMBXpzEmpi7BgRwf6mUCySmHbF9opWfVUQvbdiYouDYxhxttWS+wyq4l+Ug==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
        <link href="https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    </head>
    <body class="cnt-home"> 
        <jsp:include page="includes/header.jsp" ></jsp:include>
        <div class="body-content outer-top-vs" id="top-banner-and-menu">
        <div class="container">
        <div class="row">  
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">  
                <jsp:include page="includes/sidebar.jsp" ></jsp:include> 
            </div> 
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">  
                <jsp:include page="partials/carousel.jsp" ></jsp:include>  
                <div id="product-tabs-slider" class="scroll-tabs outer-top-vs">
                    <div class="more-info-tab clearfix ">
                      <h3 class="new-product-title pull-left">New Products</h3>
                      <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1"></ul> 
                    </div> 
                    <div class="tab-content outer-top-xs">
                      <div class="tab-pane in active" id="all">
                        <div class="product-slider">
                          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme"> 
                            <% 
                                Locale loc =  new Locale("vn","VN");
                                NumberFormat nf = NumberFormat.getCurrencyInstance(loc);
                            %>
                            <%  
                                for(SanPham sp : sanphams.all()) {
                                    out.print("<div class='item item-carousel'>");
                                        out.print("<div class='products'>");
                                        out.print("<div class='product'>");
                                            out.print("<div class='product-image'>");
                                                out.print("<div class='image'>");
                                                    out.print("<a href='./chi-tiet?id=" + sp.getId() + "'>");
                                                        out.print("<img src='" + sp.getHinhAnh() +" ' alt='>");
                                                        out.print("<img src='assets/images/products/p3_hover.jpg' alt=' class='hover-image'>");
                                                    out.print("</a>");
                                                out.print("</div>");
                                                out.print("<div class='tag sale'>");
                                                    out.print("<span>sale</span>");
                                                out.print("</div>");
                                            out.print("</div>");
                                            out.print("<div class='product-info text-left'>");
                                                out.print("<h3 class='name text-truncate'>");
                                                    out.print("<a href='./chi-tiet?id=" + sp.getId() + "' class='' >" + sp.getTenSanPham() +  "</a>");
                                                out.print("</h3>");
                                                out.print("<div class='rating rateit-small'></div>");
                                                out.print("<div class='description'></div>");
                                                out.print("<div class='product-price'>");
                                                    out.print("<span class='price'> " + nf.format(sp.getGia()) + " </span>");
                                                    out.print("<span class='price-before-discount'>" + nf.format(sp.getGiaKM()) + "</span>");
                                                out.print("</div>"); 
                                            out.print("</div>"); 
                                            out.print("<div class='cart clearfix animate-effect'>");
                                                out.print("<div class='action'>");
                                                    out.print("<ul class='list-unstyled'>");
                                                        out.print("<li class='add-cart-button btn-group'>");
                                                            out.print("<button class='btn btn-primary icon' data-toggle='dropdown' type='button'>");
                                                                out.print("<i class='fa fa-shopping-cart'></i>");
                                                            out.print("</button>");
                                                            out.print("<button class='btn btn-primary cart-btn' type='button'>Add to cart</button>");
                                                        out.print("</li>");
                                                        out.print("<li class='lnk wishlist'>");
                                                            out.print("<a class='add-to-cart' href='detail.html' title='Wishlist'>");
                                                                out.print("<i class='icon fa fa-heart'></i>");
                                                            out.print("</a>");
                                                        out.print("</li>");
                                                        out.print("<li class='lnk'>");
                                                            out.print("<a class='add-to-cart' href='detail.html' title='Compare'>");
                                                                out.print("<i class='fa fa-signal' aria-hidden='true'></i>");
                                                            out.print("</a>");
                                                        out.print("</li>");
                                                    out.print("</ul>");
                                                out.print("</div>");
                                            out.print("</div>");
                                        out.print("</div>");
                                    out.print("</div>");
                                out.print("</div>");
                                } 
                            %>   
                          </div> 
                        </div> 
                      </div> 

                      <div class="tab-pane" id="smartphone">
                        <div class="product-slider">
                          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p7.jpg" alt=""> 
                                        <img src="assets/images/products/p7_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div> 

                                    <div class="tag sale"><span>sale</span></div>
                                  </div> 
                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> 
                                        <span class="price"> $450.99</span> 
                                        <span class="price-before-discount">$ 800</span>
                                    </div> 
                                  </div> 
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> 
                                            <a class="add-to-cart" href="#" title="Wishlist">
                                                <i class="icon fa fa-heart"></i>
                                            </a> 
                                        </li>
                                        <li class="lnk">
                                            <a class="add-to-cart" href="#" title="Compare"> 
                                                <i class="fa fa-signal" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                      </ul>
                                    </div> 
                                  </div> 
                                </div>  
                              </div> 
                            </div> 

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                        <a href="#">
                                           <img src="assets/images/products/p8.jpg" alt=""> 
                                            <img src="assets/images/products/p8_hover.jpg" alt="" class="hover-image">
                                        </a> 
                                    </div>  
                                    <div class="tag new"><span>new</span></div>
                                  </div> 
                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="#">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> 
                                        <span class="price"> $450.99 </span>
                                        <span class="price-before-discount">$ 800</span> 
                                    </div> 
                                  </div> 
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div> 
                                  </div> 
                                </div>  
                              </div> 
                            </div> 

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p9.jpg" alt=""> 
                                        <img src="assets/images/products/p9_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag sale"><span>sale</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p10.jpg" alt=""> 
                                        <img src="assets/images/products/p10_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag new"><span>new</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p11.jpg" alt=""> 
                                        <img src="assets/images/products/p11_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag hot"><span>hot</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p12.jpg" alt=""> 
                                        <img src="assets/images/products/p12_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag hot"><span>hot</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item --> 
                          </div>
                          <!-- /.home-owl-carousel --> 
                        </div>
                        <!-- /.product-slider --> 
                      </div>
                      <!-- /.tab-pane -->

                      <div class="tab-pane" id="laptop">
                        <div class="product-slider">
                          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p15.jpg" alt=""> 
                                        <img src="assets/images/products/p15_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag new"><span>new</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p2.jpg" alt=""> 
                                        <img src="assets/images/products/p2_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag new"><span>new</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p8.jpg" alt=""> 
                                        <img src="assets/images/products/p8_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag sale"><span>sale</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p14.jpg" alt=""> 
                                        <img src="assets/images/products/p14_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p12.jpg" alt=""> 
                                        <img src="assets/images/products/p12_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag hot"><span>hot</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p9.jpg" alt=""> 
                                        <img src="assets/images/products/p9_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag sale"><span>sale</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Apple Iphone 5s 32GB</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item --> 
                          </div>
                          <!-- /.home-owl-carousel --> 
                        </div>
                        <!-- /.product-slider --> 
                      </div>
                      <!-- /.tab-pane -->

                      <div class="tab-pane" id="apple">
                        <div class="product-slider">
                          <div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p13.jpg" alt=""> 
                                        <img src="assets/images/products/p13_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag sale"><span>sale</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p11.jpg" alt=""> 
                                        <img src="assets/images/products/p11_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag hot"><span>hot</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p4.jpg" alt=""> 
                                        <img src="assets/images/products/p4_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag sale"><span>sale</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p1.jpg" alt=""> 
                                        <img src="assets/images/products/p1_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag new"><span>new</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p10.jpg" alt=""> 
                                        <img src="assets/images/products/p10_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag new"><span>new</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item -->

                            <div class="item item-carousel">
                              <div class="products">
                                <div class="product">
                                  <div class="product-image">
                                    <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p6.jpg" alt=""> 
                                        <img src="assets/images/products/p6_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                                    <!-- /.image -->

                                    <div class="tag hot"><span>hot</span></div>
                                  </div>
                                  <!-- /.product-image -->

                                  <div class="product-info text-left">
                                    <h3 class="name"><a href="detail.html">Samsung Galaxy S4</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="description"></div>
                                    <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                                    <!-- /.product-price --> 

                                  </div>
                                  <!-- /.product-info -->
                                  <div class="cart clearfix animate-effect">
                                    <div class="action">
                                      <ul class="list-unstyled">
                                        <li class="add-cart-button btn-group">
                                          <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                          <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                        </li>
                                        <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                        <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                      </ul>
                                    </div>
                                    <!-- /.action --> 
                                  </div>
                                  <!-- /.cart --> 
                                </div>
                                <!-- /.product --> 

                              </div>
                              <!-- /.products --> 
                            </div>
                            <!-- /.item --> 
                          </div>
                          <!-- /.home-owl-carousel --> 
                        </div>
                        <!-- /.product-slider --> 
                      </div>
                      <!-- /.tab-pane --> 

                    </div> 
                  </div>
                  <div class="wide-banners outer-bottom-xs">
                    <div class="row">
                      <div class="col-md-4 col-sm-4">
                        <div class="wide-banner cnt-strip">
                          <div class="image"> <img class="img-responsive" src="assets/images/banners/home-banner1.jpg" alt=""> </div>
                        </div> 
                      </div>

                      <div class="col-md-4 col-sm-4">
                        <div class="wide-banner cnt-strip">
                          <div class="image"> <img class="img-responsive" src="assets/images/banners/home-banner3.jpg" alt=""> </div>
                        </div> 
                      </div>
 
                      <div class="col-md-4 col-sm-4">
                        <div class="wide-banner cnt-strip">
                          <div class="image"> <img class="img-responsive" src="assets/images/banners/home-banner2.jpg" alt=""> </div>
                        </div> 
                      </div> 
                    </div> 
                  </div>  
                  <div class="wide-banners outer-bottom-xs">
                    <div class="row">
                      <div class="col-md-8">
                        <div class="wide-banner1 cnt-strip">
                          <div class="image"> <img class="img-responsive" src="assets/images/banners/home-banner.jpg" alt=""> </div>
                          <div class="strip strip-text">
                            <div class="strip-inner">
                              <h2 class="text-right">Amazing Sunglasses<br>
                                <span class="shopping-needs">Get 40% off on selected items</span></h2>
                            </div>
                          </div>
                          <div class="new-label">
                            <div class="text">NEW</div>
                          </div> 
                        </div> 
                      </div> 
                      <div class="col-md-4">
                        <div class="wide-banner cnt-strip">
                          <div class="image"> 
                              <img class="img-responsive" src="assets/images/banners/home-banner4.jpg" alt=""> 
                          </div> 
                        </div> 
                      </div> 
                    </div> 
                  </div>  
 
                  <section class="section latest-blog outer-bottom-vs">
                    <h3 class="section-title">Latest form Blog</h3>
                    <div class="blog-slider-container outer-top-xs">
                      <div class="owl-carousel blog-slider custom-carousel">
                        <div class="item">
                          <div class="blog-post">
                            <div class="blog-post-image">
                              <div class="image"> <a href="blog.html"><img src="assets/images/blog-post/blog_big_01.jpg" alt=""></a> </div>
                            </div>
                            <!-- /.blog-post-image -->

                            <div class="blog-post-info text-left">
                              <h3 class="name"><a href="#">Voluptatem accusantium doloremque laudantium</a></h3>
                              <span class="info">By Jone Doe &nbsp;|&nbsp; 21 March 2016 </span>
                              <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
                             </div>
                            <!-- /.blog-post-info --> 

                          </div>
                          <!-- /.blog-post --> 
                        </div>
                        <!-- /.item -->

                        <div class="item">
                          <div class="blog-post">
                            <div class="blog-post-image">
                              <div class="image"> <a href="blog.html"><img src="assets/images/blog-post/blog_big_02.jpg" alt=""></a> </div>
                            </div>
                            <!-- /.blog-post-image -->

                            <div class="blog-post-info text-left">
                              <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                              <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                              <p class="text">Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
                             </div>
                            <!-- /.blog-post-info --> 

                          </div>
                          <!-- /.blog-post --> 
                        </div>
                        <!-- /.item --> 

                        <!-- /.item -->

                        <div class="item">
                          <div class="blog-post">
                            <div class="blog-post-image">
                              <div class="image"> <a href="blog.html"><img src="assets/images/blog-post/blog_big_03.jpg" alt=""></a> </div>
                            </div>
                            <!-- /.blog-post-image -->

                            <div class="blog-post-info text-left">
                              <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                              <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                              <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                              </div>
                            <!-- /.blog-post-info --> 

                          </div>
                          <!-- /.blog-post --> 
                        </div>
                        <!-- /.item -->

                        <div class="item">
                          <div class="blog-post">
                            <div class="blog-post-image">
                              <div class="image"> <a href="blog.html"><img src="assets/images/blog-post/blog_big_01.jpg" alt=""></a> </div>
                            </div>
                            <!-- /.blog-post-image -->

                            <div class="blog-post-info text-left">
                              <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                              <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                              <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                              </div>
                            <!-- /.blog-post-info --> 

                          </div>
                          <!-- /.blog-post --> 
                        </div>
                        <!-- /.item -->

                        <div class="item">
                          <div class="blog-post">
                            <div class="blog-post-image">
                              <div class="image"> <a href="blog.html"><img src="assets/images/blog-post/blog_big_02.jpg" alt=""></a> </div>
                            </div>
                            <!-- /.blog-post-image -->

                            <div class="blog-post-info text-left">
                              <h3 class="name"><a href="#">Dolorem eum fugiat quo voluptas nulla pariatur</a></h3>
                              <span class="info">By Saraha Smith &nbsp;|&nbsp; 21 March 2016 </span>
                              <p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
                            </div>
                            <!-- /.blog-post-info --> 

                          </div>
                          <!-- /.blog-post --> 
                        </div>
                        <!-- /.item --> 

                      </div>
                      <!-- /.owl-carousel --> 
                    </div>
                    <!-- /.blog-slider-container --> 
                  </section>
                  <!-- /.section --> 
                  <!-- ============================================== BLOG SLIDER : END ============================================== --> 

                  <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                  <section class="section new-arriavls">
                    <h3 class="section-title">Featured Products</h3>
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p10.jpg" alt=""> 
                                        <img src="assets/images/products/p10_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                              <!-- /.image -->

                              <div class="tag new"><span>new</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price --> 

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                        </div>
                        <!-- /.products --> 
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p2.jpg" alt=""> 
                                        <img src="assets/images/products/p2_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                              <!-- /.image -->

                              <div class="tag new"><span>new</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price --> 

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                        </div>
                        <!-- /.products --> 
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p3.jpg" alt=""> 
                                        <img src="assets/images/products/p3_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                              <!-- /.image -->

                              <div class="tag hot"><span>hot</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price --> 

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                        </div>
                        <!-- /.products --> 
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p1.jpg" alt=""> 
                                        <img src="assets/images/products/p1_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                              <!-- /.image -->

                              <div class="tag hot"><span>hot</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price --> 

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                        </div>
                        <!-- /.products --> 
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p7.jpg" alt=""> 
                                        <img src="assets/images/products/p7_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                              <!-- /.image -->

                              <div class="tag sale"><span>sale</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price --> 

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                        </div>
                        <!-- /.products --> 
                      </div>
                      <!-- /.item -->

                      <div class="item item-carousel">
                        <div class="products">
                          <div class="product">
                            <div class="product-image">
                              <div class="image"> 
                                    <a href="detail.html">
                                       <img src="assets/images/products/p9.jpg" alt=""> 
                                        <img src="assets/images/products/p9_hover.jpg" alt="" class="hover-image">
                                    </a>

                                    </div>
                              <!-- /.image -->

                              <div class="tag sale"><span>sale</span></div>
                            </div>
                            <!-- /.product-image -->

                            <div class="product-info text-left">
                              <h3 class="name"><a href="detail.html">Floral Print Buttoned</a></h3>
                              <div class="rating rateit-small"></div>
                              <div class="description"></div>
                              <div class="product-price"> <span class="price"> $450.99 </span> <span class="price-before-discount">$ 800</span> </div>
                              <!-- /.product-price --> 

                            </div>
                            <!-- /.product-info -->
                            <div class="cart clearfix animate-effect">
                              <div class="action">
                                <ul class="list-unstyled">
                                  <li class="add-cart-button btn-group">
                                    <button class="btn btn-primary icon" data-toggle="dropdown" type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                    <button class="btn btn-primary cart-btn" type="button">Add to cart</button>
                                  </li>
                                  <li class="lnk wishlist"> <a class="add-to-cart" href="detail.html" title="Wishlist"> <i class="icon fa fa-heart"></i> </a> </li>
                                  <li class="lnk"> <a class="add-to-cart" href="detail.html" title="Compare"> <i class="fa fa-signal" aria-hidden="true"></i> </a> </li>
                                </ul>
                              </div>
                              <!-- /.action --> 
                            </div>
                            <!-- /.cart --> 
                          </div>
                          <!-- /.product --> 

                        </div>
                        <!-- /.products --> 
                      </div> 
                    </div> 
                  </section> 
                </div> 
              </div>   
            </div> 
          </div> 
        <div class="body-content outer-top-vs">   
        <script src="./assets/js/jquery-1.11.1.min.js"></script> 
        <script src="./assets/js/bootstrap.min.js"></script> 
        <script src="./assets/js/bootstrap-hover-dropdown.min.js"></script> 
        <script src="./assets/js/owl.carousel.min.js"></script> 
        <script src="./assets/js/echo.min.js"></script> 
        <script src="./assets/js/jquery.easing-1.3.min.js"></script> 
        <script src="./assets/js/bootstrap-slider.min.js"></script> 
        <script src="./assets/js/jquery.rateit.min.js"></script> 
        <script type="text/javascript" src="./assets/js/lightbox.min.js"></script> 
        <script src="./assets/js/bootstrap-select.min.js"></script> 
        <script src="./assets/js/wow.min.js"></script> 
        <script src="./assets/js/scripts.js"></script>
    </body>
</html>
