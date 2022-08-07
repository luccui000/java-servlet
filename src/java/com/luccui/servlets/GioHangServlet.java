package com.luccui.servlets;

import com.luccui.dao.impl.SanPhamDAOImpl;
import com.luccui.dao.interfaces.ISanPhamDAO;
import com.luccui.entities.Item;
import com.luccui.services.interfaces.IGioHangService;
import com.luccui.utils.HttpUtils;
import com.lucui.models.SanPham;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(name = "GioHangServlet", urlPatterns = {"/gio-hang"})
public class GioHangServlet extends HttpServlet {
    private ISanPhamDAO sanphamDAO;
    private IGioHangService gioHangService;
    
    public GioHangServlet()
    {
        sanphamDAO = new SanPhamDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        if(action == null)
            index(request, response);
        else {
            try (PrintWriter out = response.getWriter()) { 
            }  
        } 
    } 
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("giohang.jsp").forward(request, response);
        
    } 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int Id = Integer.parseInt(request.getParameter("id"));
        SanPham sp = sanphamDAO.find(Id);
        if(sp == null)
            response.sendRedirect(HttpUtils.baseUrl(request));
        gioHangService.them(Id, 1);
    } 
    private void addToCart(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) { 
        }
    }
}
