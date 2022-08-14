package com.luccui.dao.impl;

import com.luccui.dao.interfaces.ITaiKhoanDAO;
import com.luccui.mappings.TaiKhoanMapping;
import com.luccui.services.interfaces.ILoginService;
import com.luccui.utils.Hash;
import com.lucui.models.TaiKhoan;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

 
public class TaiKhoanDAOImpl extends AbstractDAO implements ITaiKhoanDAO, ILoginService { 

    @Override
    public List<TaiKhoan> all() {
        List<TaiKhoan> lst = new ArrayList<TaiKhoan>();
        try {
            String query = "SELECT * FROM TaiKhoan";
            Statement stmt = this.conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()) {
                lst.add(TaiKhoanMapping.make(rs));
            }
        } catch(Exception ex) {
            
        }
        return lst;
    }

    @Override
    public boolean create(TaiKhoan tk) {
        String query = "INSERT INTO taikhoan (email, ho_ten, so_dien_thoai, mat_khau, ngay_tao, quyen, dia_chi, ma_xa) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stmt = this.conn.prepareStatement(query);
            stmt.setString(1, tk.getEmail());
            stmt.setString(2, tk.getHoTen());
            stmt.setString(3, tk.getSoDienThoai());
            stmt.setString(4, Hash.make(tk.getMatKhau()));
            stmt.setDate(5, Date.valueOf(LocalDate.now()));
            stmt.setInt(6, tk.getQuyen());
            stmt.setString(7, tk.getDiaChi());
            stmt.setInt(8, tk.getMaXa());
            boolean rowInserted = stmt.executeUpdate() > 0;
            stmt.close(); 
            this.conn.close();
            return rowInserted; 
        } catch(SQLException ex) {
            System.out.print(ex.getMessage());
        }
        return false;
    }

    @Override
    public boolean update(TaiKhoan tk) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TaiKhoan find(int Id) {
        TaiKhoan taikhoan = null;
        try {
            String query = "SELECT * FROM SanPham WHERE id = ?";
            PreparedStatement pstmt = this.conn.prepareStatement(query);
            pstmt.setInt(1, Id);
            ResultSet res = pstmt.executeQuery();
         
            if (res.next()) { 
                taikhoan = TaiKhoanMapping.make(res);
           }

            res.close();
            pstmt.close();
        } catch(SQLException ex) {
            
        }
        return taikhoan;
    }

    @Override
    public <T> List<TaiKhoan> where(String where, T value) {
        List<TaiKhoan> lst = new ArrayList<TaiKhoan>();
        try {
            String sql = "SELECT * FROM TaiKhoan WHERE " + where + " = ?";
            PreparedStatement stmt = this.conn.prepareStatement(sql);
             
            if(value instanceof String) {
                stmt.setString(1, value.toString());
            }
            if(value instanceof Integer) {
                stmt.setInt(1, Integer.parseInt(value.toString()));
            }
            if(value instanceof Date) {
                stmt.setDate(1, Date.valueOf(value.toString()));
            }
            System.out.println(stmt.toString());
            ResultSet res = stmt.executeQuery(); 
            while(res.next()) { 
                lst.add(TaiKhoanMapping.make(res));
            }
        } catch (SQLException ex) {  
            Logger.getLogger(SanPhamDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    @Override
    public TaiKhoan login(String email, String password) { 
        TaiKhoan taikhoan = null;
        try {
            password = Hash.make(password);
            String sql = "SELECT * FROM TaiKhoan WHERE email = ? and mat_khau = ?";
            PreparedStatement stmt = this.conn.prepareStatement(sql); 
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet res = stmt.executeQuery();
            if(res.next()) {
                taikhoan = TaiKhoanMapping.make(res);
            }  
        } catch (SQLException ex) {  
            Logger.getLogger(SanPhamDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return taikhoan;
    }

    @Override
    public boolean register(String Email, String HoTen, String SoDienThoai, String MatKhau) {
        TaiKhoan taikhoan = new TaiKhoan();
        taikhoan.setEmail(Email);
        taikhoan.setHoTen(HoTen);
        taikhoan.setSoDienThoai(SoDienThoai);
        taikhoan.setMatKhau(MatKhau);
        return this.create(taikhoan); 
    }
}
