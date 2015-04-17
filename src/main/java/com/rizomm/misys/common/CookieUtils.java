package com.rizomm.misys.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by anthonycallaert on 13/04/15.
 */
public class CookieUtils {

    public static Cookie getCookieByName(HttpServletRequest httpRequest, String cookieName) {
        Cookie[] cookies = httpRequest.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookieName.equalsIgnoreCase(cookie.getName())) {
                    return cookie;
                }
            }
        }

        return null;
    }

    public static void addCookie(HttpServletResponse response, String name, String value, int expiry) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(expiry);
        cookie.setSecure(true);
        response.addCookie(cookie);
    }

    public static void deleteCookie(HttpServletRequest request, HttpServletResponse response, String name) {
        Cookie cookie = getCookieByName(request, name);
        if( cookie != null){
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
}
