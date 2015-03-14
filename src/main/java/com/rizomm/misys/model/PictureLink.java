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

    @GeneratedValue
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private String link;

    @Basic
    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
