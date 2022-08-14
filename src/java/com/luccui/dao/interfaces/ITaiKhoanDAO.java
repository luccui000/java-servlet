package com.luccui.dao.interfaces;
 
import com.luccui.services.interfaces.ILoginService;
import com.lucui.models.TaiKhoan;
import java.util.List;

public interface ITaiKhoanDAO extends ILoginService {
    List<TaiKhoan> all();
    boolean create(TaiKhoan tk);
    boolean update(TaiKhoan tk);
    TaiKhoan find(int id);
    <T> List<TaiKhoan> where(String where, T value);
    boolean delete(int id);
}
