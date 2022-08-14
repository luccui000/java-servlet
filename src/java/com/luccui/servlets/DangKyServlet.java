package com.luccui.servlets;

import com.luccui.dao.impl.TaiKhoanDAOImpl;
import com.luccui.dao.interfaces.ITaiKhoanDAO;
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
 
@WebServlet(name = "DangKyServlet", urlPatterns = {"/dang-ky"})
public class DangKyServlet extends HttpServlet {
    private ITaiKhoanDAO taikhoanDAO;
    public DangKyServlet() 
    {
        taikhoanDAO = new TaiKhoanDAOImpl();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8"); 
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Email = request.getParameter("email");
        String HoTen = request.getParameter("ho_ten");
        String SoDienThoai = request.getParameter("so_dien_thoai");
        String MatKhau = request.getParameter("mat_khau");
        
        boolean ok = taikhoanDAO.register(Email, HoTen, SoDienThoai, MatKhau);
        HttpSession session = request.getSession();
        if(ok) {
            session.setAttribute("success", "Đăng ký tài khoản thành công");
        } else {
            session.setAttribute("error", "Có lỗi xảy ra, đăng ký tài khoản thất bại");
        } 
        response.sendRedirect("./dang-nhap");
    }
}
