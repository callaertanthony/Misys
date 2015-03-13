package com.rizomm.misys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Guillaume on 3/12/2015.
 */
@Controller
@RequestMapping("/")
public class HomeController {
    @RequestMapping(method= RequestMethod.GET)
    public String showProductDetail() {
        return "home";
    }

    /**
     * This method is called by the Application object when an HTTP "NOT FOUND" error is detected.
     * It can happens when user ask for an unknown page, so we just redirect him to the 404 error JSP
     *
     * @return 404 JSP
     */
    @RequestMapping("/404")
    public String notFound() {
        return "404";
    }

    /**
     *
     * @return error JSP
     */
    @RequestMapping("/error")
    public String error() {
        return "error";
    }
}