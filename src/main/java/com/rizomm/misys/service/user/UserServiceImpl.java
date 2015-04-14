package com.rizomm.misys.service.user;

import com.rizomm.misys.model.account.Role;
import com.rizomm.misys.model.account.User;
import com.rizomm.misys.model.account.form.AccountCreateForm;
import com.rizomm.misys.model.account.form.AccountModifyForm;
import com.rizomm.misys.model.security.form.UserCrudCreateForm;
import com.rizomm.misys.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Optional;

/**
 * Created by anthonycallaert on 20/03/15.
 */
@Service
public class UserServiceImpl implements UserService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
    private final UserRepository userRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public Optional<User> getUserById(long id) {
        LOGGER.debug("Getting user={}", id);
        return Optional.ofNullable(userRepository.findOne(id));
    }

    @Override
    public Optional<User> getUserByEmail(String email) {
        LOGGER.debug("Getting user by email={}", email.replaceFirst("@.*", "@***"));
        return userRepository.findOneByEmail(email);
    }

    @Override
    public Collection<User> getAllUsers() {
        LOGGER.debug("Getting all users");
        return userRepository.findAll(new Sort("email"));
    }

    @Override
    public User createUser(UserCrudCreateForm form) {
        User user = new User();
        user.setEmail(form.getEmail());
        user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
        user.setRole(form.getRole());
        return userRepository.save(user);
    }

    @Override
    public User createAccount(AccountCreateForm form) {
        User user = new User();
        user.setEmail(form.getEmail());
        user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));
        user.setRole(Role.MEMBER);
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setGender(form.getGender());
        return userRepository.save(user);
    }

    @Override
    public User modifyAccount(AccountModifyForm form, User user) {
        user.setEmail(form.getEmail());

        //If user left empty the password input, keep the old hash
        if(form.getPassword() == "")
            user.setPasswordHash(user.getPasswordHash());
        else
            user.setPasswordHash(new BCryptPasswordEncoder().encode(form.getPassword()));

        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setGender(form.getGender());
        return userRepository.save(user);
    }

}
