package com.rizomm.misys.repository;

import com.rizomm.misys.model.Brand;
import com.rizomm.misys.model.Category;
import com.rizomm.misys.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Set;

/**
 * Created by Guillaume on 3/12/2015.
 */

public interface ProductRepository extends JpaRepository<Product, Integer> {
    Set<Product> findFirst10ByBrand(Brand brand);

    Set<Product> findByNameContaining(String name);

    Set<Product> findByReferenceContaining(String reference);

    Set<Product> findByDescriptionContaining(String description);

    Set<Product> findByPictureContaining(String category);
}
