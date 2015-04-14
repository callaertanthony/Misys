package com.rizomm.misys.controller.account;

import com.rizomm.misys.controller.core.CurrentUserControllerAdvice;
import com.rizomm.misys.model.account.User;
import com.rizomm.misys.model.account.form.AccountModifyForm;
import com.rizomm.misys.model.account.form.AccountModifyFormValidator;
import com.rizomm.misys.model.security.CurrentUser;
import com.rizomm.misys.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by anthonycallaert on 29/03/15.
 */
@Controller
@RequestMapping("/account")
public class AccountModifyController {
    private static final Logger LOGGER = LoggerFactory.getLogger(AccountModifyController.class);
    private final UserService userService;
    private final AccountModifyFormValidator accountModifyFormValidator;

    @Autowired
    public AccountModifyController(UserService userService, AccountModifyFormValidator accountModifyFormValidator) {
        this.userService = userService;
        this.accountModifyFormValidator = accountModifyFormValidator;
    }

    @InitBinder("form")
    public void initBinder(WebDataBinder binder){
        binder.addValidators(accountModifyFormValidator);
    }

    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public ModelAndView getAccountModifyPage(HttpServletRequest httpServletRequest){
        LOGGER.debug("Getting account modify page");
        Authentication auth = (Authentication) httpServletRequest.getUserPrincipal();
        CurrentUser currentUser = CurrentUserControllerAdvice.getCurrentUser(auth);
        User user = currentUser.getUser();
        return new ModelAndView("account/modify", "form", new AccountModifyForm(user.getEmail(), user.getFirstName(),
                                                                                user.getLastName(), user.getGender()));
    }

    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String handleAccountModifyForm(@Valid @ModelAttribute("form") AccountModifyForm form, BindingResult bindingResult,
                                          HttpServletRequest httpServletRequest){
        LOGGER.debug("Processing account modify form={}, bindingResult={}", form, bindingResult);
        //Todo : envoyer un warning si l'adresse rentree est vide
        if(bindingResult.hasErrors()){
            return "account/modify";
        }
        Authentication auth = (Authentication) httpServletRequest.getUserPrincipal();
        CurrentUser currentUser = CurrentUserControllerAdvice.getCurrentUser(auth);
        User user = currentUser.getUser();
        try{
            userService.modifyAccount(form, user);
        } catch(DataIntegrityViolationException e){
            LOGGER.warn("Exception occurred when trying to save the user", e);
            return "account/modify";
        }

        return "redirect:/account/view/"+user.getId();
    }
}
