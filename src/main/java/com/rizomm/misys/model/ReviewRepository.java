package com.rizomm.misys.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

/**
 * Created by Perrine on 12/03/2015.
 */

public interface ReviewRepository extends JpaRepository<Review, Integer> {
}
