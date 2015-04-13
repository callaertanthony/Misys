package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Brand;
import com.rizomm.misys.model.Product;

import java.util.Optional;
import java.util.Set;

/**
 * Created by Guillaume on 13/04/2015.
 *
 * Purpose: This service allow you to interact with your stored data.
 * You can use this service to request into your products stored into the database.
 */
public interface ProductService {
    Set<Product> getFirst10ByBrand(Brand brand);

    Optional<Product> getOneById(int id);

    Set<Product> getAllProducts();
}
