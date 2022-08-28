package com.luccui.admin.servlets;

import com.luccui.dao.impl.NhaCungCapDAOImpl;
import com.luccui.dao.interfaces.INhaCungCapDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NhaCungCapServlet", urlPatterns = {"/admin/nha-cung-cap"})
public class NhaCungCapServlet extends HttpServlet {
    private INhaCungCapDAO nhacungcapDAO;
    
    public NhaCungCapServlet()
    {
        nhacungcapDAO = new NhaCungCapDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        index(request, response);
        
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("nhacungcaps", nhacungcapDAO.all());
        request.getRequestDispatcher("/admin/nhacungcap/index.jsp").forward(request, response);
    }
}
