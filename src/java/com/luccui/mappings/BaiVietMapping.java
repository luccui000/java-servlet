/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luccui.mappings;

import com.lucui.models.BaiViet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BaiVietMapping implements IMapping { 
    @Override
    public BaiViet mapping(ResultSet res) {
        BaiViet bv = new BaiViet();
        try {
            bv.setId(res.getInt("id"));
            bv.setDanhMucId(res.getInt("danhmuc_id")); 
            bv.setHinhAnh(res.getString("hinh_anh"));
            bv.setTieuDe(res.getString("tieu_de"));
            bv.setNoiDung(res.getString("noi_dung"));
            bv.setNgayTao(res.getDate("ngay_tao"));
            bv.setNgayCapNhat(res.getDate("ngay_cap_nhat"));
        } catch (SQLException ex) {
            Logger.getLogger(BaiVietMapping.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return bv;
    } 
}
