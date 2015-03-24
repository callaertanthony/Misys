package com.rizomm.misys.controller;

import com.rizomm.misys.model.Category;
import com.rizomm.misys.model.CategoryRepository;
import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

/**
 * Created by Guillaume on 3/10/2015.
 */
@Controller
@RequestMapping("/product")
public class ProductController implements ErrorController {

    @Autowired
    private ProductRepository _productRepository;
    @Autowired
    private CategoryRepository _categoryRepository;
    /**
     * This method will retrieve the product & category from the database and call the detail JSP page.
     * If the product or category can't be found, the 404 page will be shown to the user.
     *
     * @param id The product Id (will be matched with the database)
     * @return  Call the detail JSP with the product object if it was found into the database. Otherwise, the 404 JSP
     *          is called.
     */
    @RequestMapping(value="/detail/{id}", method = RequestMethod.GET)
    public ModelAndView detailProduct(@PathVariable int id) {
        try{
            Collection<String> listCategories = new ArrayList<>();
            Collection<String> listLinkCategories = new ArrayList<>();
            Product product = _productRepository.findOne(id);

            //Get Id of the parent category to make breadcrumb
            int idParent = product.getCategory().getIdParent();
            Category categoryParent = _categoryRepository.findOne(idParent);
            listCategories.add(product.getCategory().getCategory());                //Add the first category in list
            listLinkCategories.add(product.getCategory().getCategoryLink());
            System.out.println("Nom de la premiére categorie : " + product.getCategory().getCategory());
            System.out.println("ID de la premiére categorie : " + product.getCategory().getId());

            //Loop to add all the parents categories in list
            while (idParent != 0) {
                System.out.println("Nom de la categorie suivante : " + categoryParent.getCategory());
                System.out.println("ID de la categorie suivante : " + categoryParent.getId());
                if (null == product || null == categoryParent)
                    return new ModelAndView("404");

                listCategories.add(categoryParent.getCategory());                   //Add parents categories in list
                listCategories.add(categoryParent.getCategoryLink());
                idParent = categoryParent.getIdParent();
                categoryParent = _categoryRepository.findOne(idParent);

            }
            for (int i=0 ; i>=listCategories.size(); i++) {
                System.out.println("liste de categories : "+listCategories.toString());
            }
            //Set the data about category et product details in the model and view for the JSP
            ModelAndView modelAndView = new ModelAndView("product/detail", "product", product);
            modelAndView.addObject("categories", listCategories); //On ajoute l'objet listCategories à la model & view retournée à notre JSP
            modelAndView.addObject("link", listLinkCategories);
            return  modelAndView;

        } catch (IllegalArgumentException e) {
            return new ModelAndView("404");
        }
    }
        @Override
    public String getErrorPath() {
        return "/error";
    }
}