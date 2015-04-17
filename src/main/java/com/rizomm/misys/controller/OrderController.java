package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.order.RegisteredOrder;
import com.rizomm.misys.model.order.form.AddressForm;
import com.rizomm.misys.model.order.form.AddressFormValidator;
import com.rizomm.misys.service.CartService;
import com.rizomm.misys.service.OrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.NoSuchElementException;

/**
 * Created by anthonycallaert on 17/04/15.
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderController.class);
    private final CartService cartService;
    private final OrderService orderService;
    private final AddressFormValidator addressFormValidator;

    @Autowired
    public OrderController(CartService cartService, OrderService orderService, AddressFormValidator addressFormValidator) {
        this.cartService = cartService;
        this.orderService = orderService;
        this.addressFormValidator = addressFormValidator;
    }

    @InitBinder("addressForm")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(addressFormValidator);
    }

    @RequestMapping(value = "/address", method = RequestMethod.GET)
    @PreAuthorize("isAuthenticated()")
    public ModelAndView getOrderPage(){
        LOGGER.debug("Getting order address page.");
        ModelAndView mvn = new ModelAndView("shop/order/address");
        HashMap<Product, Integer> products = cartService.getProducts();
        if(products.size() == 0){
            return new ModelAndView("redirect:/");
        }
        orderService.setProducts(products);
        mvn.addObject("addressForm", new AddressForm());
        return mvn;
    }

    @RequestMapping(value = "/address", method = RequestMethod.POST)
    @PreAuthorize("isAuthenticated()")
    public String handleAddressChoice(@Valid @ModelAttribute("addressForm") AddressForm form, BindingResult bindingResult){
        LOGGER.debug("Handle order address.");
        if(bindingResult.hasErrors()){
            return "order/address";
        }
        orderService.setAddressByForm(form);
        RegisteredOrder registeredOrder = orderService.save();

        return "redirect:/order/view/" + registeredOrder.getId();
    }

    @PreAuthorize("isAuthenticated()")
    @RequestMapping("/view/{id}")
    public ModelAndView getOrderView(@PathVariable long id){
        System.out.println("IN getOrderView()     !!!!!!");
        int idInt = (int) id;
        Integer idInteger = new Integer(idInt);
        LOGGER.debug("Getting view for order = {}", id);
        return new ModelAndView("/shop/order/view", "order", orderService.getRegisteredOrderById(idInteger)
                .orElseThrow(() -> new NoSuchElementException(String.format("Order=%s not found", id)))
        );
    }
}
