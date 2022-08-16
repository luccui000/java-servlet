package com.lucui.models;
 
import com.luccui.dao.impl.SanPhamDAOImpl;
import com.luccui.dao.interfaces.ISanPhamDAO;
import com.luccui.entities.Item; 
import com.luccui.services.interfaces.IGioHangService;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpSession;

public class GioHang implements IGioHangService { 
    private Map<Integer, Item> items = null;
    private ISanPhamDAO sanphamDAO;
    
    public GioHang()
    {
        sanphamDAO = new SanPhamDAOImpl();
    }
    public void them(Integer Id, Integer amount) {
        if(amount == null)
            amount = 1;
        if(this.items == null)
            this.items = new HashMap<Integer, Item>();
         
        if(this.items.containsKey(Id)) {
            int soluong = this.items.get(Id).getSoLuong();
            this.items.get(Id).setSoLuong(soluong + amount); 
        }
        SanPham sp = sanphamDAO.find(Id);
        if(sp == null)
            return;
        this.items.put(Id, new Item(sp, amount));
    } 
    public boolean xoa(Integer Id) 
    {
        if(!this.items.containsKey(Id))
            return false;
        this.items.remove(Id);
        if(this.items.size() == 0)
            this.items = null;
        return true;
    }  

    public int getTotal()
    {
        int total = 0;
        for(Item item : this.items.values()) {
            total += item.getSanPham().GiaKM * item.getSoLuong();
        }
        return total;
    }
    public Map<Integer, Item> getItems() {
        return items;
    }

    public void setItems(Map<Integer, Item> items) {
        this.items = items;
    } 
}
