package com.rizomm.misys.model.order.form;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by anthonycallaert on 13/04/15.
 */
public class WishlistProductFormValidator implements Validator {
    private static final Logger LOGGER = LoggerFactory.getLogger(WishlistProductFormValidator.class);

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(WishlistProductForm.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        LOGGER.debug("Validating product added to wishlist = {}", target);
    }
}
