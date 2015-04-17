package com.rizomm.misys.repository;

import com.rizomm.misys.model.order.RegisteredOrder;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by anthonycallaert on 17/04/15.
 */
public interface OrderRepository extends JpaRepository<RegisteredOrder, Integer> {

}
