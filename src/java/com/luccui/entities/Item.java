package com.luccui.entities;
 
import com.lucui.models.SanPham;

public class Item {
    private SanPham sanPham;
    private int SoLuong;
    
    public Item() {}
    public Item(SanPham sanpham, int SoLuong) {
        this.sanPham = sanpham;
        this.SoLuong = SoLuong; 
    }
     
    public SanPham getSanPham() {
        return sanPham;
    }

    public void setSanPham(SanPham sanPham) {
        this.sanPham = sanPham;
    }

    public int getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    } 
}
