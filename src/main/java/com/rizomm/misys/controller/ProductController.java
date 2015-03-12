package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Guillaume on 3/10/2015.
 */
@Controller
@RequestMapping("/product")
public class ProductController implements ErrorController {

    @Autowired
    private ProductRepository _productRepository;

    @RequestMapping(value="/detail/{id}", method = RequestMethod.GET)
    public ModelAndView detailProduct(@PathVariable int id){
        Product product = _productRepository.findOne(id);
        return new ModelAndView("product/detail", "product", product);
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}