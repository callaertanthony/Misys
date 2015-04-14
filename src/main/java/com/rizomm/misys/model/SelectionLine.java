package com.rizomm.misys.model;

import javax.persistence.*;

/**
 * Created by Olivier on 19/03/2015.
 */
@Entity
public class SelectionLine {
    private int id;

    @GeneratedValue
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private int quantity;

    @Basic
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    private Selection selection_id;

    @ManyToOne
    public Selection getSelection_id() {
        return selection_id;
    }

    public void setSelection_id(Selection selection_id) {
        this.selection_id = selection_id;
    }

    private Product product;

    @ManyToOne
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
