package com.rizomm.misys.controller;

import com.rizomm.misys.model.Category;
import com.rizomm.misys.model.Product;
import com.rizomm.misys.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

/**
 * Created by Guillaume on 17/04/2015.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {
    @Autowired
    private ProductService productService;

    @RequestMapping(value="/{cat}", method = RequestMethod.GET)
    public ModelAndView detailProduct(@PathVariable String cat) {
        try{
            List<Product> products = new ArrayList<>(productService.getAllByCategory(cat));
            ModelAndView mNv = new ModelAndView("category/detail");
            mNv.addObject("product", products);
            if (null == products)
                return new ModelAndView("404");
            return mNv;
        } catch (IllegalArgumentException e) {
            return new ModelAndView("404");
        }
    }
}
