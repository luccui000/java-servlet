package com.lucui.models;

import java.sql.Date;

  
public class SanPham extends AbstractModel {
    protected String MaSanPham;
    protected String HinhAnh;
    protected String TenSanPham;
    protected String MoTa;
    protected String MoTaChiTiet;
    protected int Gia;
    protected int GiaKM;
    protected int NhaCungCapId;
    protected int DanhMucId;
    protected DanhMuc Danhmuc;
    protected NhaCungCap NhaCungCap;
    protected int SoLuong; 
    protected int TrangThai;
    public SanPham(String MaSanPham, String TenSP, int DanhMucId, int NhaCungCapId, String HinhAnh, String MoTa, String MotaChiTiet, int GiaSP, int GiaKM, int SoLuong) 
    { 
        this.MaSanPham = MaSanPham;
        this.HinhAnh = HinhAnh;
        this.TenSanPham = TenSP;
        this.MoTa = MoTa;
        this.MoTaChiTiet = MotaChiTiet;
        this.Gia = GiaSP;
        this.GiaKM = GiaKM;
        this.DanhMucId = DanhMucId; 
        this.NhaCungCapId = NhaCungCapId;
        this.SoLuong = SoLuong;
        this.TrangThai = 1; 
    }
    public SanPham(int Id, String MaSanPham, DanhMuc Danhmuc, NhaCungCap NhaCungCap, String HinhAnh, String TenSanPham, String MoTa, String MoTaChiTiet, int Gia, int GiaKM, int SoLuong, Date NgayTao, int NguoiTao, int TrangThai) {
        this.Id = Id;
        this.MaSanPham = MaSanPham;
        this.HinhAnh = HinhAnh;
        this.TenSanPham = TenSanPham;
        this.MoTa = MoTa;
        this.MoTaChiTiet = MoTaChiTiet;
        this.Gia = Gia;
        this.GiaKM = GiaKM;
        this.Danhmuc = Danhmuc;
        this.NhaCungCap = NhaCungCap;
        this.SoLuong = SoLuong;
        this.TrangThai = TrangThai;
    }
 public SanPham(int Id, String MaSanPham, int DanhmucId, int NhaCungCapId, String HinhAnh, String TenSanPham, String MoTa, String MoTaChiTiet, int Gia, int GiaKM, int SoLuong, Date NgayTao, int NguoiTao, int TrangThai) {
        this.Id = Id;
        this.MaSanPham = MaSanPham;
        this.HinhAnh = HinhAnh;
        this.TenSanPham = TenSanPham;
        this.MoTa = MoTa;
        this.MoTaChiTiet = MoTaChiTiet;
        this.Gia = Gia;
        this.GiaKM = GiaKM;
        this.DanhMucId = DanhmucId;
        this.NhaCungCapId = NhaCungCapId;
        this.SoLuong = SoLuong;
        this.TrangThai = TrangThai;
    }
    public String getMaSanPham() {
        return MaSanPham;
    }

    public void setMaSanPham(String MaSanPham) {
        this.MaSanPham = MaSanPham;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public String getTenSanPham() {
        return TenSanPham;
    }

    public void setTenSanPham(String TenSanPham) {
        this.TenSanPham = TenSanPham;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String MoTa) {
        this.MoTa = MoTa;
    }

    public String getMoTaChiTiet() {
        return MoTaChiTiet;
    }

    public void setMoTaChiTiet(String MoTaChiTiet) {
        this.MoTaChiTiet = MoTaChiTiet;
    }

    public int getGia() {
        return Gia;
    }

    public void setGia(int Gia) {
        this.Gia = Gia;
    }

    public int getGiaKM() {
        return GiaKM;
    }

    public void setGiaKM(int GiaKM) {
        this.GiaKM = GiaKM;
    }

    public DanhMuc getDanhmuc() {
        return Danhmuc;
    }

    public void setDanhmuc(DanhMuc Danhmuc) {
        this.Danhmuc = Danhmuc;
    }

    public NhaCungCap getNhaCungCap() {
        return NhaCungCap;
    }

    public void setNhaCungCap(NhaCungCap NhaCungCap) {
        this.NhaCungCap = NhaCungCap;
    }
    
    public int getSoLuong() {
        return SoLuong;
    }

    public void setSoLuong(int SoLuong) {
        this.SoLuong = SoLuong;
    }

    public int getNhaCungCapId() {
        return NhaCungCapId;
    }

    public void setNhaCungCapId(int NhaCungCapId) {
        this.NhaCungCapId = NhaCungCapId;
    }

    public int getDanhMucId() {
        return DanhMucId;
    }

    public void setDanhMucId(int DanhMucId) {
        this.DanhMucId = DanhMucId;
    }

    public int getTrangThai() {
        return TrangThai;
    }

    public void setTrangThai(int TrangThai) {
        this.TrangThai = TrangThai;
    }
    
    @Override
    public String toString() {
        return "SanPham{" + "MaSanPham=" + MaSanPham + ", HinhAnh=" + HinhAnh + ", TenSanPham=" + TenSanPham + ", MoTa=" + MoTa + ", MoTaChiTiet=" + MoTaChiTiet + ", Gia=" + Gia + ", GiaKM=" + GiaKM + ", NhaCungCapId=" + NhaCungCapId + ", DanhMucId=" + DanhMucId + ", Danhmuc=" + Danhmuc + ", NhaCungCap=" + NhaCungCap + ", SoLuong=" + SoLuong + ", TrangThai=" + TrangThai + '}';
    }
}
