package com.rizomm.misys.controller.crud;

import com.rizomm.misys.model.Category;
import com.rizomm.misys.model.product.form.ProductCreateForm;
import com.rizomm.misys.model.product.form.ProductCreateFormValidator;
import com.rizomm.misys.service.product.BrandService;
import com.rizomm.misys.service.product.CategoryService;
import com.rizomm.misys.service.product.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * Created by Guillaume on 17/04/2015.
 */

@Controller
@RequestMapping("/admin")
public class AdminController {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserCrudController.class);
    private final ProductService productService;
    private final CategoryService categoryService;
    private final BrandService brandService;
    private final ProductCreateFormValidator productCreateFormValidator;

    @Autowired
    public AdminController(ProductService productService, CategoryService categoryService, BrandService brandService, ProductCreateFormValidator productCreateFormValidator) {
        this.productService = productService;
        this.categoryService = categoryService;
        this.brandService = brandService;
        this.productCreateFormValidator = productCreateFormValidator;
    }

    @InitBinder("form")
    public void initBinder(WebDataBinder binder) {
        binder.addValidators(productCreateFormValidator);
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView getProductCreatePage() {
        LOGGER.debug("Getting product create form");
        ModelAndView modelAndView = new ModelAndView("admin/product/create");
        modelAndView.addObject("categories",categoryService.getAll());
        modelAndView.addObject("brands",brandService.getAll());
        modelAndView.addObject("form", new ProductCreateForm());
        return modelAndView;
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView handleUserCreateForm(@Valid @ModelAttribute("form") ProductCreateForm form, BindingResult bindingResult) {
        LOGGER.debug("Processing product create form={}, bindingResult={}", form, bindingResult);
        ModelAndView modelAndView = new ModelAndView("/admin/product/create");
        if (bindingResult.hasErrors()) {
            // failed validation
            return modelAndView;
        }
        try {
            productService.createProduct(form);
        } catch (DataIntegrityViolationException e) {
            // probably name already exists - very rare case when multiple admins are adding same user
            // at the same time and form validation has passed for more than one of them.
            LOGGER.warn("Exception occurred when trying to save the product, assuming duplicate name", e);
            bindingResult.reject("name.exists", "Name already exists");
            return modelAndView;
        }
        // ok, redirect
        modelAndView.setViewName("redirect:/");
        return modelAndView;
    }

}
