package com.luccui.dao.impl;
 
import com.lucui.models.ChiTietDonHang;
import java.sql.PreparedStatement;
import java.util.List;
import com.luccui.dao.interfaces.IChiTietDonHangDAO;
import com.luccui.mappings.ChiTietDonHangMapping;
import com.luccui.mappings.TaiKhoanMapping;
import com.lucui.models.TaiKhoan;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ChiTietDonHangDAOImpl extends AbstractDAO implements IChiTietDonHangDAO {

    @Override
    public List<ChiTietDonHang> all() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insert(ChiTietDonHang ctdh) {
        try {
            String query = "INSERT INTO chitiet_donhang (donhang_id, sanpham_id, don_gia, so_luong, thanh_tien) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = this.conn.prepareStatement(query);
            
            stmt.setInt(1, ctdh.getDonHangId());
            stmt.setInt(2, ctdh.getSanPhamId());
            stmt.setInt(3, ctdh.getDonGia());
            stmt.setInt(4, ctdh.getSoLuong());
            stmt.setInt(5, ctdh.getThanhTien());
            
            boolean rowInserted = stmt.executeUpdate() > 0; 
            stmt.close();
            return rowInserted;
        } catch(Exception ex) {
            System.out.print(ex.getMessage());
            return false;
        }
    }

    @Override
    public ChiTietDonHang find(int Id) {
        return this.where("id", Id).get(0);
    }

    @Override
    public boolean update(ChiTietDonHang sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public <T> List<ChiTietDonHang> where(String where, T value) {
        List<ChiTietDonHang> lst = new ArrayList<ChiTietDonHang>();
        try {
            String sql = "SELECT * FROM chitiet_donhang WHERE " + where + " = ?";
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
                lst.add((new ChiTietDonHangMapping()).mapping(res));
            }
        } catch (SQLException ex) {  
            Logger.getLogger(SanPhamDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    } 
    
}
