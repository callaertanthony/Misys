package com.rizomm.misys.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Guillaume on 3/12/2015.
 */

public interface ProductRepository extends JpaRepository<Product, Integer> {
    List<Product> findFirst10ByBrand(Brand brand);
}
