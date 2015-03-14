package com.rizomm.misys.model;

import javax.persistence.*;

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
    @Column(nullable = false)
    private String description;
    @Basic
    @Column(unique = true, nullable = false)
    private String reference;
    @OneToOne(optional = false)
    private PictureLink picturelink;

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

    public PictureLink getPicturelink() {
        return picturelink;
    }

    public void setPicturelink(PictureLink picturelink) {
        this.picturelink = picturelink;
    }
}
