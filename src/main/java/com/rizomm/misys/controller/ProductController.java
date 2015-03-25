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
import sun.util.resources.th.CalendarData_th;

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
            List<Category> listCategories = new ArrayList<>();              //should contain the name of categories
            Product product = _productRepository.findOne(id);

            Category category = product.getCategory();
            boolean run = true;
            while (run) {
                //ajouter la catégorie
                //Regarder si y'a un papa
                //Si papa -> on fait run = false pour quitter la klebou
                //Si pas de papa -> on récupère maman (la catégorie, payday!)
                
                if(null != category)
                    listCategories.add(category); //On ajoute la catégorie à la liste

                if(category.getIdParent() == 0) //Plus de catégorie parent, on se casse
                    run = false;
                else
                    category = _categoryRepository.findOne(category.getIdParent()); //On récupère papa & maman
            }
            Collections.reverse(listCategories);
            //Set the data about category et product details in the model and view for the JSP
            ModelAndView modelAndView = new ModelAndView("product/detail", "product", product);
            modelAndView.addObject("categories", listCategories);                        //add list of category in M&V
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