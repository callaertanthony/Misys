package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.service.product.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by Guillaume on 3/12/2015.
 */
@Controller
@RequestMapping(value="/", method = {RequestMethod.GET, RequestMethod.HEAD})
public class HomeController {

    private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private ProductService productService;


    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView showProductDetail() {
        try {
            Collection<Product> listProducts = new ArrayList<>();
            Iterable<Product> it = productService.getAllProducts();
            if (null == it)
                return new ModelAndView("404");
            for (Product product : it) {
                listProducts.add(product);
            }
            if (null == listProducts || listProducts.isEmpty())
                return new ModelAndView("404");
            return new ModelAndView("home", "products", listProducts);
        } catch (IllegalArgumentException e) {
            LOGGER.debug("Exception : {}", e);
            return new ModelAndView("404");
        }

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