package com.luccui.dao.interfaces;
 
import com.lucui.models.DonHang;
import java.util.List;

public interface IDonHangDAO {
    List<DonHang> all();
    boolean insert(DonHang sanpham);    
    DonHang create(DonHang sanpham);
    DonHang find(int Id);
    boolean update(DonHang sanpham);
    boolean delete(int Id);
    <T> List<DonHang> where(String where, T value);
    List<DonHang> whereDanhMuc(int value);
}
