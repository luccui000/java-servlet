package com.luccui.utils;
 
import javax.servlet.http.HttpServletRequest;

public class HttpUtils {
    public static String Url(HttpServletRequest request) {
        String scheme = request.getScheme() + "://";
        String serverName = request.getServerName();
        String serverPort = (request.getServerPort() == 80) ? "" : ":" + request.getServerPort();
        String contextPath = request.getContextPath();
        return scheme + serverName + serverPort + contextPath;
    }
    public static String baseUrl(HttpServletRequest request) {
        return HttpUtils.Url(request);
    }
    public static String prevUrl(HttpServletRequest request) {
         String prevUrl = request.getRequestURL().toString();
         return prevUrl;
    }
}
