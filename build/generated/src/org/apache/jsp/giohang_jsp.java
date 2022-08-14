package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import com.luccui.entities.Item;
import com.lucui.models.GioHang;
import com.lucui.models.SanPham;
import java.text.NumberFormat;
import java.util.Locale;
import com.luccui.utils.CurrencyFormat;

public final class giohang_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Trang giỏ hàng</title>\n");
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
      out.write("            tbody > tr > td {\n");
      out.write("                padding: 20px 0 !important;\n");
      out.write("                font-size: 16px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"cnt-home\"> \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "includes/header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"body-content outer-top-vs\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"panel\">\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                         <div class=\"breadcrumb-inner\">\n");
      out.write("                            <ul class=\"list-inline list-unstyled\">\n");
      out.write("                                <li><a href=\"");
      out.print( request.getContextPath() );
      out.write("/\">Trang chủ</a></li>\n");
      out.write("                                <li class=\"active\">Giỏ hàng</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>                   \n");
      out.write("                    </div>\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"body-content\" style=\"margin-top: 20px;\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"checkout-box \">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-xs-12 col-sm-9 col-md-9 rht-col\">\n");
      out.write("                             <div class=\"panel\"> \n");
      out.write("                                <div class=\"panel-heading\">\n");
      out.write("                                    <h4 >\n");
      out.write("                                        Thông tin giỏ hàng\n");
      out.write("                                    </h4>\n");
      out.write("                                </div>\n");
      out.write("                                 <div class=\"panel-body\">\n");
      out.write("                                     <table class=\"table\">\n");
      out.write("                                        <thead>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Mã sản phẩm</th>\n");
      out.write("                                                <th>Tên sản phẩm</th>\n");
      out.write("                                                <th style='width: 200px;'>Số lượng</th>\n");
      out.write("                                                <th>Đơn giá</th>\n");
      out.write("                                                <th>Thành tiền</th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                            ");

                                               GioHang cart = (GioHang)session.getAttribute("GIO_HANG");
                                               for(Map.Entry item : cart.getItems().entrySet()) {
                                                   Item it = (Item)item.getValue(); 
                                                   out.print("<tr>");
                                                   out.print("<td>" + it.getSanPham().getMaSanPham() + "</td>");
                                                   out.print("<td class='ml-1'>" + it.getSanPham().getTenSanPham() + "</td>");
                                                   out.print("<td style='width: 200px;'>"
                                                           + "<form action='./gio-hang' >"
                                                            + "<input name='action' value='updateCart' type='hidden' />"
                                                            + "<input name='id' value='" + it.getSanPham().getId() + "' type='hidden' />"
                                                            + "<div style='display: flex'>"
                                                            + "<input name='soluong' min='1' value='" + it.getSoLuong() + "' class='form-control unicase-form-control text-input ' style='width: 80px' type='number' />"
                                                            + "<button class='btn'><i class='fa fa-refresh'></i></button>"
                                                            + "</div>"
                                                            + "</form>"
                                                           + "</td>");
                                                   out.print("<td>" + CurrencyFormat.VND(it.getSanPham().getGiaKM()).substring(4) + "đ</td>");
                                                   out.print("<td style='font-weight: bold;'>" + CurrencyFormat.VND(it.getSanPham().getGiaKM() * it.getSoLuong()).substring(4) + "đ</td>"); 
                                                   out.print("</tr>");
                                               }
                                            
      out.write("\n");
      out.write("                                        </tbody>\n");
      out.write("                                   </table> \n");
      out.write("                                   <a href=\"");
      out.print( request.getContextPath() );
      out.write("/thanh-toan\" class=\"btn btn-primary\">Đi đến thanh toán</a>\n");
      out.write("                                 </div>\n");
      out.write("                             </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xs-12 col-sm-3 col-md-3 sidebar\"> \n");
      out.write("                            <div class=\"checkout-progress-sidebar \">\n");
      out.write("                                <div class=\"panel-group\">\n");
      out.write("                                    <div class=\"panel panel-default\">\n");
      out.write("                                        <div class=\"panel-heading\">\n");
      out.write("                                            <h4 class=\"unicase-checkout-title\">Quy trình đặt hàng</h4>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"\">\n");
      out.write("                                            <ul class=\"nav nav-checkout-progress list-unstyled\">\n");
      out.write("                                                <li>\n");
      out.write("                                                    <a href=\"#\">Kiểm tra giỏ hàng</a>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li>\n");
      out.write("                                                    <a href=\"#\">Điền thông tin</a>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li>\n");
      out.write("                                                    <a href=\"#\">Chọn địa chỉ</a>\n");
      out.write("                                                </li>\n");
      out.write("                                                <li>\n");
      out.write("                                                    <a href=\"#\">Chọn phương thức thanh toán</a>\n");
      out.write("                                                </li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div> \n");
      out.write("                        </div>\n");
      out.write("                    </div> \n");
      out.write("                </div>  \n");
      out.write("            </div> \n");
      out.write("        </div>   \n");
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
}
