package com.rizomm.misys.model.account.form;

import com.rizomm.misys.model.account.Gender;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * Created by anthonycallaert on 29/03/15.
 */
public class AccountModifyForm {

    @NotEmpty
    private String email = "";

    private String password;

    private String passwordRepeated;

    private String firstName = "";

    private String lastName = "";

    private Gender gender = Gender.MAN;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordRepeated() {
        return passwordRepeated;
    }

    public void setPasswordRepeated(String passwordRepeated) {
        this.passwordRepeated = passwordRepeated;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }


    public AccountModifyForm() {
        this.email = "";
        this.password = "";
        this.passwordRepeated = "";
        this.firstName = "";
        this.lastName = "";
    }


    public AccountModifyForm(String email, String firstName, String lastName, Gender gender) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "AccountModifyForm{" +
                "email='" + email + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", gender=" + gender +
                '}';
    }
}
