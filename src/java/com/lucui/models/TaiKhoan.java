package com.lucui.models;
 
import java.sql.Date;
import java.time.LocalDate;

public class TaiKhoan extends AbstractModel {
    public String HoTen;
    public String SoDienThoai;
    public String Email;
    public String MatKhau;
    public Date NgayTao;
    public int Quyen;
    public String DiaChi;
    public int MaXa;
    
    public TaiKhoan() 
    {
    }

    public TaiKhoan(String HoTen, String SoDienThoai, String Email, String MatKhau) {
        this.HoTen = HoTen;
        this.SoDienThoai = SoDienThoai;
        this.Email = Email;
        this.MatKhau = MatKhau;
        this.NgayTao = Date.valueOf(LocalDate.now());
        this.Quyen = 0;
        this.DiaChi = "";
        this.MaXa = 0;
    } 
    
    public TaiKhoan(int Id, String HoTen, String SoDienThoai, String Email, String MatKhau, Date NgayTao, int Quyen, String DiaChi, int MaXa) {
        this.Id = Id;
        this.HoTen = HoTen;
        this.SoDienThoai = SoDienThoai;
        this.Email = Email;
        this.MatKhau = MatKhau;
        this.NgayTao = NgayTao;
        this.Quyen = Quyen;
        this.DiaChi = DiaChi;
        this.MaXa = MaXa;
    } 

    public String getHoTen() {
        return HoTen;
    }

    public void setHoTen(String HoTen) {
        this.HoTen = HoTen;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String SoDienThoai) {
        this.SoDienThoai = SoDienThoai;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMatKhau() {
        return MatKhau;
    }

    public void setMatKhau(String MatKhau) {
        this.MatKhau = MatKhau;
    }

    public Date getNgayTao() {
        return NgayTao;
    }

    public void setNgayTao(Date NgayTao) {
        this.NgayTao = NgayTao;
    }

    public int getQuyen() {
        return Quyen;
    }

    public void setQuyen(int Quyen) {
        this.Quyen = Quyen;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public int getMaXa() {
        return MaXa;
    }

    public void setMaXa(int MaXa) {
        this.MaXa = MaXa;
    }
    
}
