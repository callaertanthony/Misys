package com.rizomm.misys.service;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.WishList;
import com.rizomm.misys.model.order.form.WishlistProductForm;
import com.rizomm.misys.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.HashSet;

/**
 * Created by anthonycallaert on 13/04/15.
 */
@Service
public class WishlistServiceImpl implements WishlistService {
    private static final Logger LOGGER = LoggerFactory.getLogger(WishlistServiceImpl.class);
    private final ProductRepository productRepository;
    private WishList wishList = new WishList();

    @Autowired
    public WishlistServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public WishList addProductByForm(WishlistProductForm wishlistProductForm) {
        LOGGER.debug("Adding product to wishlist : product id = {}.", wishlistProductForm.getProductId());
        Product product = productRepository.findOne(wishlistProductForm.getProductId());
        if(product != null){
            this.wishList.addProduct(product);
        }
        return this.wishList;
    }

    @Override
    public Collection<Product> getProducts() {
        Collection<Product> products = new HashSet<Product>();
        Product product;
        for(Integer productId : this.wishList.getProducts()){
            product = productRepository.findOne(productId);
            products.add(product);
        }
        return products;
    }

    @Override
    public void removeProduct(int id) {
        Product product = productRepository.findOne(id);
        if(null != product)
            this.wishList.removeProduct(product);
    }

    @Override
    public void removeAllProducts() {
        this.wishList.removeAllProducts();
    }
}
