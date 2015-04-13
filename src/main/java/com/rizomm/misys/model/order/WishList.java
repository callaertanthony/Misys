package com.rizomm.misys.model.order;

import com.rizomm.misys.model.Product;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by anthonycallaert on 13/04/15.
 */
@Component
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class WishList {
    private Set<Integer> products = new HashSet<Integer>();

    public Set<Integer> getProducts() {
        return products;
    }

    public void setProductsId(Set<Integer> productsId) {
        this.products = productsId;
    }

    /**
     * Method to add a product to the products (id) set
     *
     * @param product a product to add
     */
    public void addProduct(Product product){
        this.products.add(product.getId());
    }

    public void removeProduct(Product product){
        this.products.remove(product.getId());
    }
}
