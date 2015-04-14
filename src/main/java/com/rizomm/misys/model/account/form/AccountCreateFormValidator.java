package com.rizomm.misys.model.account.form;

import com.rizomm.misys.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by anthonycallaert on 27/03/15.
 */
@Component
public class AccountCreateFormValidator implements Validator {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountCreateFormValidator.class);
    private final UserService userService;

    @Autowired
    public AccountCreateFormValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(AccountCreateForm.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        LOGGER.debug("Validating {}", o);
        AccountCreateForm form = (AccountCreateForm) o;
        validatePasswords(errors, form);
        validateEmail(errors, form);
    }

    private void validatePasswords(Errors errors, AccountCreateForm form){
        if(!form.getPassword().equals(form.getPasswordRepeated())){
            errors.reject("password.no_match", "Password don't match");
        }
    }

    private void validateEmail(Errors errors, AccountCreateForm form){
        if(userService.getUserByEmail(form.getEmail()).isPresent()){
            errors.reject("email.exists", "User with this email already exists");
        }
    }
}
