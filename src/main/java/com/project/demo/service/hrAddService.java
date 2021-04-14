package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.Hradd;


import com.project.demo.repository.HraddRepo;
@Transactional
@Service
public class hrAddService {
	
	@Autowired
	private HraddRepo hraddRepo;
	public   Iterable<Hradd> getAll() {
		return hraddRepo.findAll();
	}


}
