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

    private User userId;

    @ManyToOne
    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
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
