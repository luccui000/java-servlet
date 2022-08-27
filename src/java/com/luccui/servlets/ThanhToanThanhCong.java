package com.luccui.servlets;

import com.luccui.dao.impl.DonHangDAOImpl;
import com.luccui.dao.interfaces.IDonHangDAO;
import com.lucui.models.DonHang;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ThanhToanThanhCong", urlPatterns = {"/thanh-toan-thanh-cong"})
public class ThanhToanThanhCong extends HttpServlet { 
    protected IDonHangDAO donhangDAO;
    
    public ThanhToanThanhCong()
    {
        donhangDAO = new DonHangDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        index(request, response);
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8"); 
        HttpSession session = request.getSession();
        int donhangId = (int)session.getAttribute("DON_HANG_ID"); 
        
        DonHang donhang = donhangDAO.find(donhangId);
        if(donhang == null)
            response.sendRedirect("/");
        else 
            request.setAttribute("donhang", donhang);
        
        request.getRequestDispatcher("thanhtoanthanhcong.jsp").forward(request, response); 
    } 
}
