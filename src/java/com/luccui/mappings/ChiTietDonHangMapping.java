package com.luccui.mappings;

import com.luccui.dao.impl.SanPhamDAOImpl;
import com.luccui.dao.interfaces.ISanPhamDAO;
import com.lucui.models.ChiTietDonHang;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ChiTietDonHangMapping implements IMapping {
    private ISanPhamDAO sanphamDAO;
    public ChiTietDonHangMapping()
    {
        sanphamDAO = new SanPhamDAOImpl();
    }
    @Override
    public ChiTietDonHang mapping(ResultSet res) {
        ChiTietDonHang ctdh = new ChiTietDonHang();
        try {
            ctdh.setDonHangId(res.getInt("donhang_id"));
            ctdh.setSanPhamId(res.getInt("sanpham_id"));
            ctdh.setDonGia(res.getInt("don_gia"));
            ctdh.setSoLuong(res.getInt("so_luong"));
            ctdh.setThanhTien(res.getInt("thanh_tien"));
            ctdh.setTenSanPham(
                sanphamDAO.find(
                    res.getInt("sanpham_id")
                ).getTenSanPham()
            );
        } catch (SQLException ex) {
            Logger.getLogger(ChiTietDonHangMapping.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ctdh;
    }
    
}
