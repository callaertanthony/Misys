package com.rizomm.misys.model;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by anthonycallaert on 05/03/15.
 */
@Transactional
public interface UserRepository extends CrudRepository<User, Integer> {

}
