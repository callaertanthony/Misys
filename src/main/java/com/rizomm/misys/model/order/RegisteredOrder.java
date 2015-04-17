package com.rizomm.misys.model.order;

import com.rizomm.misys.model.Product;
import com.rizomm.misys.model.account.User;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Map;

/**
 * Created by anthonycallaert on 17/04/15.
 */
@Entity
@Table
public class RegisteredOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long id;

    @ElementCollection
    private Map<Product, Integer> productsQuantity;

    @Column(nullable = false, updatable = false)
    private String firstName;

    @Column(nullable = false, updatable = false)
    private String lastName;

    @Column(nullable = false, updatable = false)
    private String street;

    @Column(nullable = false, updatable = false)
    private String city;

    @Column(nullable = false, updatable = false)
    private String zipcode;

    @Column(nullable = false, updatable = false)
    private String country;

    @Column(nullable = false, updatable = false)
    private float price = 0;

    @ManyToOne
    private User creator;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

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

    public User getCreator() {
        return creator;
    }

    public void setCreator(User creator) {
        this.creator = creator;
    }
}
