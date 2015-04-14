package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.form.WishlistProductForm;
import com.rizomm.misys.service.WishlistService;
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
 * Created by anthonycallaert on 13/04/15.
 */
@Controller
public class WishlistController {
    private static final Logger LOGGER = LoggerFactory.getLogger(WishlistController.class);
    private final WishlistService wishlistService;

    @Autowired
    public WishlistController(WishlistService wishlistService) {
        this.wishlistService = wishlistService;
    }

    @RequestMapping(value = "/add-to-wishlist", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public String addToWishlist(@RequestBody WishlistProductForm wishlistProductForm){
        LOGGER.debug("Getting ajax request for adding product to wishlist = {}", wishlistProductForm);
        wishlistService.addProductByForm(wishlistProductForm);
        LOGGER.debug("End to adding product to wishlist");
        return "redirect:/product/detail/" + wishlistProductForm.getProductId();
    }

    @RequestMapping(value="/wishlist", method = RequestMethod.GET)
    public ModelAndView getWishlistPage() {
        ModelAndView modelAndView = new ModelAndView("shop/wishlist");
        Collection<Product> products = wishlistService.getProducts();
        modelAndView.addObject("products", products);
        return modelAndView;
    }

    @RequestMapping(value = "/remove-from-wishlist", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
     public String removeFromWishList(@RequestBody WishlistProductForm wishlistProductForm){
        LOGGER.debug("Getting ajax request for removing product from wishlist {} = ", wishlistProductForm);
        wishlistService.removeProduct(wishlistProductForm.getProductId());
        LOGGER.debug("End to removing product from wishlist");
        return "redirect:/wishlist";
    }

    @RequestMapping(value = "/remove-all-from-wishlist", method = RequestMethod.POST,
            produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
    public String removeAllFromWishList(@RequestBody WishlistProductForm wishlistProductForm){
        LOGGER.debug("Getting ajax request for removing all products from wishlist {} = ", wishlistProductForm);
        wishlistService.removeAllProducts();
        LOGGER.debug("End to removing all products from wishlist");
        return "redirect:/wishlist";
    }
}
