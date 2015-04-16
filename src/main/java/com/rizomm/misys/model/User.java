package com.rizomm.misys.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by anthonycallaert on 05/03/15.
 */
@Entity
public class User {
    private int id;
    private String firstName;
    private String lastName;
    private String nickname;
    private String email;
    private int age;

    @Id
    @Column(nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(nullable = false, insertable = true, updatable = true, length = 100)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(nullable = false, insertable = true, updatable = true, length = 100)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(nullable = false, insertable = true, updatable = true, length = 100)
    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Basic
    @Column(nullable = false, insertable = true, updatable = true, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(nullable = false, insertable = true, updatable = true)
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (age != user.age) return false;
        if (id != user.id) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (firstName != null ? !firstName.equals(user.firstName) : user.firstName != null) return false;
        if (lastName != null ? !lastName.equals(user.lastName) : user.lastName != null) return false;
        if (nickname != null ? !nickname.equals(user.nickname) : user.nickname != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (firstName != null ? firstName.hashCode() : 0);
        result = 31 * result + (lastName != null ? lastName.hashCode() : 0);
        result = 31 * result + (nickname != null ? nickname.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + age;
        return result;
    }

    private List<Selection> selections;

    @OneToMany
    public List<Selection> getSelections() {
        return selections;
    }

    public void setSelections(List<Selection> selections) {
        this.selections = selections;
    }

    public Selection wishList()
    {
        for(Selection selection: selections){
            if (selection.getType() == 1){
                return selection;
            }
        }
        Selection wishlist = new Selection();
        wishlist.setType(1);
        wishlist.setUser_id(this);

        selections.add(wishlist);
        return wishlist;
    }

    public Selection cart()
    {
        for(Selection selection: selections){
            if (selection.getType() == 2){
                return selection;
            }
        }
        Selection cart = new Selection();
        cart.setType(2);
        cart.setUser_id(this);

        selections.add(cart);
        return cart;
    }
}