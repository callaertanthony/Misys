package com.rizomm.misys.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Olivier on 13/03/2015.
 */

public interface SelectionRepository extends JpaRepository<Selection, Integer> {
}