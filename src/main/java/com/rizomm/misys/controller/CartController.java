package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.form.CartProductForm;
import com.rizomm.misys.service.CartService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;

/**
 * Created by anthonycallaert on 12/04/15.
 */
@Controller
public class CartController {
    private static final Logger LOGGER = LoggerFactory.getLogger(CartController.class);
    private final CartService cartService;

    @Autowired
    public CartController(CartService cartService) {
        this.cartService = cartService;
    }

    //TODO : add a response body for json result
    @RequestMapping(value = "/add-to-cart", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public String addToCart(@RequestBody CartProductForm cartProductForm){
        LOGGER.debug("Getting ajax request for adding product to cart {} = ", cartProductForm);
        cartService.addProductByForm(cartProductForm);
        LOGGER.debug("End to adding product to cart");
        return "redirect:/product/detail/" + cartProductForm.getProductId();
    }

    @RequestMapping(value="/shop/cart", method = RequestMethod.GET)
    public ModelAndView getCartPage() {
        ModelAndView modelAndView = new ModelAndView("shop/cart");
        Collection<Product> products = cartService.getProducts();
        modelAndView.addObject("products", products);
        return modelAndView;
    }
}
