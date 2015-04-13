package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Brand;
import com.rizomm.misys.model.Product;
import com.rizomm.misys.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

/**
 * Created by Guillaume on 13/04/2015.
 */
@Service
public class ProductServiceImpl implements ProductService {

    //Link the service with the accurate repository
    private final ProductRepository productRepository;
    @Autowired
    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    /**
     * Purpose:
     * This method will the 10 first products based on the given Brand.
     *
     * @param brand The brand of the products
     * @return A set of 10 products
     */
    @Override
    public Set<Product> getFirst10ByBrand(Brand brand) {
        return productRepository.findFirst10ByBrand(brand);
    }

    /**
     * Purpose:
     * This method will retrieve a product from database based on the id
     *
     * @param id The product id (int)
     * @return An optional containing the product if it was found. Otherwise, it returns an empty optional.
     */
    @Override
    public Optional<Product> getOneById(int id) {
        return Optional.ofNullable(productRepository.findOne(id));
    }

    /**
     * Purpose:
     * This method will return all the products stored into the database.
     *  /!\ CAUTION: This method can only be used during the development and will be removed before the release!!!
     *
     * @return A set of all the products
     */
    @Override
    public Set<Product> getAllProducts() { ///TODO REMOVE FOR RELEASE
        Set<Product> products = new HashSet<>(productRepository.findAll());
        return products;
    }

    @Override
    public Set<Product> getAllByNameContaining(String name) {
        Set<Product> products = new HashSet<>(productRepository.findByNameContaining(name));
        return products;
    }

    @Override
    public Set<Product> getAllByReferenceContaining(String reference) {
        Set<Product> products = new HashSet<>(productRepository.findByReferenceContaining(reference));
        return products;
    }

    @Override
    public Set<Product> getAllByDescriptionContaining(String description) {
        Set<Product> products = new HashSet<>(productRepository.findByDescriptionContaining(description));
        return products;
    }
}
