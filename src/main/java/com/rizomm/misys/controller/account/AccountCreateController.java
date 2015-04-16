package com.rizomm.misys.controller.account;

import com.rizomm.misys.model.account.form.AccountCreateForm;
import com.rizomm.misys.model.account.form.AccountCreateFormValidator;
import com.rizomm.misys.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * Created by anthonycallaert on 26/03/15.
 */
@Controller
@RequestMapping("/account")
public class AccountCreateController {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountCreateController.class);
    private final UserService userService;
    private final AccountCreateFormValidator accountCreateFormValidator;

    @Autowired
    public AccountCreateController(UserService userService, AccountCreateFormValidator accountCreateFormValidator) {
        this.userService = userService;
        this.accountCreateFormValidator = accountCreateFormValidator;
    }

    @InitBinder("form")
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
        binder.addValidators(accountCreateFormValidator);
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    @PreAuthorize("isAnonymous()")
    public ModelAndView getCreateAccountForAnonymousPage(){
        LOGGER.debug("Getting account create form");
        return new ModelAndView("/account/create", "form", new AccountCreateForm());
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @PreAuthorize("isAnonymous()")
    public String handleCreateAccountForm(@Valid @ModelAttribute("form") AccountCreateForm form, BindingResult bindingResult){
        LOGGER.debug("Processing account create form={}, bindingResult={}", form, bindingResult);
        if(bindingResult.hasErrors()){
            return "account/create";
        }
        try{
            userService.createAccount(form);
        } catch(DataIntegrityViolationException e){
            LOGGER.warn("Exception occurred when trying to save the user, assuming duplicate email", e);
            bindingResult.reject("email.exists", "Email already exists");
            return "account/create";
        }

        //TODO redirect to success account created page
        return "redirect:/";
    }
}
