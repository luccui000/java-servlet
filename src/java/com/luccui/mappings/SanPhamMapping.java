package com.luccui.mappings;
 
import com.luccui.dao.impl.DanhMucDAOImpl;
import com.luccui.dao.impl.NhaCungCapDAOImpl;
import com.lucui.models.SanPham;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SanPhamMapping {
    public static SanPham make(ResultSet res) {
        try {
            int Id = res.getInt("id");
            String MaSanPham = res.getString("ma_san_pham");
            String HinhAnh = res.getString("hinh_anh");
            int DanhMucId = res.getInt("danhmuc_id");
            int NhaCungCapId = res.getInt("nhacungcap_id");
            String TenSanPham = res.getString("ten_san_pham");
            String MoTa = res.getString("mo_ta_ngan");
            String MoTaChiTiet = res.getString("mo_ta_chi_tiet");
            int GiaSP = res.getInt("gia_san_pham");
            int GiaKM = res.getInt("gia_cuoi_cung");
            int SoLuong = res.getInt("so_luong");
            Date NgayTao = res.getDate("ngay_tao");
            int NguoiTao = res.getInt("nguoi_tao");
            int TrangThai = res.getInt("trang_thai");  

            return new SanPham( 
                    Id,
                    MaSanPham,
                    DanhMucId, 
                    NhaCungCapId,
                    HinhAnh,
                    TenSanPham,
                    MoTa,
                    MoTaChiTiet,
                    GiaSP,
                    GiaKM,
                    SoLuong,
                    NgayTao,
                    NguoiTao,
                    TrangThai
            );
        } catch(SQLException ex) {
            return null;
        }
    }
}
