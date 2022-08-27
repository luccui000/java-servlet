package com.luccui.servlets;

import com.luccui.dao.impl.ChiTietDonHangDAOImpl;
import com.luccui.dao.impl.DonHangDAOImpl;
import com.luccui.dao.interfaces.IChiTietDonHangDAO;
import com.luccui.dao.interfaces.IDonHangDAO;
import com.luccui.entities.Item;
import com.luccui.utils.Str;
import com.lucui.models.ChiTietDonHang;
import com.lucui.models.DonHang;
import com.lucui.models.GioHang;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet(name = "ThanhToanServlet", urlPatterns = {"/thanh-toan"})
public class ThanhToanServlet extends HttpServlet { 
    
    private IDonHangDAO donhangDAO;
    private IChiTietDonHangDAO ctdhDAO;
    
    public ThanhToanServlet()
    {
        if(donhangDAO == null)
            donhangDAO = new DonHangDAOImpl();
        if(ctdhDAO == null)
            ctdhDAO = new ChiTietDonHangDAOImpl();
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
                default:
                    index(request, response);
                    break;
            }
        } 
    } 
    protected void index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        request.getRequestDispatcher("thanhtoan.jsp").forward(request, response);
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()) {
            String HoTen = request.getParameter("ho_ten");
            String SoDienThoai = request.getParameter("so_dien_thoai");
            String GhiChu = request.getParameter("ghi_chu");
            String MaXa = request.getParameter("xa");
            String DiaChi = request.getParameter("dia_chi");
            String PhuongThucThanhToan = request.getParameter("thanh_toan");
//            out.print(PhuongThucThanhToan);
            
            HttpSession session = request.getSession();
            GioHang giohang = (GioHang)session.getAttribute("GIO_HANG");
            
            DonHang donhang = new DonHang();
            donhang.setMaDonHang(Str.random(8));
            donhang.setHoTen(HoTen);
            donhang.setSoDienThoai(SoDienThoai);
            donhang.setGhiChu(GhiChu);
            donhang.setDiaChi(DiaChi);
            donhang.setMaXa(MaXa);
            donhang.setHoTen(HoTen);
            donhang.setTrangThai(0);
            donhang.setThanhTien(giohang.getTotal());
            donhang.setTongTien(giohang.getTotal());
            
            if(PhuongThucThanhToan.equals("online")) {
                donhang.setPhuongThucThanhToan(DonHang.THANH_TOAN_ONLINE);
            } else {
                donhang.setPhuongThucThanhToan(DonHang.THANH_TOAN_KHI_NHAN_HANG);
            }
            
            donhang.setNgayDat(Date.valueOf(LocalDate.now())); 
            
            int donhangId = donhangDAO.insertGetId(donhang);  
            
            if(donhangId != 0) {
                for(Map.Entry item :  giohang.getItems().entrySet()) {
                    Item ct = (Item)item.getValue();
                    this.themDonHang(
                            donhangId, 
                            ct.getSanPham().getId(), 
                            ct.getSanPham().getGiaKM(), 
                            ct.getSoLuong()
                    );
                }
                session.setAttribute("success", "Đặt hàng thành công");
                session.removeAttribute("GIO_HANG");
                session.setAttribute("DON_HANG_ID", donhangId); 
                
                if(PhuongThucThanhToan.equals("online")) {
                    String order_id = donhang.getMaDonHang();
                    String order_desc = "Thanh toan hoa don #" + order_id;
                    String order_type = "other";
                    int amount = giohang.getTotal(); 
                    String vnpayUrl = this.getVNPayUrl(order_id, order_desc, order_type, amount);
//                    out.print(vnpayUrl);
                    response.sendRedirect(vnpayUrl);
                }
            } else {
                session.setAttribute("error", "Đặt hàng thất bại");
                out.print("Đặt hàng thất bại");
            }
        }
    }
    private void themDonHang(int DonHangId, int SanPhamId, int DonGia, int SoLuong)
    {
        ChiTietDonHang ctdh = new ChiTietDonHang();
        ctdh.setDonHangId(DonHangId);
        ctdh.setSanPhamId(SanPhamId);
        ctdh.setDonGia(DonGia);
        ctdh.setSoLuong(SoLuong);
        ctdh.setThanhTien(DonGia * SoLuong);
        ctdhDAO.insert(ctdh);
        System.out.print(ctdh.toString());
    } 

    private String getVNPayUrl(String order_id, String order_desc, String order_type, int amount) {
        return "http://localhost:8000/webbanhang-api/vnpay.php?order_id=" + order_id + "&amount=" + amount + "&order_type=" + order_type + "&order_desc=" + order_desc;
    }
}
