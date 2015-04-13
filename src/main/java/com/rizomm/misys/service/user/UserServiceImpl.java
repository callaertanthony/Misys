package com.rizomm.misys.service.user;

import com.rizomm.misys.model.User;
import com.rizomm.misys.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

/**
 * Created by Guillaume on 13/04/2015.
 */
@Service
public class UserServiceImpl implements UserService {
    //Link the service with the accurate repository
    private final UserRepository userRepository;
    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public Optional<User> getOneById(int id) {
        return Optional.ofNullable(userRepository.findOne(id));
    }

    @Override
    public Optional<User> getUserByEmail(String mail) {
        return null; ///TODO to implement
    }

    @Override
    public Set<User> getAllUsers() {
        Set<User> users = new HashSet<>(userRepository.findAll());
        return users;
    }
}
