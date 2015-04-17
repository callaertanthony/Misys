package com.rizomm.misys.model.product.form;

import com.rizomm.misys.service.product.BrandService;
import com.rizomm.misys.service.product.CategoryService;
import com.rizomm.misys.service.product.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created by Guillaume on 17/04/2015.
 */
@Component
public class ProductCreateFormValidator implements Validator {
    private static final Logger LOGGER = LoggerFactory.getLogger(ProductCreateFormValidator.class);
    private final ProductService productService;
    //private final BrandService brandService;
    private final CategoryService categoryService;

    @Autowired
    public ProductCreateFormValidator(ProductService productService,/* BrandService brandService,*/ CategoryService categoryService) {
        this.productService = productService;
        //this.brandService = brandService;
        this.categoryService = categoryService;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(ProductCreateForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        LOGGER.debug("Validating {}", o);
        ProductCreateForm form = (ProductCreateForm) o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "field.required", "Field required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "field.required", "Field required");
        ValidationUtils.rejectIfEmpty(errors, "price", "field.required", "Field required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "reference", "field.required", "Field required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "picture", "field.required", "Field required");

        validatePrice(errors, form);
        //validateBrand(errors, form);
        //validateCategory(errors, form);
    }
    private void validatePrice(Errors errors, ProductCreateForm form) {
        if(form.getPrice() <= 0){
            errors.reject("price", "price.min");
        }
    }

    /*private void validateBrand(Errors errors, ProductCreateForm form) {
        if(brandService.getById(form.getBrand().getId())){
            errors.reject("brand", "brand doesn't exist");
        }
    }

    private void validateCategory(Errors errors, ProductCreateForm form) {
        if(form.getPrice() <= 0){
            errors.reject("category", "category doesn't exist");
        }
    }*/
}
