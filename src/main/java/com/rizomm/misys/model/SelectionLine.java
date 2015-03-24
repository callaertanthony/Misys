package com.rizomm.misys.model;

import javax.persistence.*;

/**
 * Created by Olivier on 19/03/2015.
 */
@Entity
public class SelectionLine {
    private int id;
    private int quantity;
    private Selection selectionId;
    private Product product;

    @GeneratedValue
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @ManyToOne
    public Selection getSelectionId() {
        return selectionId;
    }

    public void setSelectionId(Selection selectionId) {
        this.selectionId = selectionId;
    }

    @ManyToOne
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
