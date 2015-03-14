package com.rizomm.misys.model;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Franck on 13/03/2015.
 */
@Entity
public class PictureLink {
    private int id;
    private String link;

    @GeneratedValue
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    public String getLink() {
        return "/assets/images/product-details/" + link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
