package com.rizomm.misys.repository;

import com.rizomm.misys.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by anthonycallaert on 05/03/15.
 *
 */

public interface UserRepository extends JpaRepository<User, Integer> {
}
