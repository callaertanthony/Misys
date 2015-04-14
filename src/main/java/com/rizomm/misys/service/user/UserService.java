package com.rizomm.misys.service.user;

import com.rizomm.misys.model.account.User;
import com.rizomm.misys.model.account.form.AccountCreateForm;
import com.rizomm.misys.model.account.form.AccountModifyForm;
import com.rizomm.misys.model.security.form.UserCrudCreateForm;

import java.util.Collection;
import java.util.Optional;

/**
 * Created by anthonycallaert on 19/03/15.
 */
public interface UserService {
    Optional<User> getUserById(long id);

    Optional<User> getUserByEmail(String email);

    Collection<User> getAllUsers();

    User createUser(UserCrudCreateForm form);

    User createAccount(AccountCreateForm form);

    User modifyAccount(AccountModifyForm form, User user);
}
