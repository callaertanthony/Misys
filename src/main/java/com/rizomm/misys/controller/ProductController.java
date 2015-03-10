package com.rizomm.misys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Guillaume on 3/10/2015.
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    @RequestMapping("/detail")
    public String showProductDetail() {
        return "product/detail";
    }
}