package com.luccui.dao.interfaces;
 
import com.lucui.models.ChiTietDonHang;
import java.util.List;

public interface IChiTietDonHangDAO {
    List<ChiTietDonHang> all();
    boolean insert(ChiTietDonHang sanpham);     
    ChiTietDonHang find(int Id);
    boolean update(ChiTietDonHang sanpham);
    boolean delete(int Id);
    <T> List<ChiTietDonHang> where(String where, T value); 
}
