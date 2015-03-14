package com.rizomm.misys.model;

import ch.qos.logback.classic.db.names.ColumnName;

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

    @Basic
    private float price;

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Basic
    @Column(nullable = false)
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ManyToOne(optional = false)
    private Brand brand;

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    @Basic
    @Column(nullable = false)
    private String description;

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(unique=true, nullable = false)
    private String reference;

    public String getReference() {
        return reference;
    }

    public void setReference(String reference) {
        this.reference = reference;
    }

    @OneToOne(optional = false)
    private PictureLink picturelink;

    public PictureLink getPicturelink() {
        return picturelink;
    }

    public void setPicturelink(PictureLink picturelink) {
        this.picturelink = picturelink;
    }
}
