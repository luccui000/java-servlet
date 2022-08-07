package com.luccui.dao.interfaces;
 
import com.lucui.models.NhaCungCap;
import java.util.List;

public interface INhaCungCapDAO {
    List<NhaCungCap> all();
    boolean create(NhaCungCap sanpham);
    NhaCungCap find(int Id);
    boolean update(NhaCungCap sanpham);
    boolean delete(int Id);
}
