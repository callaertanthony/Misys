package com.rizomm.misys.controller;

import com.rizomm.misys.model.Brand;
import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Iterator;
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
            if (null == product)
                return new ModelAndView("404");
            return new ModelAndView("product/detail", "product", product);

        } catch (IllegalArgumentException e) {
            return new ModelAndView("404");
        }
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchResult(@RequestParam(required = false) final String searchInput) {
        ModelAndView mNv = new ModelAndView("product/search");
        List<Product> products = _productRepository.findAll();
        Iterator<Product> prod = products.iterator();
        String[] keysSplit = searchInput.split(" ");
        List<Brand> brands = new ArrayList<>();
        while (prod.hasNext()) {
            Product p = prod.next();
            Boolean notfind = true;
            for (String key : keysSplit) {
                if (p.getName().toLowerCase().contains(key.toLowerCase())) {
                    notfind = false;
                    break;
                }
            }
            if (notfind) {
                prod.remove();
            } else {
                if (!brands.contains(p.getBrand())) {
                    brands.add(p.getBrand());
                }
            }
        }
        mNv.addObject("products", products);
        mNv.addObject("stringTest", searchInput);
        mNv.addObject("brands", brands);

        if (products.size() == 1) {
            return new ModelAndView("product/detail", "product", products.get(0));
        }


        return mNv;
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}