package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Brand;
import com.rizomm.misys.repository.BrandRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Guillaume on 17/04/2015.
 */
@Service
public class BrandServiceImpl implements  BrandService {
    private final BrandRepository brandRepository;

    @Autowired
    public BrandServiceImpl(BrandRepository brandRepository) {
        this.brandRepository = brandRepository;
    }

    /**
     * Purpose:
     * This method will retrieve all the categories
     *
     * @return A list with all the categories
     */
    @Override
    public List<Brand> getAll() {
        return brandRepository.findAll();
    }
}
