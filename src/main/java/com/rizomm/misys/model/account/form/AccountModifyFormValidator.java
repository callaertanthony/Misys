package com.rizomm.misys.model.account.form;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by anthonycallaert on 29/03/15.
 */
@Component
public class AccountModifyFormValidator implements Validator {
    private static final Logger LOGGER = LoggerFactory.getLogger(AccountModifyFormValidator.class);

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(AccountModifyForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        LOGGER.debug("Validating {}", o);
        AccountModifyForm form = (AccountModifyForm) o;
    }
}
