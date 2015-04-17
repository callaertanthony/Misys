package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Brand;
import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.Stock;
import com.rizomm.misys.model.product.form.ProductCreateForm;
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
    private final StockService stockService;
    @Autowired
    public ProductServiceImpl(ProductRepository productRepository, StockService stockService) {
        this.productRepository = productRepository;
        this.stockService = stockService;
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
        return new HashSet<>(productRepository.findAll());
    }

    @Override
    public Set<Product> getAllByNameContaining(String name) {
        return new HashSet<>(productRepository.findByNameContaining(name));
    }

    @Override
    public Set<Product> getAllByCategory(String category) {
        return new HashSet<>(productRepository.findByPictureContaining(category));
    }

    @Override
    public Set<Product> getAllByReferenceContaining(String reference) {
        return new HashSet<>(productRepository.findByReferenceContaining(reference));
    }

    @Override
    public Set<Product> getAllByDescriptionContaining(String description) {
        return new HashSet<>(productRepository.findByDescriptionContaining(description));
    }

    @Override
    public Product createProduct(ProductCreateForm form) {
        Product product = new Product();
        product.setName(form.getName());
        product.setReference(form.getReference());
        product.setDescription(form.getDescription());
        product.setPrice(form.getPrice());
        product.setPicture(form.getPicture());
        product.setBrand(form.getBrand());
        product.setCategory(form.getCategory());
        Stock stock = new Stock();
        stock.setQuantity(0);
        product.setStock(stockService.createStock(stock));

        return productRepository.save(product);
    }
}
