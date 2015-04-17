package com.rizomm.misys.model.product.form;

import com.rizomm.misys.common.Constants;
import com.rizomm.misys.model.Brand;
import com.rizomm.misys.model.Category;
import com.rizomm.misys.model.Review;
import com.rizomm.misys.model.Stock;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * Created by Guillaume on 17/04/2015.
 */
public class ProductCreateForm {

    private float price;

    @NotEmpty
    private String name;

    @NotNull
    private Brand brand;

    @NotEmpty
    private String description;

    @NotEmpty
    @Length(min = 6)
    private String reference;

    @NotEmpty
    private String picture;

    @NotNull
    private Category category;

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
        return Constants.Product.IMAGE_PATH + picture;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "ProductCreateForm{" +
                "  price=" + price +
                ", name='" + name + '\'' +
                ", brand=" + brand +
                ", description='" + description + '\'' +
                ", reference='" + reference + '\'' +
                ", picture='" + picture + '\'' +
                ", category=" + category +
                '}';
    }
}
