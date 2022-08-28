package com.luccui.mappings;
 
import com.lucui.models.DonHang;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DonHangMapping {
    // String HoTen, int PhiGiaoHang, String DiaChi, String SoDienThoai, int ThanhTien, int TongTien, String PhuongThucThanhToan, String GhiChu
    public static DonHang make(ResultSet res) throws SQLException { 
        DonHang dh = new DonHang(
            res.getString("ho_ten"),            
            res.getInt("phi_giao_hang"),
            res.getString("dia_chi"),
            res.getString("so_dien_thoai"),
            res.getInt("thanh_tien"),
            res.getInt("tong_tien"),
            res.getString("phuong_thuc_thanh_toan"),
            res.getString("ghi_chu")
        );
        dh.setMaDonHang(res.getString("ma_don_hang"));        
        dh.setNgayDat(res.getDate("ngay_dat"));
        dh.setTrangThai(res.getInt("trang_thai"));

        return dh;
    }
}
