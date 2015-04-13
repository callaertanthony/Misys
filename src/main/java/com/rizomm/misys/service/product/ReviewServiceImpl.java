package com.rizomm.misys.service.product;

import com.rizomm.misys.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Guillaume on 13/04/2015.
 */
@Service
public class ReviewServiceImpl implements ReviewService{
    //Link the service with the accurate repository
    private final ReviewRepository reviewRepository;
    @Autowired
    public  ReviewServiceImpl(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

}
