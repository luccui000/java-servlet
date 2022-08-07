package com.luccui.dao.interfaces;
 
import com.lucui.models.SanPham;
import java.util.List;

public interface ISanPhamDAO {
    List<SanPham> all();
    boolean create(SanPham sanpham);
    SanPham find(int Id);
    boolean update(SanPham sanpham);
    boolean delete(int Id);
    <T> List<SanPham> where(String where, T value);
    List<SanPham> whereDanhMuc(int value);
}
