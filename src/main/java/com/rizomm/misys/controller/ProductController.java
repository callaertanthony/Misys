package com.rizomm.misys.controller;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by Guillaume on 3/10/2015.
 */
@Controller
@RequestMapping("/product")
public class ProductController implements ErrorController {

    @Autowired
    private ProductRepository _productRepository;

    /**
     * This method will retrieve the product from the database and call the detail JSP page.
     * If the product can't be found, the 404 page will be shown to the user.
     *
     * @param id The product Id (will be matched with the database)
     * @return  Call the detail JSP with the product object if it was found into the database. Otherwise, the 404 JSP
     *          is called.
     */
    @RequestMapping(value="/detail/{id}", method = RequestMethod.GET)
    public ModelAndView detailProduct(@PathVariable int id){
        try {
            Product product = _productRepository.findOne(id);
            Iterable<Product> allProducts = _productRepository.findAll();
            List<Product> products = new LinkedList<>();

            for(Product p:allProducts) {
                if (product.getBrand() == p.getBrand() && product!=p)
                {
                    products.add(p);
                }
            }

            ModelAndView mNv = new ModelAndView("product/detail");
            mNv.addObject("product", product);
            mNv.addObject("productsRecommended", products);
            if (null == product)
                return new ModelAndView("404");
            return mNv;

        } catch (IllegalArgumentException e) {
            return new ModelAndView("404");
        }
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}