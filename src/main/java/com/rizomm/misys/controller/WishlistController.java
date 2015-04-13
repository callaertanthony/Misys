package com.rizomm.misys.controller;

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
}
