package com.rizomm.misys.model.order;

import com.rizomm.misys.model.Product;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.HashMap;

/**
 * Created by anthonycallaert on 12/04/15.
 */
@Component
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Cart implements Serializable{
    private HashMap<Integer, Integer> products = new HashMap<Integer, Integer>();
    private float price;

    public HashMap<Integer, Integer> getProducts() {
        return products;
    }

    public void setProducts(HashMap<Integer, Integer> products) {
        this.products = products;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    /**
     * Method to add a product to cart with a given quantity
     *
     * If the product is already in the cart, the quantity given is added,
     * else the product is added with the given quantity
     *
     * @param product a product to change or add
     * @param quantity quantity to add
     */
    public void addProductWithQuantity(Product product, Integer quantity){
        if(this.products.containsKey(product.getId())){
            this.products.put(product.getId(), this.products.get(product.getId()) + quantity);
        } else {
            this.products.put(product.getId(), quantity);
        }
    }

    /**
     * Method to remove a product from cart with a given quantity.
     *
     * If the substraction result is negativ or null, the product is removed from the cart.
     *
     * @param product a product to change or remove
     * @param quantity quantity to remove
     */
    public void removeProductWithQuantity(Product product, Integer quantity){
        if(this.products.containsKey(product.getId())){
            this.products.put(product.getId(), this.products.get(product.getId()) - quantity);
            if(this.products.get(product.getId()) <= 0){
                this.products.remove(product.getId());
            }
        }
    }

    /**
     * Method to remove a product from cart.
     *
     * @param product a product to remove
     */
    public void removeProduct(Product product){
        if(this.products.containsKey(product.getId())){
            this.products.remove(product.getId());
        }
    }

    /**
     * Method to remove all products from cart.
     */
    public void removeAllProducts(){
        this.products.clear();
    }


}
