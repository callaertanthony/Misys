package com.rizomm.misys.controller.shop;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

/**
 * Created by Guillaume on 12/04/2015.
 */

@Controller
@RequestMapping("/shop")
public class PurchaseController {

    @Autowired
    private ProductRepository _productRepository;

    /**
     * This controller is called when an user wants to see his cart.
     *
     * @return A Set<Product> of all the products stored into our user cart
     */
    @RequestMapping(value="/cart", method = RequestMethod.GET)
    public ModelAndView showCart() {
        ///TODO Implement cart (User <-> Products)
        ModelAndView modelAndView = new ModelAndView("shop/cart");
        Set<Product> cart = new HashSet<>();
        cart.add(_productRepository.getOne(1));
        cart.add(_productRepository.getOne(3));
        modelAndView.addObject("products",cart);
        return modelAndView;
    }
}
