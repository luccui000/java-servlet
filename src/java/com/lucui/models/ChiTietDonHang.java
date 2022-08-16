package com.lucui.models;
 
public class ChiTietDonHang extends AbstractModel {
    private int DonHangId;
    private int SanPhamId; 
    private int SoLuong;
    private int DonGia;
    private int ThanhTien;
    
    public ChiTietDonHang() {}
    
    public ChiTietDonHang(int DonHangId, int SanPhamId, int SoLuong, int DonGia, int ThanhTien) {
        this.DonHangId = DonHangId;
        this.SanPhamId = SanPhamId; 
        this.SoLuong = SoLuong;
        this.DonGia = DonGia;
        this.ThanhTien = ThanhTien;
    } 

    public int getDonHangId() {
        return DonHangId;
    }

    public void setDonHangId(int DonHangId) {
        this.DonHangId = DonHangId;
    }

    public int getSanPhamId() {
        return SanPhamId;
    }

    public void setSanPhamId(int SanPhamId) {
        this.SanPhamId = SanPhamId;
    } 

    public int getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }

    public int getDonGia() {
        return DonGia;
    }

    public void setDonGia(int DonGia) {
        this.DonGia = DonGia;
    }

    public int getThanhTien() { 
        this.calcThanhTien();
        return ThanhTien;
    }

    public void setThanhTien(int ThanhTien) {
        this.ThanhTien = ThanhTien;
    } 
    private void calcThanhTien()
    {
        this.ThanhTien = this.DonGia * this.SoLuong;
    }
}
