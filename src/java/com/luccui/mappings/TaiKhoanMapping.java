package com.luccui.mappings;
 
import com.lucui.models.TaiKhoan;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TaiKhoanMapping {
    public static TaiKhoan make(ResultSet result) throws SQLException {
        int Id = result.getInt("id");
        String HoTen = result.getString("ho_ten");
        String SoDienThoai = result.getString("so_dien_thoai");
        String Email = result.getString("email");
        String MatKhau = result.getString("mat_khau");
        Date NgayTao = result.getDate("ngay_tao");
        int Quyen = result.getInt("quyen");
        String DiaChi = result.getString("dia_chi");
        int MaXa = result.getInt("ma_xa");
        return new TaiKhoan(Id, HoTen, SoDienThoai, Email, MatKhau, NgayTao, Quyen, DiaChi, MaXa);
    }
}
