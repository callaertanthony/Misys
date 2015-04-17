package com.rizomm.misys.model.product.form;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "reference", "field.required", "Field required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "picture", "field.required", "Field required");

        validatePrice(errors, form);
    }

    private void validatePrice(Errors errors, ProductCreateForm form) {
        if (form.getPrice() <= 0) {
            errors.reject("price", "price.min");
        }
    }
}