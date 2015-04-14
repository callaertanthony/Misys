package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.WishList;
import com.rizomm.misys.model.order.form.WishlistProductForm;

import java.util.Collection;

/**
 * Created by anthonycallaert on 13/04/15.
 */
public interface WishlistService {
    WishList addProductByForm(WishlistProductForm wishlistProductForm);

    Collection<Product> getProducts();
}
