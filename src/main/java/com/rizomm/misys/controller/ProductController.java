package com.rizomm.misys.controller;

import com.rizomm.misys.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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
    @Autowired
    private UserRepository _userRepository;
    @Autowired
    private SelectionRepository _selectionRepository;
    @Autowired
    private SelectionLineRepository _selectionLineRepository;
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
            List<Product> products = _productRepository.findAllByBrand(product.getBrand());
            products.remove(product);

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

    @RequestMapping(value = "/addtowishlist", method = RequestMethod.POST)
    public void addToWishlist(HttpServletRequest req) {
        try {
            int id_user = Integer.parseInt(req.getParameter("id_user"));
            int id_product = Integer.parseInt(req.getParameter("id_product"));
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            int type = 1;

            User user = _userRepository.findOne(id_user);
            Product product = _productRepository.findOne(id_product);

            SelectionLine selectionLine = new SelectionLine();
            selectionLine.setProduct(product);
            selectionLine.setQuantity(quantity);
            List<SelectionLine> list = new LinkedList<>();

            _selectionRepository.save(user.wishList());
            _selectionLineRepository.save(selectionLine);

            list.add(selectionLine);
            user.wishList().setSelectionLines(list);

            _selectionRepository.save(user.wishList());
            _selectionLineRepository.save(selectionLine);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @RequestMapping(value = "/addtocart", method = RequestMethod.POST)
    public void addToCart(HttpServletRequest req) {
        try {
            int id_user = Integer.parseInt(req.getParameter("id_user"));
            int id_product = Integer.parseInt(req.getParameter("id_product"));
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            int type = 2;

            User user = _userRepository.findOne(id_user);
            Product product = _productRepository.findOne(id_product);

            SelectionLine selectionLine = new SelectionLine();
            selectionLine.setProduct(product);
            selectionLine.setQuantity(quantity);
            List<SelectionLine> list = new LinkedList<>();

            _selectionRepository.save(user.cart());
            _selectionLineRepository.save(selectionLine);

            list.add(selectionLine);
            user.cart().setSelectionLines(list);

            _selectionRepository.save(user.cart());
            _selectionLineRepository.save(selectionLine);


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}