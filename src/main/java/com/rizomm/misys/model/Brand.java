package com.rizomm.misys.model;

import javax.persistence.*;

/**
 * Created by Guillaume on 3/12/2015.
 */
@Entity
public class Brand {
    private int id;

    @Basic
    @Column(unique = true, nullable = false)
    private String name;

    public String getName() {
        return name;
    }

    @GeneratedValue
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }
}
