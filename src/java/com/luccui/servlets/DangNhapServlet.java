package com.luccui.servlets;

import com.luccui.constants.Constant;
import com.luccui.dao.impl.TaiKhoanDAOImpl;
import com.luccui.dao.interfaces.ITaiKhoanDAO;
import com.luccui.utils.Hash;
import com.luccui.utils.HttpUtils;
import com.lucui.models.TaiKhoan;
import java.io.IOException;
import java.io.PrintWriter; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "DangNhapServlet", urlPatterns = {"/dang-nhap"})
public class DangNhapServlet extends HttpServlet { 
    private final ITaiKhoanDAO taikhoanDAO;
    
    public DangNhapServlet()
    {
        taikhoanDAO = new TaiKhoanDAOImpl();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action == null)
            index(request, response);
        else {
            switch(action) {
                default:
                    index(request, response);
                    break;
            }
        }
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String matkhau = request.getParameter("mat_khau"); 
        TaiKhoan taikhoan = taikhoanDAO.login(email, matkhau);
        HttpSession session = request.getSession();
        if(taikhoan != null) { 
            session.setAttribute(Constant.SESSION_ID, taikhoan.getId());
            session.setAttribute(Constant.SESSION_HO_TEN, taikhoan.getHoTen());
            session.setAttribute(Constant.SESSION_EMAIL, taikhoan.getEmail());
            session.setAttribute(Constant.SESSION_QUYEN, taikhoan.getQuyen());
            response.sendRedirect(HttpUtils.Url(request));
        } else {
            request.setAttribute("error", "Email hoặc mật khẩu không đúng, vui lòng đăng nhập lại");
        }
    } 
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        request.getRequestDispatcher("dangnhap.jsp").forward(request, response);
    }
}
