package com.rizomm.misys.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by anthonycallaert on 05/03/15.
 */

public interface UserRepository extends JpaRepository<User, Integer> {

}
