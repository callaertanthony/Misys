package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.Cart;
import com.rizomm.misys.model.order.form.CartProductForm;
import com.rizomm.misys.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

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

    /**
     * Method to add a product with quantity to the session cart.
     * The product quantity is a sum, not an override.
     *
     * @param cartProductForm
     * @return Cart in session
     */
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

    /**
     * Method to add a product by quantity to the cart session.
     * The product quantity is an override.
     *
     * @param cartProductForm
     * @return Cart in session
     */
    @Override
    public Cart addProductWithQuantityByForm(CartProductForm cartProductForm) {
        LOGGER.debug("Adding product to cart : productId = {}, quantity = {}.",
                cartProductForm.getProductId(), cartProductForm.getQuantity());
        Product product = productRepository.findOne(cartProductForm.getProductId());
        LOGGER.debug("Product found : {}", product);
        if(product != null){
            if(this.cart.containsProduct(product)){
                this.cart.removeProduct(product);
            }
            this.cart.addProductWithQuantity(product, cartProductForm.getQuantity());
        }
        return this.cart;
    }

    /**
     * This method retrieve the cart of the current user to fetch products from database and fetch them with quantities
     *
     * @return An HashMap with products as keys and quantities as values.
     */
    @Override
    public Map<Product, Integer> getProducts() {
        Map<Product, Integer> products = new HashMap<>();

        for(Integer productId : this.cart.getProducts().keySet()){
            products.put(productRepository.findOne(productId), this.cart.getProducts().get(productId));
        }
        return products;
    }

    /**
     * Method to remove all products in session cart
     * @param id
     */
    @Override
    public void removeProduct(int id) {
        Product product = productRepository.findOne(id);
        if(null != product)
            this.cart.removeProduct(product);
    }

    @Override
    public void removeAllProducts() {
        this.cart.removeAllProducts();
    }


}
