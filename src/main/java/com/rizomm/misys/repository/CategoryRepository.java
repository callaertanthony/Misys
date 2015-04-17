package com.rizomm.misys.repository;

import com.rizomm.misys.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Franck on 22/03/2015.
 */
public interface CategoryRepository extends JpaRepository<Category, Integer> {
}
