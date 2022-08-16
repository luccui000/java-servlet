package com.luccui.utils;

import java.security.SecureRandom;

 
public class Str {
    public static final String ALPHABETS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    public static SecureRandom rnd = new SecureRandom();

    public static String random(int length)
    {
        StringBuilder str = new StringBuilder(length);
        for(int i = 0; i < length; i++)
            str.append(ALPHABETS.charAt(rnd.nextInt(ALPHABETS.length())));
        return str.toString();
    }
}
