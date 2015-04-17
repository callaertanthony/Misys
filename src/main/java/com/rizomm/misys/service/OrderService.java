package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.RegisteredOrder;
import com.rizomm.misys.model.order.SessionOrder;
import com.rizomm.misys.model.order.form.AddressForm;

import java.util.HashMap;
import java.util.Optional;

/**
 * Created by anthonycallaert on 17/04/15.
 */
public interface OrderService {
    SessionOrder setProducts(HashMap<Product, Integer> products);

    SessionOrder setAddressByForm(AddressForm addressForm);

    RegisteredOrder save();

    Optional<RegisteredOrder> getRegisteredOrderById(Integer id);
}
