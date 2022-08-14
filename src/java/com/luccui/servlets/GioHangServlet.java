package com.luccui.servlets;

import com.luccui.dao.impl.SanPhamDAOImpl;
import com.luccui.dao.interfaces.ISanPhamDAO;
import com.luccui.entities.Item;
import com.luccui.services.interfaces.IGioHangService;
import com.luccui.utils.HttpUtils;
import com.lucui.models.GioHang;
import com.lucui.models.SanPham;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet(name = "GioHangServlet", urlPatterns = {"/gio-hang"})
public class GioHangServlet extends HttpServlet {
    private ISanPhamDAO sanphamDAO; 
    
    public GioHangServlet()
    {
        sanphamDAO = new SanPhamDAOImpl(); 
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
                case "addToCart":
                    addToCart(request, response); 
                    break;
                case "updateCart":
                    updateCart(request, response); 
                    break;
                default:
                    index(request, response);
                    break;
            }
        } 
        try (PrintWriter out = response.getWriter()) {
            out.print(action);
        }
    } 
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        HttpSession session = request.getSession();
        GioHang giohang = (GioHang)session.getAttribute("GIO_HANG");
        request.setAttribute("GIO_HANG", giohang);
        request.getRequestDispatcher("giohang.jsp").forward(request, response);
        
    }  
    private void addToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) { 
            int Id = Integer.parseInt(request.getParameter("id")); 
            int amount = Integer.parseInt(request.getParameter("amount")); 
            HttpSession session = request.getSession();
            GioHang giohang = (GioHang)session.getAttribute("GIO_HANG");
            if(giohang == null)
                giohang = new GioHang();
            System.out.print(Id);
            giohang.them(Id, amount);
            session.setAttribute("GIO_HANG", giohang);
            String prevUrl = request.getHeader("referer");
            response.sendRedirect(prevUrl);
        }
    } 
    protected void updateCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {  
        try (PrintWriter out = response.getWriter()) {
            int id =  Integer.parseInt(request.getParameter("id"));
            int amount = Integer.parseInt(request.getParameter("soluong"));
            processCart(id, amount, request);
            String prevUrl = request.getRequestURL().toString();
            response.sendRedirect(prevUrl);
        }
    } 
    protected void processCart(int id, int amount, HttpServletRequest request)
    {
        HttpSession session = request.getSession();
        GioHang giohang = (GioHang)session.getAttribute("GIO_HANG");
        if(giohang == null)
            giohang = new GioHang();
        giohang.them(id, amount);
        session.setAttribute("GIO_HANG", giohang);
    }
}
