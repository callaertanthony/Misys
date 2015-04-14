package com.rizomm.misys.model;

import com.rizomm.misys.constants.Constants;

import javax.persistence.*;
import java.util.List;

/**
 * Created by anthonycallaert on 12/03/15.
 */
@Entity
public class Product {
    @GeneratedValue
    @Id
    private int id;

    @OneToOne(optional = false)
    private Stock stock;
    @Basic
    private float price;
    @Basic
    @Column(nullable = false)
    private String name;
    @ManyToOne(optional = false)
    private Brand brand;
    @Basic
    @Column(nullable = false, length = 1000)
    private String description;
    @Basic
    @Column(unique = true, nullable = false)
    private String reference;
    @Basic
    @Column(nullable = false)
    private String picture;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Stock getStock() {
        return stock;
    }

    public void setStock(Stock stock) {
        this.stock = stock;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    public String getPicturelink() {
        return Constants.Product.imagePath + picture;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public boolean haveStock() {
        return this.getStock().getQuantity() > 0;
    }

    @OneToMany(targetEntity = Review.class, mappedBy = "product")
    List<Review> reviews;

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }


    @ManyToOne(optional = false)
    private Category category;

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
