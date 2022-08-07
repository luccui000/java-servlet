package com.luccui.dao.impl;
 
import com.luccui.dao.interfaces.IDanhMucDAO;
import com.lucui.models.DanhMuc;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DanhMucDAOImpl extends AbstractDAO implements IDanhMucDAO { 
    @Override
    public List<DanhMuc> all() {
        String sql = "SELECT * FROM DanhMuc";
        List<DanhMuc> lst = new ArrayList<DanhMuc>();
        try {
            Statement stmt = this.conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) { 
                DanhMuc dm = new DanhMuc(
                        rs.getInt("id"), 
                        rs.getString("ten_danh_muc"),
                        rs.getString("hinh_anh"),
                        rs.getInt("thu_tu"),
                        rs.getInt("noi_bat"),
                        rs.getDate("ngay_tao")
                );
                lst.add(dm);
            }
        } catch(SQLException ex) {
            
        }
        return lst;
    }

    @Override
    public boolean create(DanhMuc sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DanhMuc find(int Id) {
        DanhMuc danhmuc = null;
        String sql = "SELECT * FROM DanhMuc WHERE id = ?";
        PreparedStatement stmt;
        try {
            stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, Id);
            ResultSet resultSet = stmt.executeQuery();
         
            if (resultSet.next()) {
                String TenDanhMuc = resultSet.getString("ten_danh_muc");
                String HinhAnh = resultSet.getString("hinh_anh");
                int ThuTu = resultSet.getInt("thu_tu");
                int NoiBat = resultSet.getInt("noi_bat");
                Date NgayTao = resultSet.getDate("ngay_tao");

                danhmuc = new DanhMuc(Id, TenDanhMuc, HinhAnh, ThuTu, NoiBat, NgayTao); 
           }

            resultSet.close();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(DanhMucDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return danhmuc;
    }

    @Override
    public boolean update(DanhMuc sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
