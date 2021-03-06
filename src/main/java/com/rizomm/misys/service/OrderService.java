package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.account.User;
import com.rizomm.misys.model.order.RegisteredOrder;
import com.rizomm.misys.model.order.SessionOrder;
import com.rizomm.misys.model.order.form.AddressForm;

import java.util.Map;
import java.util.Optional;

/**
 * Created by anthonycallaert on 17/04/15.
 */
public interface OrderService {
    SessionOrder setProducts(Map<Product, Integer> products);

    SessionOrder setAddressByForm(AddressForm addressForm);

    RegisteredOrder save(User user);

    Optional<RegisteredOrder> getRegisteredOrderById(Integer id);
}
