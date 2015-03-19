package com.rizomm.misys.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Olivier on 19/03/2015.
 */
@Entity
public class Selection {
    private int id;

    @GeneratedValue
    @Id
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    private int type;

    @Basic
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    private User user_id;

    @ManyToOne
    public User getUser_id() {
        return user_id;
    }

    public void setUser_id(User user_id) {
        this.user_id = user_id;
    }

    private List<SelectionLine> selectionLines;

    @OneToMany
    public List<SelectionLine> getSelectionLines() {
        return selectionLines;
    }

    public void setSelectionLines(List<SelectionLine> selectionLines) {
        this.selectionLines = selectionLines;
    }
}
