package com.project.demo.service;

import com.project.demo.model.Candidate;
import com.project.demo.repository.CandidateRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Transactional
@Service

public class candidateServiceImpl implements candidateService {

	@Autowired
	private CandidateRepo candidaterepo;

	
   @Override
	public  Iterable<Candidate> findAll()  {
	return candidaterepo.findAll();
	
   }
  
}