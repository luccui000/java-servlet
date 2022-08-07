package com.luccui.servlets;

import com.luccui.dao.impl.SanPhamDAOImpl;
import com.luccui.dao.interfaces.ISanPhamDAO;
import com.luccui.exceptions.QueryException;
import com.luccui.utils.HttpUtils;
import com.lucui.models.SanPham;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ChiTietSanPhamServlet", urlPatterns = {"/chi-tiet"})
public class ChiTietSanPhamServlet extends HttpServlet {
    protected ISanPhamDAO sanphamDAO;
    public ChiTietSanPhamServlet()
    {
        sanphamDAO = new SanPhamDAOImpl();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("id") == null)
            response.sendRedirect(HttpUtils.Url(request));
        
        int Id = Integer.parseInt(request.getParameter("id"));
        
        SanPham sanpham = sanphamDAO.find(Id);
        if(sanpham == null)
            response.sendRedirect(HttpUtils.Url(request));
        request.setAttribute("sanpham", sanpham);
         
        List<SanPham> sanphamLienQuan = sanphamDAO.whereDanhMuc(sanpham.getDanhMucId());
        request.setAttribute("sanphamlienquan", sanphamLienQuan);
        request.getRequestDispatcher("chitiet.jsp").forward(request, response);
    }
 
}
