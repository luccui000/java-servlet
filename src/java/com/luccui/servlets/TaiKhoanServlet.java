package com.luccui.servlets;

import com.luccui.constants.Constant;
import com.luccui.dao.impl.DonHangDAOImpl;
import com.luccui.dao.interfaces.IDonHangDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "TaiKhoanServlet", urlPatterns = {"/tai-khoan"})
public class TaiKhoanServlet extends HttpServlet {
    private IDonHangDAO donhangDAO;
    
    public TaiKhoanServlet() {
        donhangDAO = new DonHangDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        index(request, response);
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        HttpSession session = request.getSession();
        Integer userId = (Integer)session.getAttribute(Constant.SESSION_ID);
        
        System.out.print(userId);
        if(userId != null) {
            request.setAttribute("donhangs", donhangDAO.findByUser(userId));
        } 
        request.getRequestDispatcher("taikhoan.jsp").forward(request, response);
    }
}
