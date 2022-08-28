package com.luccui.dao.interfaces;
 
import com.lucui.models.DonHang;
import java.util.List;

public interface IDonHangDAO {
    List<DonHang> all();
    boolean insert(DonHang sanpham);    
    int insertGetId(DonHang sanpham);
    DonHang create(DonHang sanpham);
    DonHang find(int Id);
    List<DonHang> findByUser(int Id);
    boolean update(DonHang sanpham);
    boolean delete(int Id);
    <T> List<DonHang> where(String where, T value);
    List<DonHang> whereDanhMuc(int value);
    boolean updateStatus(int id, int TrangThai);
}
