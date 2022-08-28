package com.luccui.admin.servlets;

import com.luccui.dao.impl.DanhMucDAOImpl;
import com.luccui.dao.interfaces.IDanhMucDAO;
import com.lucui.models.DanhMuc;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DanhMucServlet", urlPatterns = {"/admin/danh-muc"})
public class DanhMucServlet extends BaseServlet {
    private IDanhMucDAO danhmucDAO;
    
    public DanhMucServlet()
    {
        danhmucDAO = new DanhMucDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        index(request, response);
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        List<DanhMuc> danhmucs = danhmucDAO.all();
        request.setAttribute("danhmucs", danhmucs);
        request.getRequestDispatcher("/admin/danhmuc/index.jsp").forward(request, response);
    }
}
