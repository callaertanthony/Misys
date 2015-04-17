package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.account.User;
import com.rizomm.misys.model.order.RegisteredOrder;
import com.rizomm.misys.model.order.SessionOrder;
import com.rizomm.misys.model.order.form.AddressForm;
import com.rizomm.misys.repository.OrderRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

/**
 * Created by anthonycallaert on 17/04/15.
 */
@Service
public class OrderServiceImpl implements OrderService {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderServiceImpl.class);
    private SessionOrder sessionOrder = new SessionOrder();
    private final OrderRepository orderRepository;

    @Autowired
    public OrderServiceImpl(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    @Override
    public SessionOrder setProducts(HashMap<Product, Integer> products) {
        LOGGER.debug("Setting products in session.");
        this.sessionOrder.setProductsQuantity(products);
        return this.sessionOrder;
    }

    @Override
    public SessionOrder setAddressByForm(AddressForm addressForm) {
        LOGGER.debug("Setting address with form = {}", addressForm);
        this.sessionOrder.setCity(addressForm.getCity());
        this.sessionOrder.setCountry(addressForm.getCountry());
        this.sessionOrder.setFirstName(addressForm.getFirstName());
        this.sessionOrder.setLastName(addressForm.getLastName());
        this.sessionOrder.setStreet(addressForm.getStreet());
        this.sessionOrder.setZipcode(addressForm.getZipcode());

        return this.sessionOrder;
    }

    @Override
    public RegisteredOrder save(User user) {
        RegisteredOrder registeredOrder = new RegisteredOrder();
        registeredOrder.setCreator(user);
        registeredOrder.setProductsQuantity(this.sessionOrder.getProductsQuantity());
        registeredOrder.setCity(this.sessionOrder.getCity());
        registeredOrder.setCountry(this.sessionOrder.getCountry());
        registeredOrder.setFirstName(this.sessionOrder.getFirstName());
        registeredOrder.setLastName(this.sessionOrder.getLastName());
        registeredOrder.setStreet(this.sessionOrder.getStreet());
        registeredOrder.setZipcode(this.sessionOrder.getZipcode());

        float price = 0;
        for(Map.Entry<Product, Integer> entry : this.sessionOrder.getProductsQuantity().entrySet()){
            price += entry.getKey().getPrice() * entry.getValue();
        }
        registeredOrder.setPrice(price);
        return orderRepository.save(registeredOrder);
    }

    @Override
    public Optional<RegisteredOrder> getRegisteredOrderById(Integer id) {

        return Optional.ofNullable(orderRepository.findOne(id));
    }

}
