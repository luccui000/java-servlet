package com.luccui.servlets;

import com.luccui.dao.impl.BaiVietDAOImpl;
import com.luccui.dao.interfaces.IBaiVietDAO;
import com.lucui.models.BaiViet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "BaiVietServlet", urlPatterns = {"/bai-viet"})
public class BaiVietServlet extends HttpServlet {
    private IBaiVietDAO baivietDAO;
    
    public BaiVietServlet()
    {
        baivietDAO = new BaiVietDAOImpl();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        index(request, response);
    }
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
        List<BaiViet> baiviets = baivietDAO.all();
        request.setAttribute("baiviets", baiviets);
        
        request.getRequestDispatcher("baiviet.jsp").forward(request, response);
    }
}
