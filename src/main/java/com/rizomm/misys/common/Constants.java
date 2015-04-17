package com.rizomm.misys.common;

/**
 * Created by anthonycallaert on 21/03/15.
 */
public final class Constants {

    private Constants(){
        //nothing to do
    }

    public static class Product{
        public static final String IMAGE_PATH = "/assets/images/product-details/";

        private Product() {
        }
    }

    public static class Cart{
        public static final String COOKIE_NAME = "cart";

        /* cookie duration is set to seven days*/
        public static final int COOKIE_DURATION = 60*60*24*7;

        private Cart() {

        }
    }
}
