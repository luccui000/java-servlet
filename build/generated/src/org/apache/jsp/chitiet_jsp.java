package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.lucui.models.SanPham;
import java.text.NumberFormat;
import java.util.Locale;
import com.luccui.utils.CurrencyFormat;

public final class chitiet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_out_value_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Trang chủ</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/bootstrap.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/main.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/blue.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/owl.carousel.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/owl.transitions.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/animate.min.css\"/>        \n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/rateit.css\"/>  \n");
      out.write("        <link rel=\"stylesheet\" href=\"./assets/css/bootstrap-select.min.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.2/css/font-awesome.css\" integrity=\"sha512-ITS8GbPjCRA7c/PBl6Kqb9XjvQbKMBXpzEmpi7BgRwf6mUCySmHbF9opWfVUQvbdiYouDYxhxttWS+wyq4l+Ug==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" /> \n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Barlow:200,300,300i,400,400i,500,500i,600,700,800\" rel=\"stylesheet\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <style>\n");
      out.write("            .price-container .price {\n");
      out.write("                font-size: 30px;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("            .quantity-container {\n");
      out.write("                display: flex;\n");
      out.write("                flex-direction: row;\n");
      out.write("                align-items: center;\n");
      out.write("            }\n");
      out.write("            .quantity-container .input-qty {\n");
      out.write("                width: 100px;\n");
      out.write("                margin-right: 20px;\n");
      out.write("                padding: 18px 10px;\n");
      out.write("            }\n");
      out.write("            .quantity-container .input-qty:focus {\n");
      out.write("                box-shadow: none;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"cnt-home\"> \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"body-content outer-top-vs\" id=\"top-banner-and-menu\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">  \n");
      out.write("                <div class=\"col-xs-12 col-sm-12 col-md-3 sidebar\">  \n");
      out.write("                    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/sidebar.jsp", out, false);
      out.write(" \n");
      out.write("                </div> \n");
      out.write("                <div class=\"col-xs-12 col-sm-12 col-md-9 homebanner-holder\">\n");
      out.write("                    <div class=\"detail-block\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-xs-12 col-sm-12 col-md-4 col-lg-4 gallery-holder\">\n");
      out.write("                                <div class=\"product-item-holder size-big single-product-gallery small-gallery\">\n");
      out.write("                                    <div id=\"owl-single-product\" class=\"owl-carousel owl-theme\" style=\"opacity: 1; display: block;\">\n");
      out.write("                                        <div class=\"owl-wrapper-outer\">\n");
      out.write("                                            <div class=\"owl-wrapper\" style=\"width: 6084px; left: 0px; display: block; transform: translate3d(0px, 0px, 0px); transition: all 200ms ease 0s;\">\n");
      out.write("                                                <div class=\"owl-item\" style=\"width: 338px;\">\n");
      out.write("                                                    <div class=\"single-product-gallery-item\" id=\"slide1\">\n");
      out.write("                                                        <a data-lightbox=\"image-1\" data-title=\"Gallery\" href=\"assets/images/products/p1.jpg\">\n");
      out.write("                                                            <img class=\"img-responsive\" alt=\"\" src='");
      if (_jspx_meth_c_out_0(_jspx_page_context))
        return;
      out.write("' >\n");
      out.write("                                                        </a>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div> \n");
      out.write("                                            </div>\n");
      out.write("                                        </div>  \n");
      out.write("                                    </div>    \n");
      out.write("                                </div> \n");
      out.write("                            </div> \n");
      out.write("                            <div class=\"col-sm-12 col-md-8 col-lg-8 product-info-block\">\n");
      out.write("                                <div class=\"product-info\">\n");
      out.write("                                    <h1 class=\"name\">");
      if (_jspx_meth_c_out_1(_jspx_page_context))
        return;
      out.write("</h1>\n");
      out.write("                                      \n");
      out.write("                                    <div class=\"stock-container info-container m-t-10\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-lg-12\">\n");
      out.write("                                                <div class=\"pull-left\">\n");
      out.write("                                                    <div class=\"stock-box\">\n");
      out.write("                                                        <span class=\"\">Trạng thái: </span>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"pull-left\">\n");
      out.write("                                                    <div class=\"stock-box\">\n");
      out.write("                                                        <span class=\"value\">Còn hàng</span>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> \n");
      out.write("                                    </div>\n");
      out.write("                                    <!-- /.stock-container -->\n");
      out.write("                                    <div class=\"description-container m-t-20\">\n");
      out.write("                                        <p>");
      if (_jspx_meth_c_out_2(_jspx_page_context))
        return;
      out.write("</p> \n");
      out.write("                                    </div>\n");
      out.write("                                    <hr />\n");
      out.write("                                    <div class=\"price-container info-container m-t-30\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-sm-6 col-xs-6\">\n");
      out.write("                                                <div class=\"price-box\">\n");
      out.write("                                                    <span class=\"price\">\n");
      out.write("                                                        ");
 out.print(CurrencyFormat.VND(((SanPham)request.getAttribute("sanpham")).getGiaKM()).substring(4)); 
      out.write("đ\n");
      out.write("                                                    </span>\n");
      out.write("                                                    <span class=\"price-strike\">\n");
      out.write("                                                        <del>\n");
      out.write("                                                            ");
 out.print(CurrencyFormat.VND(((SanPham)request.getAttribute("sanpham")).getGia()).substring(4)); 
      out.write("đ\n");
      out.write("                                                        </del>\n");
      out.write("                                                    </span>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div> \n");
      out.write("                                        </div> \n");
      out.write("                                    </div> \n");
      out.write("                                    <hr />\n");
      out.write("                                    <form action=\"/chi-tiet\" method=\"POST\">\n");
      out.write("                                        <div class=\"quantity-container\">\n");
      out.write("                                            <div class=\"qty-count\">\n");
      out.write("                                                <input class=\"form-control input-qty\" type=\"number\" value=\"1\" min=\"0\" />\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"add-btn\">\n");
      out.write("                                                <input name=\"id\" value='");
 out.print((request.getParameter("id") != null) ? request.getParameter("id") : "");  
      out.write("' type=\"hidden\" />\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-primary\">\n");
      out.write("                                                    <i class=\"fa fa-shopping-cart inner-right-vs\"></i> THÊM VÀO GIỎ HÀNG \n");
      out.write("                                                </button>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form> \n");
      out.write("                                </div> \n");
      out.write("                            </div> \n");
      out.write("                        </div> \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row mt-2\" style=\"margin-top: 20px;\">\n");
      out.write("                        <ul class=\"nav nav-tabs\">\n");
      out.write("                            <li class=\"active\">\n");
      out.write("                                <a data-toggle=\"tab\" href=\"#home\">Thông tin sản phẩm</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a data-toggle=\"tab\" href=\"#menu1\">Mô tả chi tiết</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a data-toggle=\"tab\" href=\"#menu2\">Chính sách và điều khoản</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <div class=\"tab-content\" style=\"font-size: 15px\">\n");
      out.write("                            <div id=\"home\" class=\"tab-pane fade in active\" >\n");
      out.write("                                <h3>Sản phẩm: ");
      if (_jspx_meth_c_out_3(_jspx_page_context))
        return;
      out.write("</h3>\n");
      out.write("                                <p>");
      if (_jspx_meth_c_out_4(_jspx_page_context))
        return;
      out.write("</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"menu1\" class=\"tab-pane card fade\">\n");
      out.write("                                <h3>Chi tiết sản phẩm</h3>\n");
      out.write("                                <p>");
      if (_jspx_meth_c_out_5(_jspx_page_context))
        return;
      out.write("</p>\n");
      out.write("                            </div>\n");
      out.write("                            <div id=\"menu2\" class=\"tab-pane card fade\">\n");
      out.write("                                <h3>Chính sách</h3>\n");
      out.write("                                <p>Some content in menu 2.</p>\n");
      out.write("                                <h3>Điều khoản</h3>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"row\" style=\"margin-top: 20px;\">\n");
      out.write("                        <div id=\"product-tabs-slider\" class=\"scroll-tabs outer-top-vs\">\n");
      out.write("                            <div class=\"more-info-tab clearfix \">\n");
      out.write("                                <h3 class=\"new-product-title pull-left\">Sản phẩm liên quan</h3> \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"tab-content outer-top-xs\">\n");
      out.write("                                <div class=\"tab-pane in active\" id=\"all\">\n");
      out.write("                                    <div class=\"product-slider\">\n");
      out.write("                                        <div class=\"owl-carousel home-owl-carousel custom-carousel owl-theme\"> \n");
      out.write("                                            ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("  \n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div> \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <script src=\"./assets/js/jquery-1.11.1.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/bootstrap.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/bootstrap-hover-dropdown.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/owl.carousel.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/echo.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/jquery.easing-1.3.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/bootstrap-slider.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/jquery.rateit.min.js\"></script> \n");
      out.write("        <script type=\"text/javascript\" src=\"./assets/js/lightbox.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/bootstrap-select.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/wow.min.js\"></script> \n");
      out.write("        <script src=\"./assets/js/scripts.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_out_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_0.setPageContext(_jspx_page_context);
    _jspx_th_c_out_0.setParent(null);
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanpham.getHinhAnh()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
    return false;
  }

  private boolean _jspx_meth_c_out_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_1 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_1.setPageContext(_jspx_page_context);
    _jspx_th_c_out_1.setParent(null);
    _jspx_th_c_out_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanpham.getTenSanPham()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_1 = _jspx_th_c_out_1.doStartTag();
    if (_jspx_th_c_out_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
    return false;
  }

  private boolean _jspx_meth_c_out_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_2 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_2.setPageContext(_jspx_page_context);
    _jspx_th_c_out_2.setParent(null);
    _jspx_th_c_out_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanpham.getMoTa()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_2 = _jspx_th_c_out_2.doStartTag();
    if (_jspx_th_c_out_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
    return false;
  }

  private boolean _jspx_meth_c_out_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_3 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_3.setPageContext(_jspx_page_context);
    _jspx_th_c_out_3.setParent(null);
    _jspx_th_c_out_3.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanpham.getTenSanPham()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_3 = _jspx_th_c_out_3.doStartTag();
    if (_jspx_th_c_out_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_3);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_3);
    return false;
  }

  private boolean _jspx_meth_c_out_4(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_4 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_4.setPageContext(_jspx_page_context);
    _jspx_th_c_out_4.setParent(null);
    _jspx_th_c_out_4.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanpham.getMoTa()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_4 = _jspx_th_c_out_4.doStartTag();
    if (_jspx_th_c_out_4.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_4);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_4);
    return false;
  }

  private boolean _jspx_meth_c_out_5(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_5 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_5.setPageContext(_jspx_page_context);
    _jspx_th_c_out_5.setParent(null);
    _jspx_th_c_out_5.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanpham.getMoTaChiTiet()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_5 = _jspx_th_c_out_5.doStartTag();
    if (_jspx_th_c_out_5.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_5);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_5);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("splq");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sanphamlienquan}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                <div class=\"item item-carousel\">\n");
          out.write("                                                    <div class=\"products\">\n");
          out.write("                                                        <div class=\"product\">\n");
          out.write("                                                            <div class=\"product-image\">\n");
          out.write("                                                                <div class=\"image\">\n");
          out.write("                                                                    <a href=\"detail.html\">\n");
          out.write("                                                                        <img src='");
          if (_jspx_meth_c_out_6((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("' alt=\"\"> \n");
          out.write("                                                                    </a>\n");
          out.write("                                                                </div> \n");
          out.write("                                                                <div class=\"tag new\">\n");
          out.write("                                                                    <span>new</span>\n");
          out.write("                                                                </div>\n");
          out.write("                                                            </div> \n");
          out.write("                                                            <div class=\"product-info text-left\">\n");
          out.write("                                                                <h3 class=\"name\">\n");
          out.write("                                                                    <a href=\"detail.html\">");
          if (_jspx_meth_c_out_7((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</a>\n");
          out.write("                                                                </h3>\n");
          out.write("                                                                <div class=\"rating rateit-small\"></div>\n");
          out.write("                                                                <div class=\"description\"></div>\n");
          out.write("                                                                <div class=\"product-price\">\n");
          out.write("                                                                    <span class=\"price\">\n");
          out.write("                                                                        ");
          if (_jspx_meth_c_out_8((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                                                    </span>\n");
          out.write("                                                                    <span class=\"price-before-discount\">\n");
          out.write("                                                                        ");
          if (_jspx_meth_c_out_9((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                                                                    </span>\n");
          out.write("                                                                </div> \n");
          out.write("                                                            </div> \n");
          out.write("                                                            <div class=\"cart clearfix animate-effect\">\n");
          out.write("                                                                <div class=\"action\">\n");
          out.write("                                                                    <ul class=\"list-unstyled\">\n");
          out.write("                                                                        <li class=\"add-cart-button btn-group\">\n");
          out.write("                                                                            <button data-toggle=\"tooltip\" class=\"btn btn-primary icon\" type=\"button\" title=\"Add Cart\">\n");
          out.write("                                                                                <i class=\"fa fa-shopping-cart\"></i>\n");
          out.write("                                                                            </button>\n");
          out.write("                                                                            <button class=\"btn btn-primary cart-btn\" type=\"button\">Add to cart</button>\n");
          out.write("                                                                        </li>\n");
          out.write("                                                                        <li class=\"lnk wishlist\">\n");
          out.write("                                                                            <a data-toggle=\"tooltip\" class=\"add-to-cart\" href=\"detail.html\" title=\"Wishlist\">\n");
          out.write("                                                                                <i class=\"icon fa fa-heart\"></i>\n");
          out.write("                                                                            </a>\n");
          out.write("                                                                        </li>\n");
          out.write("                                                                        <li class=\"lnk\">\n");
          out.write("                                                                            <a data-toggle=\"tooltip\" class=\"add-to-cart\" href=\"detail.html\" title=\"Compare\">\n");
          out.write("                                                                                <i class=\"fa fa-signal\" aria-hidden=\"true\"></i>\n");
          out.write("                                                                            </a>\n");
          out.write("                                                                        </li>\n");
          out.write("                                                                    </ul>\n");
          out.write("                                                                </div> \n");
          out.write("                                                            </div> \n");
          out.write("                                                        </div> \n");
          out.write("                                                    </div> \n");
          out.write("                                                </div>\n");
          out.write("                                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_out_6(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_6 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_6.setPageContext(_jspx_page_context);
    _jspx_th_c_out_6.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_6.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${splq.getHinhAnh()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_6 = _jspx_th_c_out_6.doStartTag();
    if (_jspx_th_c_out_6.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_6);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_6);
    return false;
  }

  private boolean _jspx_meth_c_out_7(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_7 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_7.setPageContext(_jspx_page_context);
    _jspx_th_c_out_7.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_7.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${splq.getTenSanPham()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_7 = _jspx_th_c_out_7.doStartTag();
    if (_jspx_th_c_out_7.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_7);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_7);
    return false;
  }

  private boolean _jspx_meth_c_out_8(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_8 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_8.setPageContext(_jspx_page_context);
    _jspx_th_c_out_8.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_8.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${splq.getGia()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_8 = _jspx_th_c_out_8.doStartTag();
    if (_jspx_th_c_out_8.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_8);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_8);
    return false;
  }

  private boolean _jspx_meth_c_out_9(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_9 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_9.setPageContext(_jspx_page_context);
    _jspx_th_c_out_9.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_9.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${splq.getGia()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_9 = _jspx_th_c_out_9.doStartTag();
    if (_jspx_th_c_out_9.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_9);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_9);
    return false;
  }
}
