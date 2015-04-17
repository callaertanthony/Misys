package com.rizomm.misys.model.order.form;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by anthonycallaert on 17/04/15.
 */
@Component
public class AddressFormValidator implements Validator {
    private static final Logger LOGGER = LoggerFactory.getLogger(AddressFormValidator.class);

    @Override
    public boolean supports(Class<?> clazz) {
        return clazz.equals(AddressForm.class);
    }

    @Override
    public void validate(Object target, Errors errors) {
        LOGGER.debug("Validating address = {}", target);
    }
}
