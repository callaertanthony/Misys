package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Brand;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Guillaume on 17/04/2015.
 */
@Service
public interface BrandService {
    List<Brand> getAll();
}
