package com.luccui.admin.servlets;

import com.luccui.dao.impl.DanhMucDAOImpl;
import com.luccui.dao.impl.NhaCungCapDAOImpl;
import com.luccui.dao.impl.SanPhamDAOImpl;
import com.luccui.dao.interfaces.IDanhMucDAO;
import com.luccui.dao.interfaces.INhaCungCapDAO;
import com.luccui.dao.interfaces.ISanPhamDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet(name = "SanPhamServlet", urlPatterns = {"/admin/san-pham"})
public class SanPhamServlet extends HttpServlet { 
    private ISanPhamDAO sanphamDAO;
    private INhaCungCapDAO nhacungcapDAO;
    private IDanhMucDAO danhmucDAO;
    
    public SanPhamServlet() {
        if(sanphamDAO == null)
            sanphamDAO = new SanPhamDAOImpl();
        if(nhacungcapDAO == null)
            nhacungcapDAO = new NhaCungCapDAOImpl();
        if(danhmucDAO == null)
            danhmucDAO = new DanhMucDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        if(request.getParameter("action") == null)
            index(request, response);
        String action = request.getParameter("action");
        
        switch(action) {
            case "create":
                create(request, response);
                break;
            default:
                index(request, response);
                break;
        } 
    } 
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("sanphams", sanphamDAO.all());
        request.getRequestDispatcher("/admin/sanpham/index.jsp").forward(request, response); 
    } 
    protected void create(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("sanphams", sanphamDAO.all());
        request.setAttribute("danhmucs", danhmucDAO.all());
        request.setAttribute("nhacungcaps", nhacungcapDAO.all());

        request.getRequestDispatcher("/admin/sanpham/create.jsp").forward(request, response); 
    } 
}
