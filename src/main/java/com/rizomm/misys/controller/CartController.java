package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.form.AddressForm;
import com.rizomm.misys.model.order.form.CartProductForm;
import com.rizomm.misys.service.CartService;
import com.rizomm.misys.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

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
        LOGGER.debug("Getting ajax request for adding product to cart = {}", cartProductForm);
        cartService.addProductByForm(cartProductForm);
        LOGGER.debug("End to adding product to cart");
        return "redirect:/product/detail/" + cartProductForm.getProductId();
    }

    @RequestMapping(value="/shop/cart", method = RequestMethod.GET)
    public ModelAndView getCartPage(){
        ModelAndView modelAndView = new ModelAndView("shop/cart");
        Map<Product, Integer> products = cartService.getProducts();
        modelAndView.addObject("products", products);
        return modelAndView;
    }

    @RequestMapping(value = "/remove-from-cart", method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView removeFromCart(@RequestBody CartProductForm cartProductForm){
        LOGGER.debug("Getting ajax request for removing product from cart = {}", cartProductForm);
        cartService.removeProduct(cartProductForm.getProductId());
        LOGGER.debug("End to removing product from cart");
        ModelAndView mvn = new ModelAndView("shop/cartContent");
        Map<Product, Integer> products = cartService.getProducts();
        mvn.addObject("products", products);
        return mvn;
    }

    @RequestMapping(value = "/remove-all-from-cart", method = RequestMethod.POST)
    public ModelAndView removeAllFromCart(){
        LOGGER.debug("Getting ajax request for removing all products from cart.");
        cartService.removeAllProducts();
        LOGGER.debug("End to removing all products from cart");
        ModelAndView mvn = new ModelAndView("shop/cartContent");
        Map<Product, Integer> products = cartService.getProducts();
        mvn.addObject("products", products);
        return mvn;
    }

    @RequestMapping(value = "/update-product", method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView handleUpdateProduct(@RequestBody CartProductForm cartProductForm){
        LOGGER.debug("Getting ajax request for updating product from cart = {}", cartProductForm);
        cartService.addProductWithQuantityByForm(cartProductForm);
        LOGGER.debug("End to updating product in cart");
        ModelAndView mvn = new ModelAndView("shop/cartContent");
        Map<Product, Integer> products = cartService.getProducts();
        mvn.addObject("products", products);
        return mvn;
    }
}
