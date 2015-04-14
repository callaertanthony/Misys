package com.rizomm.misys.controller.account;

import com.rizomm.misys.controller.core.CurrentUserControllerAdvice;
import com.rizomm.misys.model.account.User;
import com.rizomm.misys.model.security.CurrentUser;
import com.rizomm.misys.service.user.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.NoSuchElementException;

/**
 * Created by anthonycallaert on 30/03/15.
 */
@Controller
@RequestMapping("/account")
public class AccountViewController {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountViewController.class);
    private final UserService userService;

    @Autowired
    public AccountViewController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/view")
    public ModelAndView getUserPage(HttpServletRequest httpServletRequest){
        ModelAndView modelAndView = new ModelAndView("user/detail");
        return modelAndView;
    }
}
