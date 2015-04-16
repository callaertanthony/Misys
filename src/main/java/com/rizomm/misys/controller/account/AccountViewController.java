package com.rizomm.misys.controller.account;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by anthonycallaert on 30/03/15.
 */
@Controller
@RequestMapping("/account")
public class AccountViewController {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountViewController.class);

    @RequestMapping("/view")
    @PreAuthorize("isAuthenticated()")
    public ModelAndView getUserPage(){
        LOGGER.debug("Getting account view page.");
        return new ModelAndView("account/view");
    }
}
