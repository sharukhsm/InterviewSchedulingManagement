package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Hr;

public interface HrRepo extends CrudRepository<Hr, Integer> {

}
