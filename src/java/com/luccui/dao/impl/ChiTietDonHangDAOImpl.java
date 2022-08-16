package com.luccui.dao.impl;
 
import com.lucui.models.ChiTietDonHang;
import java.sql.PreparedStatement;
import java.util.List;
import com.luccui.dao.interfaces.IChiTietDonHangDAO;

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
            this.conn.close();
           stmt.close();
            return rowInserted;
        } catch(Exception ex) {
            return false;
        }
    }

    @Override
    public ChiTietDonHang find(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    } 
    
}
