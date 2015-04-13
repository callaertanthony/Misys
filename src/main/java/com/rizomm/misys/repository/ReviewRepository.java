package com.rizomm.misys.repository;

import com.rizomm.misys.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Perrine on 12/03/2015.
 */

public interface ReviewRepository extends JpaRepository<Review, Integer> {
}
