package com.rizomm.misys.common;

/**
 * Created by anthonycallaert on 21/03/15.
 */
public final class Constants {

    public static class Product{
        public static final String imagePath = "/assets/images/product-details/";
    }

    public static class Cart{
        public static final String COOKIE_NAME = "cart";

        /* cookie duration is set to seven days*/
        public static final int COOKIE_DURATION = 60*60*24*7;
    }
}
