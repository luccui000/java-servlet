package com.luccui.dao.impl;
 
import com.luccui.dao.interfaces.IDonHangDAO;
import com.luccui.mappings.DonHangMapping;
import com.lucui.models.DonHang;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DonHangDAOImpl extends AbstractDAO implements IDonHangDAO {

    @Override
    public List<DonHang> all() {
        List<DonHang> lst = new ArrayList<DonHang>(); 
        try {
            String sql = "SELECT * FROM DonHang"; 
            Statement stmt = this.conn.createStatement();
            ResultSet res = stmt.executeQuery(sql); 
            while (res.next()) {
                 lst.add(DonHangMapping.make(res));
            }
            res.close();
            stmt.close(); 
        } catch(SQLException ex) {
            
        }
        return lst;
    }

    @Override
    public boolean insert(DonHang donhang) {
        try {
            String query = "INSERT INTO DonHang (ma_don_hang, ho_ten, phi_giao_hang, dia_chi, so_dien_thoai, thanh_tien, tong_tien, phuong_thuc_thanh_toan, ghi_chu, trang_thai, ngay_dat) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement stmt = this.conn.prepareStatement(query); 
            stmt.setString(1, donhang.getMaDonHang());
            stmt.setString(2, donhang.getHoTen());
            stmt.setInt(3, donhang.getPhiGiaoHang());
            stmt.setString(4, donhang.getDiaChi());
            stmt.setString(5, donhang.getSoDienThoai());
            stmt.setInt(6, donhang.getThanhTien());
            stmt.setInt(7, donhang.getTongTien());
            stmt.setString(8, donhang.getPhuongThucThanhToan());
            stmt.setString(9, donhang.getGhiChu());
            stmt.setInt(10, donhang.getTrangThai());
            stmt.setDate(11, donhang.getNgayDat());
            boolean insertedRow = stmt.executeUpdate() > 0;
            stmt.close(); 
            return insertedRow;
        } catch(Exception ex) {
            return false;
        } 
    }

    @Override
    public DonHang find(int Id) {
        DonHang donhang = null;
        try {
            String query = "SELECT * FROM donhang WHERE id = ?"; 
            PreparedStatement stmt = this.conn.prepareStatement(query);
            stmt.setInt(1, Id);
            ResultSet rs = stmt.getGeneratedKeys();
            if(rs.next())
                donhang = DonHangMapping.make(rs);
        } catch(Exception ex) {
            return null;
        }
        return donhang;
    }

    @Override
    public boolean update(DonHang sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public <T> List<DonHang> where(String where, T value) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<DonHang> whereDanhMuc(int value) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    @Override
    public int insertGetId(DonHang donhang) {
        int Id = 0;
        try { 
            String query = "INSERT INTO DonHang (ma_don_hang, ho_ten, phi_giao_hang, dia_chi, so_dien_thoai, thanh_tien, tong_tien, phuong_thuc_thanh_toan, ghi_chu, trang_thai, ngay_dat) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement stmt = this.conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS); 
            stmt.setString(1, donhang.getMaDonHang());
            stmt.setString(2, donhang.getHoTen());
            stmt.setInt(3, donhang.getPhiGiaoHang());
            stmt.setString(4, donhang.getDiaChi());
            stmt.setString(5, donhang.getSoDienThoai());
            stmt.setInt(6, donhang.getThanhTien());
            stmt.setInt(7, donhang.getTongTien());
            stmt.setString(8, donhang.getPhuongThucThanhToan());
            stmt.setString(9, donhang.getGhiChu());
            stmt.setInt(10, donhang.getTrangThai());
            stmt.setDate(11, donhang.getNgayDat());
            
            stmt.executeUpdate();
            try (ResultSet rs = stmt.getGeneratedKeys()) {
                if (rs.next()) {
                    Id = rs.getInt(1);
                }
                rs.close();
            } 
            stmt.close();  
            System.out.print("INSERT ID: " + Id);
            return Id;
        } catch(Exception ex) {
            System.out.print(ex.getMessage());
        } finally {
            return Id;
        }
    }
    @Override
    public DonHang create(DonHang donhang) {
        DonHang newDonHang = null;
        try {
            String query = "INSERT INTO DonHang (ma_don_hang, ho_ten, phi_giao_hang, dia_chi, so_dien_thoai, thanh_tien, tong_tien, phuong_thuc_thanh_toan, ghi_chu, trang_thai, ngay_dat) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement stmt = this.conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS); 
            stmt.setString(1, donhang.getMaDonHang());
            stmt.setString(2, donhang.getHoTen());
            stmt.setInt(3, donhang.getPhiGiaoHang());
            stmt.setString(4, donhang.getDiaChi());
            stmt.setString(5, donhang.getSoDienThoai());
            stmt.setInt(6, donhang.getThanhTien());
            stmt.setInt(7, donhang.getTongTien());
            stmt.setString(8, donhang.getPhuongThucThanhToan());
            stmt.setString(9, donhang.getGhiChu());
            stmt.setInt(10, donhang.getTrangThai());
            stmt.setDate(11, donhang.getNgayDat());
            
            stmt.executeUpdate();
            try (ResultSet rs = stmt.getGeneratedKeys()) {
                if (rs.next()) {
                    donhang.setId(rs.getInt(1)); 
                }
                rs.close();
            } 
            stmt.close();   
        } catch(Exception ex) {
            System.out.print("[" + this.getClass().getName()  + "]:: " + ex.getMessage());
        } 
        return newDonHang;
    }

    @Override
    public List<DonHang> findByUser(int Id) {
        List<DonHang> lst = new ArrayList<DonHang>();
        
        try {
            String sql = "SELECT * FROM DonHang WHERE nguoi_dat = ?"; 
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, Id);
            ResultSet res = stmt.executeQuery();
            while (res.next()) {
                 
                 lst.add(DonHangMapping.make(res));
                 System.out.print(res.getString("ma_don_hang"));
            }
            res.close();
            stmt.close(); 
        } catch(SQLException ex) {
            System.out.print("[" + this.getClass().getName() + "]::" + ex.getMessage());
        }
        return lst;
    }
    
}
