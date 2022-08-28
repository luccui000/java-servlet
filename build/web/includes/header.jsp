<%@page import="com.luccui.dao.impl.SanPhamDAOImpl"%>
<%@page import="com.lucui.models.SanPham"%>
<%@page import="com.luccui.dao.impl.DanhMucDAOImpl"%>
<%@page import="com.luccui.dao.interfaces.IDanhMucDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%> 
<%@page import="com.luccui.entities.Item"%>
<%@page import="java.util.Map"%>
<%@page import="com.luccui.utils.CurrencyFormat"%>
<%@page import="com.lucui.models.GioHang"%>
<%@page import="com.luccui.constants.Constant"%>
<%@page import="com.lucui.models.DanhMuc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="header-style-1"> 
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
              <a href="./gio-hang">
                <span>Giỏ hàng</span>
              </a>
            </li>
            <li class="check">
              <a href="./thanh-toan">
                <span>Thanh toán</span>
              </a>
              </span>
            </li> 
            <li class="login">
                <%   
                    if(session.getAttribute(Constant.SESSION_ID) != null) {
                        out.print("<a href='./tai-khoan'>");
                        out.print("<span>" + session.getAttribute(Constant.SESSION_HO_TEN) + "</span>");
                        out.print("</a>");
                    } else {
                        out.print("<a href='./dang-nhap'>");
                        out.print("<span>Đăng nhập</span>"); 
                        out.print("</a>");
                    }
                %> 
            </li>
          </ul>
        </div> 
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
              <form method="GET" action='./tim-kiem'>
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
                      <% GioHang giohang = (GioHang)session.getAttribute("GIO_HANG"); %>
                      <span class="count"><%= giohang != null ? giohang.getItems().size() : 0 %></span>
                  </div>
                  <div class="total-price-basket">
                    <span class="lbl">Giỏ hàng</span>
                    <span class="value"><%= CurrencyFormat.VND(giohang != null ? giohang.getTotal() : 0).substring(4) %> đ</span>
                    </span>
                  </div>
                </div>
              </div>
            </a>
            <ul class="dropdown-menu">
              <li> 
                <%
                    if(giohang != null ) {
                        for(Map.Entry item : giohang.getItems().entrySet()) {
                            Item it = (Item)item.getValue(); 
                            out.print("<div class='cart-item product-summary' style='margin-bottom: 20px;'>");
                                out.print("<div class='row'>");
                                  out.print("<div class='col-xs-4'>");
                                    out.print("<div class='image'>");
                                      out.print("<a href='./chi-tiet?id='" + it.getSanPham().getId() + "'>");
                                        out.print("<img src='" + it.getSanPham().getHinhAnh() + "' alt=''>");
                                      out.print("</a>");
                                    out.print("</div>");
                                  out.print("</div>");
                                  out.print("<div class='col-xs-7'>");
                                    out.print("<h3 class='name'>");
                                      out.print("<a href='./chi-tiet?id=" + it.getSanPham().getId() + "'>" + it.getSanPham().getTenSanPham() + "</a>");
                                    out.print("</h3>");
                                    out.print("<div class='price'>" + CurrencyFormat.VND(+ it.getSanPham().getGiaKM()).substring(4) + " đ</div>");
                                  out.print("</div>");
                                  out.print("<div class='col-xs-1 action'>");
                                    out.print("<a href='#'>");
                                      out.print("<i class='fa fa-trash'></i>");
                                    out.print("</a>");
                                  out.print("</div>");
                                out.print("</div>");
                             out.print("</div>");
                        } 
                     } else {
                        out.print("Chưa có sản phẩm nào.");
                    }
                  %> 
                <div class="clearfix"></div> 
                <hr>
                <div class="clearfix cart-total">
                  <div class="pull-right">
                    <span class="text">Tạm tính :</span>
                    <span class='price'><%= CurrencyFormat.VND(giohang != null ? giohang.getTotal() : 0).substring(4) %> đ</span>
                  </div>
                  <div class="clearfix"></div>
                  <a href="./gio-hang" class="btn btn-upper btn-primary btn-block m-t-20">Giỏ hàng</a>
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
                  <a href="./">Home</a>
                </li> 
                <li class="dropdown hidden-sm">
                  <a href="./san-pham">Sản phẩm <span class="menu-label new-menu hidden-xs">mới</span>
                  </a>
                </li> 
                <li class="dropdown hidden-sm">
                  <a href="./bai-viet">Bài viết <span class="menu-label new-menu hidden-xs">mới</span>
                  </a>
                </li> 
                <li class="dropdown hidden-sm">
                  <a href="./lien-he">Liên hệ
                  </a>
                </li> 
                <li class="dropdown  navbar-right special-menu">
                  <a href="#">Giảm 2% cho lần mua sản phẩm đầu tiên</a>
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