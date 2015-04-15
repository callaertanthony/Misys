package com.rizomm.misys.model;

import org.junit.Assert;
import org.junit.Test;

import static org.hamcrest.core.IsInstanceOf.instanceOf;
import static org.junit.Assert.*;

public class ProductTest {

    @Test
    public void testGetId() {
        Product product = new Product();
        Assert.assertThat(product.getId(), instanceOf(Integer.TYPE));
    }
}