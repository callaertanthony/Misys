package com.rizomm.misys.service.product;

import com.rizomm.misys.model.Stock;
import com.rizomm.misys.repository.StockRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Guillaume on 17/04/2015.
 */
@Service
public class StockServiceImpl implements StockService {
    private final StockRepository stockRepository;

    @Autowired
    public StockServiceImpl(StockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }


    @Override
    public Stock createStock(Stock stock) {
        return stockRepository.save(stock);
    }
}
