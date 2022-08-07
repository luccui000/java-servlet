package com.luccui.dao.interfaces;
 
import com.lucui.models.DanhMuc;
import java.util.List;

public interface IDanhMucDAO {
    List<DanhMuc> all();
    boolean create(DanhMuc sanpham);
    DanhMuc find(int Id);
    boolean update(DanhMuc sanpham);
    boolean delete(int Id);
}
