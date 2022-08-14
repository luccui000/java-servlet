package com.luccui.services.interfaces;

import com.lucui.models.TaiKhoan;

 
public interface ILoginService {
    public TaiKhoan login(String email, String password);
    public boolean register(String Email, String HoTen, String SoDienThoai, String MatKhau);
}
