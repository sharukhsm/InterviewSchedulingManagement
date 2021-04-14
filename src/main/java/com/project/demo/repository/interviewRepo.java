package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;


import com.project.demo.model.InterviewResult;

public interface interviewRepo extends CrudRepository<InterviewResult, String> {

}
