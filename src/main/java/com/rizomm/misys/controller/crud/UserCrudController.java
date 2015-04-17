package com.rizomm.misys.controller.crud;

import com.rizomm.misys.model.security.form.UserCrudCreateForm;
import com.rizomm.misys.model.security.form.UserCrudCreateFormValidator;
import com.rizomm.misys.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.NoSuchElementException;

/**
 * Created by anthonycallaert on 14/04/15.
 */
@Controller
@RequestMapping("/crud/user")
public class UserCrudController {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserCrudController.class);
    private final UserService userService;
    private final UserCrudCreateFormValidator userCrudCreateFormValidator;

    @Autowired
    public UserCrudController(UserService userService, UserCrudCreateFormValidator userCrudCreateFormValidator) {
        this.userService = userService;
        this.userCrudCreateFormValidator = userCrudCreateFormValidator;
    }

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(userCrudCreateFormValidator);
    }

    @PreAuthorize("@currentUserServiceImpl.canAccessUser(principal, #id)")
    @RequestMapping("/{id}")
    public ModelAndView getUserPage(@PathVariable Long id) {
        LOGGER.debug("Getting user page for user={}", id);
        return new ModelAndView("crud/user/detail", "user", userService.getUserById(id)
                .orElseThrow(() -> new NoSuchElementException(String.format("User=%s not found", id))));
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView getUserCreatePage() {
        LOGGER.debug("Getting user create form");
        ModelAndView modelAndView = new ModelAndView("crud/user/create");

        modelAndView.addObject("form", new UserCrudCreateForm());
        return modelAndView;
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView handleUserCreateForm(@Valid @ModelAttribute("form") UserCrudCreateForm form, BindingResult bindingResult) {
        LOGGER.debug("Processing user create form={}, bindingResult={}", form, bindingResult);
        ModelAndView modelAndView = new ModelAndView("crud/user/create");
        if (bindingResult.hasErrors()) {
            // failed validation
            return modelAndView;
        }
        try {
            userService.createUser(form);
        } catch (DataIntegrityViolationException e) {
            // probably email already exists - very rare case when multiple admins are adding same user
            // at the same time and form validation has passed for more than one of them.
            LOGGER.warn("Exception occurred when trying to save the user, assuming duplicate email", e);
            bindingResult.reject("email.exists", "Email already exists");
            return modelAndView;
        }
        // ok, redirect
        modelAndView.setViewName("redirect:/crud/user/list");
        return modelAndView;
    }

    @RequestMapping("/list")
    public ModelAndView getUsersPage() {
        LOGGER.debug("Getting users page");
        ModelAndView modelAndView = new ModelAndView("crud/user/list");
        modelAndView.addObject("users", userService.getAllUsers());
        return modelAndView;
    }
}
