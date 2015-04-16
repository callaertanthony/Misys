package com.rizomm.misys.model.account.form;

import com.rizomm.misys.model.account.Gender;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * Created by anthonycallaert on 27/03/15.
 */
public class AccountCreateForm {
    @NotEmpty
    private String email = "";

    @NotEmpty
    @Length(min = 6, message = "Lengthhhhh !!")
    private String password = "";

    @NotEmpty
    private String passwordRepeated = "";

    @NotEmpty
    private String firstName = "";

    @NotEmpty
    private String lastName = "";

    @NotNull
    @Enumerated(EnumType.STRING)
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

    @Override
    public String toString() {
        return "CreateAccountForm{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", passwordRepeated='" + passwordRepeated + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", gender=" + gender +
                '}';
    }
}
