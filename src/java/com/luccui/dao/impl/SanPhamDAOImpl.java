package com.luccui.dao.impl;
 
import com.luccui.dao.interfaces.ISanPhamDAO;
import com.luccui.mappings.SanPhamMapping;
import com.lucui.models.SanPham;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SanPhamDAOImpl extends AbstractDAO implements ISanPhamDAO { 
    @Override
    public List<SanPham> all() {
        List<SanPham> lst = new ArrayList<SanPham>(); 
        try {
            String sql = "SELECT * FROM SanPham"; 
            Statement stmt = this.conn.createStatement();
            ResultSet res = stmt.executeQuery(sql); 
            while (res.next()) {
                int Id = res.getInt("id");
                String MaSanPham = res.getString("ma_san_pham");
                String HinhAnh = res.getString("hinh_anh");
                int DanhMucId = res.getInt("danhmuc_id");
                int NhaCungCapId = res.getInt("nhacungcap_id");
                String TenSanPham = res.getString("ten_san_pham");
                String MoTa = res.getString("mo_ta_ngan");
                String MoTaChiTiet = res.getString("mo_ta_chi_tiet");
                int GiaSP = res.getInt("gia_san_pham");
                int GiaKM = res.getInt("gia_cuoi_cung");
                int SoLuong = res.getInt("so_luong");
                Date NgayTao = res.getDate("ngay_tao");
                int NguoiTao = res.getInt("nguoi_tao");
                int TrangThai = res.getInt("trang_thai");  
                lst.add(new SanPham( 
                        Id,
                        MaSanPham,
                        (new DanhMucDAOImpl()).find(DanhMucId), 
                        (new NhaCungCapDAOImpl()).find(NhaCungCapId),
                        HinhAnh,
                        TenSanPham,
                        MoTa,
                        MoTaChiTiet,
                        GiaSP,
                        GiaKM,
                        SoLuong,
                        NgayTao,
                        NguoiTao,
                        TrangThai
                )); 
            }
            res.close();
            stmt.close(); 
        } catch(SQLException ex) {
            
        }
        return lst;
    }

    @Override
    public boolean create(SanPham sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public SanPham find(int Id) {
        SanPham sanpham = null;
        try {
            String query = "SELECT * FROM SanPham WHERE id = ?";
            PreparedStatement pstmt = this.conn.prepareStatement(query);
            pstmt.setInt(1, Id);
            ResultSet res = pstmt.executeQuery();
         
            if (res.next()) { 
                sanpham = SanPhamMapping.make(res);
           }

            res.close();
            pstmt.close();
        } catch(SQLException ex) {
            
        }
        return sanpham;
    }

    @Override
    public boolean update(SanPham sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public <T> List<SanPham> where(String where, T value) {
        List<SanPham> lst = new ArrayList<SanPham>();
        try {
            String sql = "SELECT * FROM SanPham WHERE " + where + " = ?";
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
            ResultSet res = stmt.executeQuery(); 
            while(res.next()) { 
                lst.add(SanPhamMapping.make(res));
            }
        } catch (SQLException ex) {  
            Logger.getLogger(SanPhamDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }
    public List<SanPham> whereDanhMuc(int value) {
        List<SanPham> lst = new ArrayList<SanPham>();
        try {
            String sql = "SELECT * FROM SanPham WHERE danhmuc_id = ?";
            PreparedStatement stmt = this.conn.prepareStatement(sql); 
            stmt.setInt(1, value);
            ResultSet res = stmt.executeQuery(); 
            while(res.next()) { 
                lst.add(SanPhamMapping.make(res));
            }
        } catch (SQLException ex) {  
            Logger.getLogger(SanPhamDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    @Override
    public List<SanPham> top10() {
        List<SanPham> lst = new ArrayList<SanPham>(); 
        try {
            String sql = "SELECT * FROM SanPham WHERE la_san_pham_noi_bat = 1 ORDER By gia_cuoi_cung desc"; 
            Statement stmt = this.conn.createStatement();
            ResultSet res = stmt.executeQuery(sql); 
            while (res.next()) { 
                lst.add(SanPhamMapping.make(res)); 
            }
            res.close();
            stmt.close(); 
        } catch(SQLException ex) {
            
        }
        return lst;
    }
}
