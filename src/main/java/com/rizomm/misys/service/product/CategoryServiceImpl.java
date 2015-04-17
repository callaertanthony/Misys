package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Category;
import com.rizomm.misys.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * Created by Guillaume on 13/04/2015.
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    //Link the service with the accurate repository
    private final CategoryRepository categoryRepository;
    @Autowired
    public CategoryServiceImpl(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    /**
     * Purpose:
     * This method will retrieve a category from database based on the id
     *
     * @param id The product id (int)
     * @return An optional containing the category if it was found. Otherwise, it returns an empty optional.
     */
    @Override
    public Optional<Category> getOneById(int id) {
        return Optional.ofNullable(categoryRepository.findOne(id));
    }
}
