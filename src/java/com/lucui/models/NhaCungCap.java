package com.lucui.models;

import java.sql.Date;

 
public class NhaCungCap extends AbstractModel {  
    public String TenLienHe;
    public String TenNhaCungCap;
    public String SoDienThoai;
    public String DiaChi;
    public String Email;
    public String Website;
    public Date NgayTao;

    public NhaCungCap(int Id, String TenNhaCungCap, String TenLienHe, String SoDienThoai, String DiaChi, String Email, String Website, Date NgayTao) {
        this.Id = Id; 
        this.TenLienHe = TenLienHe;
        this.TenNhaCungCap = TenNhaCungCap;
        this.SoDienThoai = SoDienThoai;
        this.DiaChi = DiaChi;
        this.Email = Email;
        this.Website = Website;
        this.NgayTao = NgayTao;
    }
 
    public String getTenNhaCungCap() {
        return TenNhaCungCap;
    }

    public void setTenNhaCungCap(String TenNhaCungCap) {
        this.TenNhaCungCap = TenNhaCungCap;
    }

    public String getTenLienHe() {
        return TenLienHe;
    }

    public void setTenLienHe(String TenLienHe) {
        this.TenLienHe = TenLienHe;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getWebsite() {
        return Website;
    }

    public void setWebsite(String Website) {
        this.Website = Website;
    }

    public Date getNgayTao() {
        return NgayTao;
    }

    public void setNgayTao(Date NgayTao) {
        this.NgayTao = NgayTao;
    }
}
