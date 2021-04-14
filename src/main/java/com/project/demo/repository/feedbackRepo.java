package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.feedback;

public interface feedbackRepo extends CrudRepository<feedback, String> {

}
