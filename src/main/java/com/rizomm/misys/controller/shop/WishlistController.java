package com.rizomm.misys.controller.shop;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by Guillaume on 13/04/2015.
 */
@Controller
public class WishlistController {
    @Autowired
    private ProductRepository _productRepository;

    /**
     * This controller is called when an user wants to see his cart.
     *
     * @return A Set<Product> of all the products stored into our user cart
     */
    @RequestMapping(value="/wishlist", method = RequestMethod.GET)
    public ModelAndView getWishlistPage() {
        ///TODO Implement wishlist (User <-> Products)
        ModelAndView modelAndView = new ModelAndView("shop/wishlist");
        Set<Product> cart = new HashSet<>();
        cart.add(_productRepository.getOne(1));
        cart.add(_productRepository.getOne(3));
        modelAndView.addObject("products", cart);
        return modelAndView;
    }
}
