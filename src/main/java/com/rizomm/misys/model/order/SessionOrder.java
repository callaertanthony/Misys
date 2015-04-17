package com.rizomm.misys.model.order;

import com.rizomm.misys.model.Product;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by anthonycallaert on 17/04/15.
 */
@Component
@Scope(value = "session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SessionOrder {

    private Map<Product, Integer> productsQuantity = new HashMap<Product, Integer>();

    private String firstName;

    private String lastName;

    private String street;

    private String city;

    private String zipcode;

    private String country;

    private float price;

    public Map<Product, Integer> getProductsQuantity() {
        return productsQuantity;
    }

    public void setProductsQuantity(Map<Product, Integer> productsQuantity) {
        this.productsQuantity = productsQuantity;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
}
