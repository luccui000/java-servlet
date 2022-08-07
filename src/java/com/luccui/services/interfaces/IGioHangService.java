package com.luccui.services.interfaces;

import com.luccui.entities.Item;

public interface IGioHangService {
    public void them(Integer Id, Integer amount); 
    public boolean xoa(Integer Id);
}
