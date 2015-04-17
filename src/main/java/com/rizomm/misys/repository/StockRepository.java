package com.rizomm.misys.repository;

import com.rizomm.misys.model.Stock;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Guillaume on 17/04/2015.
 */
public interface StockRepository extends JpaRepository<Stock, Integer> {
}
