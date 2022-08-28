/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luccui.dao.impl;

import com.luccui.dao.interfaces.IBaiVietDAO;
import com.luccui.mappings.BaiVietMapping;
import com.lucui.models.BaiViet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
 
public class BaiVietDAOImpl extends AbstractDAO implements IBaiVietDAO {

    @Override
    public List<BaiViet> all() {
        List<BaiViet> lst = new ArrayList<BaiViet>();
        String query = "SELECT * FROM baiviet";
      
        try {
            Statement stmt = this.conn.createStatement();
            ResultSet rs;   
            rs = stmt.executeQuery(query);
            while(rs.next()) {
                lst.add((new BaiVietMapping()).mapping(rs));
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaiVietDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lst;
    }

    @Override
    public boolean create(BaiViet sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public BaiViet find(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(BaiViet sanpham) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int Id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
