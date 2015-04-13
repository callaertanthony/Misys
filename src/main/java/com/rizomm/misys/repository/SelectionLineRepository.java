package com.rizomm.misys.repository;

import com.rizomm.misys.model.SelectionLine;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Olivier on 13/03/2015.
 */

public interface SelectionLineRepository extends JpaRepository<SelectionLine, Integer> {
}