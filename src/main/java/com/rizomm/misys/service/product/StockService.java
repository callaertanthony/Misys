package com.rizomm.misys.service.product;

/**
 * Created by Guillaume on 17/04/2015.
 */

import com.rizomm.misys.model.Stock;
import org.springframework.stereotype.Service;

@Service
public interface StockService {
    Stock createStock(Stock stock);
}
