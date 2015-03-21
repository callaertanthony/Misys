package com.rizomm.misys.service.user;

import com.rizomm.misys.model.security.User;
import com.rizomm.misys.model.form.UserCreateForm;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Optional;

@Service
public interface UserService {

    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    Collection<User> getAllUsers();

    User create(UserCreateForm form);

}
