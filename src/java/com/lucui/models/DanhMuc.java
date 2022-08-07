package com.lucui.models;

import java.sql.Date;

 
public class DanhMuc extends AbstractModel {
    protected int Id;
    protected String TenDanhMuc;
    protected String HinhAnh;
    protected int ThuTu;
    protected int NoiBat;
    protected Date NgayTao;

    public DanhMuc(int Id, String TenDanhMuc, String HinhAnh, int ThuTu, int NoiBat, Date NgayTao) {
        this.Id = Id;
        this.TenDanhMuc = TenDanhMuc;
        this.HinhAnh = HinhAnh;
        this.ThuTu = ThuTu;
        this.NoiBat = NoiBat;
        this.NgayTao = NgayTao;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getTenDanhMuc() {
        return TenDanhMuc;
    }

    public void setTenDanhMuc(String TenDanhMuc) {
        this.TenDanhMuc = TenDanhMuc;
    }

    public String getHinhAnh() {
        return HinhAnh;
    }

    public void setHinhAnh(String HinhAnh) {
        this.HinhAnh = HinhAnh;
    }

    public int getThuTu() {
        return ThuTu;
    }

    public void setThuTu(int ThuTu) {
        this.ThuTu = ThuTu;
    }

    public int getNoiBat() {
        return NoiBat;
    }

    public void setNoiBat(int NoiBat) {
        this.NoiBat = NoiBat;
    }

    public Date getNgayTao() {
        return NgayTao;
    }

    public void setNgayTao(Date NgayTao) {
        this.NgayTao = NgayTao;
    }
}
