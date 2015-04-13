package com.rizomm.misys.controller;

import com.rizomm.misys.model.*;
import com.rizomm.misys.repository.*;
import com.rizomm.misys.repository.SelectionLineRepository;
import com.rizomm.misys.repository.SelectionRepository;
import com.rizomm.misys.service.product.CategoryService;
import com.rizomm.misys.service.product.ProductService;
import com.rizomm.misys.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

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
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private UserService userService;
    @Autowired
    private SelectionRepository _selectionRepository;
    @Autowired
    private SelectionLineRepository _selectionLineRepository;
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
            Product product = productService.getOneById(id)
                .orElseThrow(() -> new NoSuchElementException(String.format("Product=%s not found", id)));
            Set<Product> products = productService.getFirst10ByBrand(product.getBrand());
            if (products.contains(product))
            {
                products.remove(product);
            }
            while (products.size()>9)
            {
                products.remove(products.size()-1);
            }

            Category category = product.getCategory();
            boolean run = true;
            while (run) {
                if(null != category)
                    listCategories.add(category); //Add categoryname in list

                if(category.getIdParent() == 0) //
                    run = false;
                else
                    category = categoryService.getOneById(category.getIdParent()) //take parent data
                        .orElseThrow(() -> new NoSuchElementException(String.format("Category=%s not found", id)));
            }
            Collections.reverse(listCategories);



            ModelAndView mNv = new ModelAndView("product/detail");
            mNv.addObject("product", product);
            mNv.addObject("categories", listCategories);
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

            System.out.println("User : " + id_user);
            System.out.println("Product : " + id_product);
            System.out.println("Quantity : " + quantity);

            User user = userService.getOneById(id_user)
                .orElseThrow(() -> new NoSuchElementException(String.format("User=%s not found", id_user)));
            Product product = productService.getOneById(id_product)
                .orElseThrow(() -> new NoSuchElementException(String.format("Product=%s not found", id_product)));

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

            System.out.println("User : " + id_user);
            System.out.println("Product : " + id_product);
            System.out.println("Quantity : " + quantity);

            User user = userService.getOneById(id_user)
                    .orElseThrow(() -> new NoSuchElementException(String.format("User=%s not found", id_user)));
            Product product = productService.getOneById(id_product)
                    .orElseThrow(() -> new NoSuchElementException(String.format("Product=%s not found", id_product)));

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

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchResult(@RequestParam(required = false) final String searchInput) {
        ModelAndView mNv = new ModelAndView("product/search");

        String[] keysSplit = searchInput.split(" ");

        List<Product> products = new ArrayList<>(productService.getAllByNameContaining(keysSplit[0]));

        //recherche par terme dans le nom
        for (String key : keysSplit) {
            Set<Product> productsByName = productService.getAllByNameContaining(key);
            Iterator<Product> prod = products.iterator();
            while (prod.hasNext()) {
                Product p = prod.next();
                if (!productsByName.contains(p)) {
                    prod.remove();
                }
            }
        }

        // recherche par ref
        Set<Product> productByRef = productService.getAllByReferenceContaining(searchInput);
        for (Product prod : productByRef) {
            if (!products.contains(prod)) {
                products.add(prod);
            }
        }

        //recherche par la description
        Set<Product> productsByDesc = productService.getAllByDescriptionContaining(keysSplit[0]);
        for (String key : keysSplit) {
            Set<Product> productsByD = productService.getAllByDescriptionContaining(key);
            Iterator<Product> prod = productsByDesc.iterator();
            while (prod.hasNext()) {
                Product p = prod.next();
                if (!productsByD.contains(p)) {
                    prod.remove();
                }
            }
        }
        for (Product prod : productsByDesc) {
            if (!products.contains(prod)) {
                products.add(prod);
            }
        }

        List<Brand> brands = new ArrayList<>();
        for (Product p : products) {
            if (!brands.contains(p.getBrand())) {
                brands.add(p.getBrand());
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