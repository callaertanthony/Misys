package com.rizomm.misys.service;

import com.rizomm.misys.model.order.Cart;
import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.form.CartProductForm;
import com.rizomm.misys.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.HashSet;

/**
 * Created by anthonycallaert on 12/04/15.
 */
@Service
public class CartServiceImpl implements CartService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CartServiceImpl.class);
    private Cart cart = new Cart();
    private final ProductRepository productRepository;

    @Autowired
    public CartServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public Cart addProductByForm(CartProductForm cartProductForm) {
        LOGGER.debug("Adding product to cart : productId = {}, quantity = {}.",
                cartProductForm.getProductId(), cartProductForm.getQuantity());
        Product product = productRepository.findOne(cartProductForm.getProductId());
        LOGGER.debug("Product found : {}", product);
        if(product != null){
            this.cart.addProductWithQuantity(product, cartProductForm.getQuantity());
        }
        return cart;
    }

    @Override
    public Collection<Product> getProducts() {
        Collection<Product> products = new HashSet<Product>();
        Product product;
        for(Integer productId : this.cart.getProducts().keySet()){
            //TODO change for a method to have a collection of products with a collection of id
            product = productRepository.findOne(productId);
            products.add(product);
        }
        return products;
    }
}
