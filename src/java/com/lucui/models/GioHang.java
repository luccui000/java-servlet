package com.lucui.models;
 
import com.luccui.entities.Item; 
import com.luccui.services.interfaces.IGioHangService;
import java.util.HashMap;
import java.util.Map;

public class GioHang implements IGioHangService { 
    private Map<Integer, Integer> items = null;
    
    public void them(Integer Id, Integer amount) {
        if(amount == null)
            amount = 1;
        if(this.items == null)
            this.items = new HashMap<Integer, Integer>();
        if(this.items.containsKey(Id)) {
            int SoLuong = this.items.get(Id) + amount; 
        } else {
            this.items.put(Id, amount);
        } 
    } 
    public boolean xoa(Integer Id) 
    {
        if(!this.items.containsKey(Id))
            return false;
        this.items.remove(Id);
        return true;
    }
    public void writeCookie(Map<Integer, Item> mp)
    {
        
    }
}
