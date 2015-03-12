package com.rizomm.misys.model;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Guillaume on 3/12/2015.
 */

@Transactional
public interface ProductRepository extends CrudRepository<Product, Long> {

}
