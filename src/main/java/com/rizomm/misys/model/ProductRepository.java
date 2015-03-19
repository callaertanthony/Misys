package com.rizomm.misys.model;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Guillaume on 3/12/2015.
 */

@Transactional
public interface ProductRepository extends CrudRepository<Product, Integer> {
    List<Product> findByBrand(Brand brand);
}
