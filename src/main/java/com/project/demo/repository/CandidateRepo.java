package com.project.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.project.demo.model.Candidate;

public interface CandidateRepo extends CrudRepository<Candidate, Integer>{

}
