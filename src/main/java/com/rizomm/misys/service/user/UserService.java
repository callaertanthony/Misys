package com.rizomm.misys.service.user;

import com.rizomm.misys.model.User;

import java.util.Collection;
import java.util.Optional;
import java.util.Set;

/**
 * Created by Guillaume on 13/04/2015.
 *
 * Purpose: This service allow you to interact with your stored data.
 * You can use this service to request into the user data (stored into the user table into the database)
 */
public interface UserService {
    Optional<User> getOneById(int id);

    Optional<User> getUserByEmail(String mail);

    Set<User> getAllUsers();


}
