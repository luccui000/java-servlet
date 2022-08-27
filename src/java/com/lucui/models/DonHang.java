package com.lucui.models;

import java.sql.Date;

 
public class DonHang extends AbstractModel { 
    public static final String THANH_TOAN_KHI_NHAN_HANG = "Thanh toán khi nhận hàng";
    public static final String THANH_TOAN_ONLINE = "Thanh toán online";
    
    public String MaDonHang;
    public int NguoiDat;
    public String HoTen;
    public int PhiGiaoHang;
    public String DiaChi;
    public String SoDienThoai;
    public int ThanhTien;
    public int TongTien;
    public String PhuongThucThanhToan;
    public String GhiChu;
    public int TrangThai;
    public Date NgayDat;
    public String MaXa;
    
    public DonHang() {} 
    
    public DonHang(String HoTen, int PhiGiaoHang, String DiaChi, String SoDienThoai, int ThanhTien, int TongTien, String PhuongThucThanhToan, String GhiChu) {
        this.HoTen = HoTen;
        this.PhiGiaoHang = PhiGiaoHang;
        this.DiaChi = DiaChi;
        this.SoDienThoai = SoDienThoai;
        this.ThanhTien = ThanhTien;
        this.TongTien = TongTien;
        this.PhuongThucThanhToan = PhuongThucThanhToan;
        this.GhiChu = GhiChu;
    } 
    
    public DonHang(int Id, String MaDonHang, int NguoiDat, String HoTen, int PhiGiaoHang, String DiaChi, String SoDienThoai, int ThanhTien, int TongTien, String PhuongThucThanhToan, String GhiChu, int TrangThai, Date NgayDat) {
        this.Id = Id;
        this.MaDonHang = MaDonHang;
        this.NguoiDat = NguoiDat;
        this.HoTen = HoTen;
        this.PhiGiaoHang = PhiGiaoHang;
        this.DiaChi = DiaChi;
        this.SoDienThoai = SoDienThoai;
        this.ThanhTien = ThanhTien;
        this.TongTien = TongTien;
        this.PhuongThucThanhToan = PhuongThucThanhToan;
        this.GhiChu = GhiChu;
        this.TrangThai = TrangThai;
        this.NgayDat = NgayDat;
    }  

    public String getMaDonHang() {
        return MaDonHang;
    }

    public void setMaDonHang(String MaDonHang) {
        this.MaDonHang = MaDonHang;
    }

    public int getNguoiDat() {
        return NguoiDat;
    }

    public void setNguoiDat(int NguoiDat) {
        this.NguoiDat = NguoiDat;
    }

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public int getPhiGiaoHang() {
        return PhiGiaoHang;
    }

    public void setPhiGiaoHang(int PhiGiaoHang) {
        this.PhiGiaoHang = PhiGiaoHang;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    public int getThanhTien() {
        return ThanhTien;
    }

    public void setThanhTien(int ThanhTien) {
        this.ThanhTien = ThanhTien;
    }

    public int getTongTien() {
        return TongTien;
    }

    public void setTongTien(int TongTien) {
        this.TongTien = TongTien;
    }

    public String getPhuongThucThanhToan() {
        return PhuongThucThanhToan;
    }

    public void setPhuongThucThanhToan(String PhuongThucThanhToan) {
        this.PhuongThucThanhToan = PhuongThucThanhToan;
    }

    public String getGhiChu() {
        return GhiChu;
    }

    public void setGhiChu(String GhiChu) {
        this.GhiChu = GhiChu;
    }

    public int getTrangThai() {
        return TrangThai;
    }

    public void setTrangThai(int TrangThai) {
        this.TrangThai = TrangThai;
    }

    public Date getNgayDat() {
        return NgayDat;
    }

    public void setNgayDat(Date NgayDat) {
        this.NgayDat = NgayDat;
    }

    public String getMaXa() {
        return MaXa;
    }

    public void setMaXa(String MaXa) {
        this.MaXa = MaXa;
    }
    
}
