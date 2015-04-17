package com.rizomm.misys.repository;

import com.rizomm.misys.model.Review;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

/**
 * Created by Perrine on 12/03/2015.
 */

@Transactional
public interface ReviewRepository extends CrudRepository<Review, Integer> {
}
