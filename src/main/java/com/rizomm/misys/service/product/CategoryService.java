package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Category;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * Created by Guillaume on 13/04/2015.
 *
 * Purpose: This service allow you to interact with your stored data.
 * You can use this service to request into the categories data (stored into the category table into the database)
 */
@Service
public interface CategoryService {
    Optional<Category> getOneById(int id);

    List<Category> getAll();
}
