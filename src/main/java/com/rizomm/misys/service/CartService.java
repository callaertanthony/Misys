package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.Cart;
import com.rizomm.misys.model.order.form.CartProductForm;

import java.util.Collection;

/**
 * Created by anthonycallaert on 12/04/15.
 */
public interface CartService {

    Cart addProductByForm(CartProductForm cartProductForm);

    Collection<Product> getProducts();
}
