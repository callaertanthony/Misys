package com.rizomm.misys.controller.core;

import com.rizomm.misys.model.security.CurrentUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class CurrentUserControllerAdvice {

    private static final Logger LOGGER = LoggerFactory.getLogger(CurrentUserControllerAdvice.class);

    private CurrentUserControllerAdvice() {
    }

    @ModelAttribute("currentUser")
    public static CurrentUser getCurrentUser(Authentication authentication) {
        LOGGER.debug("Getting Current User.");
        return (authentication == null) ? null : (CurrentUser) authentication.getPrincipal();
    }

}
