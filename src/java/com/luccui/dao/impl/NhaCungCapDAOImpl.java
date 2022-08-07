package com.luccui.dao.impl;
 
import com.luccui.dao.interfaces.INhaCungCapDAO;
import com.lucui.models.NhaCungCap;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class NhaCungCapDAOImpl extends AbstractDAO implements INhaCungCapDAO {

    @Override
    public List<NhaCungCap> all() {
        List<NhaCungCap> lst= new ArrayList<NhaCungCap>();
        try {
            String sql = "SELECT * FROM NhaCungCap"; 
            Statement stmt = this.conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) {  
                NhaCungCap ncc = new NhaCungCap( 
                    rs.getInt("id"),
                    rs.getString("ten_nha_cung_cap"),
                    rs.getString("ten_lien_he"),
                    rs.getString("so_dien_thoai"),
                    rs.getString("dia_chi"),
                    rs.getString("email"),
                    rs.getString("website"),
                    rs.getDate("ngay_tao")
                );
                lst.add(ncc);
            }
        } catch(Exception ex) {
            
        }
        return lst;
    }

    @Override
    public boolean create(NhaCungCap sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public NhaCungCap find(int Id) {
        NhaCungCap ncc = null;
        String sql = "SELECT * FROM NhaCungCap WHERE id = ?";
        PreparedStatement stmt;
        try {
            stmt = this.conn.prepareStatement(sql);
            stmt.setInt(1, Id);
            ResultSet resultSet = stmt.executeQuery();
         
            if (resultSet.next()) {
                String TenNCC = resultSet.getString("ten_nha_cung_cap"); 
                String TenLienHe = resultSet.getString("ten_lien_he"); 
                String SoDienThoai = resultSet.getString("so_dien_thoai");
                String DiaChi = resultSet.getString("dia_chi");
                String Email = resultSet.getString("email");
                String Website = resultSet.getString("website"); 
                Date NgayTao = resultSet.getDate("ngay_tao");

                ncc = new NhaCungCap(Id, TenNCC, TenLienHe, SoDienThoai, DiaChi, Email, Website, NgayTao); 
           }

            resultSet.close();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(NhaCungCapDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return ncc;
    }

    @Override
    public boolean update(NhaCungCap sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
