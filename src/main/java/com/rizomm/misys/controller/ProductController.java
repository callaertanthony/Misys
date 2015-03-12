package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
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
public class ProductController {

    @Autowired
    private ProductRepository _productRepository;

    @RequestMapping("/detail")
    public String showProductDetail() {
        return "product/detail";
    }


    @RequestMapping(value="/detail/{id}", method = RequestMethod.GET)
    public ModelAndView detailProduct(@PathVariable int id){
        System.out.println("#DEBUG - Asking for product: " + id);
        Product product = _productRepository.findOne(id);
        System.out.println(" -id: " + product.getId());
        System.out.println(" -name: " + product.getName());
        System.out.println(" -price: " + product.getPrice());
        return new ModelAndView("product/detail", "product", product);
    }

}