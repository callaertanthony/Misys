package com.rizomm.misys.model;

import javax.persistence.*;

/**
 * Created by Perrine on 12/03/2015.
 */
@Entity
public class Review {
    @GeneratedValue
    @Id
    private int id;

    @Basic
    private String comment;

    @Basic
    private int note;

    @ManyToOne
    private Product product;

    @ManyToOne
    private User user;

    //GETTERS ET SETTERS
    public String getComment() {
        return comment;
    }

    public void setComment(String review) {
        this.comment = review;
    }

    public int getId() {
        return id;
    }

    public int getNote() {
        return note;
    }

    public void setNote(int note) {
        this.note = note;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
