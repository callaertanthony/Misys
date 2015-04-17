package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.Cart;
import com.rizomm.misys.model.order.form.CartProductForm;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by anthonycallaert on 12/04/15.
 */
public interface CartService {

    Cart addProductByForm(CartProductForm cartProductForm);

    Map<Product, Integer> getProducts();

    void removeProduct(int id);

    void removeAllProducts();

    Cart addProductWithQuantityByForm(CartProductForm cartProductForm);
}
