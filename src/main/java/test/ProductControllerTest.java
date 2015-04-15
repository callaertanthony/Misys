package test;

import com.rizomm.misys.controller.ProductController;

import org.junit.Test;


/**
 * Created by Guillaume on 3/12/2015.
 */

public class ProductControllerTest {

    @Test(expected = NullPointerException.class)
    public void testNotExistingProductDetail(){
        ProductController tester = new ProductController();
        tester.detailProduct(-1);
    }
}
