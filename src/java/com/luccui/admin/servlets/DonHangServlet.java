package com.luccui.admin.servlets;

import com.luccui.constants.ToastStatus;
import com.luccui.dao.impl.ChiTietDonHangDAOImpl;
import com.luccui.dao.impl.DonHangDAOImpl;
import com.luccui.dao.interfaces.IChiTietDonHangDAO;
import com.luccui.dao.interfaces.IDonHangDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "DonHangServlet", urlPatterns = {"/admin/don-hang"})
public class DonHangServlet extends BaseServlet {
    private IDonHangDAO donhangDAO;
    private IChiTietDonHangDAO chitietdonhangDAO;
    
    public DonHangServlet()
    {
        donhangDAO = new DonHangDAOImpl();
        chitietdonhangDAO = new ChiTietDonHangDAOImpl();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action != null) {
            switch(action) {
                case "show":
                    show(request, response);
                    break;
                case "xacnhan":
                    xacnhan(request, response);
                    break;
                case "danggiaohang":
                    danggiaohang(request, response);
                    break;
                case "inhoadon":
                    inhoadon(request, response);
                    break;
            }  
        }
        index(request, response);
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("donhangs", donhangDAO.all());
        request.getRequestDispatcher("/admin/donhang/index.jsp").forward(request, response);
    }
    protected void show(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer donhangId = Integer.parseInt(request.getParameter("id"));
        if(donhangId == null)
            response.sendRedirect(request.getContextPath() + "/admin/don-hang");
        
        request.setAttribute("donhang", donhangDAO.find(donhangId));
//        try (PrintWriter out = response.getWriter()) {
//            out.print(chitietdonhangDAO.where("donhang_id", donhangId));
//        }
        request.setAttribute("chitietdonhangs", chitietdonhangDAO.where("donhang_id", donhangId));
        request.getRequestDispatcher("/admin/donhang/show.jsp").forward(request, response);
    }
    protected void xacnhan(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        if(id == null)
            response.sendRedirect(request.getContextPath() + "/admin/don-hang");
        
        boolean ok = donhangDAO.updateStatus(id, 1);
        
        HttpSession session = request.getSession();
        if(ok) {
            session.setAttribute(ToastStatus.SUCCESS, "Xác nhận đơn hàng thành công");
        } else {
            session.setAttribute(ToastStatus.ERROR, "Có lỗi xảy ra");
        } 
    }
    protected void danggiaohang(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        if(id == null)
            response.sendRedirect(request.getContextPath() + "/admin/don-hang");
        
        boolean ok = donhangDAO.updateStatus(id, 2);
        
        HttpSession session = request.getSession();
        if(ok) {
            session.setAttribute(ToastStatus.SUCCESS, "Xác nhận giao hàng thành công");
        } else {
            session.setAttribute(ToastStatus.ERROR, "Có lỗi xảy ra");
        } 
    }
    protected void inhoadon(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        if(id == null)
            response.sendRedirect(request.getContextPath() + "/admin/don-hang");
        
        
    }
}
