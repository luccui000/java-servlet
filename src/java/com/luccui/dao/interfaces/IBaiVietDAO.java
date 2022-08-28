/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.luccui.dao.interfaces;

import com.lucui.models.BaiViet;
import java.util.List;

public interface IBaiVietDAO {
    List<BaiViet> all();
    boolean create(BaiViet sanpham);
    BaiViet find(int Id);
    boolean update(BaiViet sanpham);
    boolean delete(int Id);
}
