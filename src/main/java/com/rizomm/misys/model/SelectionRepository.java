package com.rizomm.misys.model;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Olivier on 13/03/2015.
 */

@Transactional
public interface SelectionRepository extends CrudRepository<Selection, Integer> {
}