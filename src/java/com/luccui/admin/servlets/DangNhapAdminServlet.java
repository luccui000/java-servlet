package com.luccui.admin.servlets;

import com.luccui.constants.Constant;
import com.luccui.constants.ToastStatus;
import com.luccui.services.impl.LoginService;
import com.luccui.services.interfaces.ILoginService;
import com.lucui.models.TaiKhoan;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "DangNhapAdminServlet", urlPatterns = {"/admin/dang-nhap"})
public class DangNhapAdminServlet extends BaseServlet {
     private ILoginService loginService;
    public DangNhapAdminServlet()
    {
        loginService = new LoginService();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        index(request, response);
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/admin/dangnhap.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        
        TaiKhoan taikhoan = loginService.login(Email, Password);
        
        HttpSession session = request.getSession();
        
        if(taikhoan != null) {    
            session.setAttribute(Constant.SESSION_ADMIN_ID, taikhoan.getId());
            session.setAttribute(Constant.SESSION_ADMIN_HO_TEN, taikhoan.getHoTen());
            session.setAttribute(Constant.SESSION_ADMIN_EMAIL, taikhoan.getEmail());
            
            response.sendRedirect(request.getContextPath() + "/admin/trang-chu");
        } else {
            session.setAttribute(ToastStatus.ERROR, "Tên đăng nhập hoặc mật khẩu không đúng");
        } 
    }
}
