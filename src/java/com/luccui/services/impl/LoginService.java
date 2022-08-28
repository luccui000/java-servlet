package com.luccui.services.impl;

import com.luccui.dao.impl.TaiKhoanDAOImpl;
import com.luccui.services.interfaces.ILoginService;
import com.lucui.models.TaiKhoan;


public class LoginService implements ILoginService { 
    @Override
    public TaiKhoan login(String email, String password) {
        TaiKhoanDAOImpl service = new TaiKhoanDAOImpl();
        return service.loginAdmin(email, password); 
    }

    @Override
    public boolean register(String Email, String HoTen, String SoDienThoai, String MatKhau) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
