package com.luccui.utils;
 
import java.text.NumberFormat;
import java.util.Locale;

public class CurrencyFormat {
    
    public static String VND(int value)  
    {
        Locale loc =  new Locale("vn","VN");
        NumberFormat nf = NumberFormat.getCurrencyInstance(loc);
        return nf.format(value);
    }
}
