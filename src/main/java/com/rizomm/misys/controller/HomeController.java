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

    @RequestMapping("/404")
    public String notFound() {
        return "404";
    }
}