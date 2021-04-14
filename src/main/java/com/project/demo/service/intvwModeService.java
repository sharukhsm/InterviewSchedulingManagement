package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.adminInterviewMode;
import com.project.demo.repository.adminInterviewModeRepo;
@Transactional
@Service

public class intvwModeService {
@Autowired
private adminInterviewModeRepo intvwmrpo;


public void saveMode(adminInterviewMode intvwm) {
	int ex=Integer.parseInt(intvwm.getExperience());
	int vac=Integer.parseInt(intvwm.getVacancy());
	
	if((vac>0&&vac<=3)&&(ex<=3)) {
		intvwm.setIntvwMode("ONLINE");
		intvwmrpo.save(intvwm);
	}
	if((vac>0&&vac<=3)&&(ex>3 && ex<=6)) {
		intvwm.setIntvwMode("INPERSON");
		intvwmrpo.save(intvwm);
	}
	if((vac>0&&vac<=3)&&(ex>6)) {
		intvwm.setIntvwMode("Telephonic");
		intvwmrpo.save(intvwm);
	}
	if((vac>3&&vac<=5)&&(ex<=3)) {
		intvwm.setIntvwMode("Online Test");
		intvwmrpo.save(intvwm);
	}
	if((vac>3&&vac<=5)&&(ex>3&&ex<=6)) {
		intvwm.setIntvwMode("Online Test");
		intvwmrpo.save(intvwm);
	}
	else {
		intvwm.setIntvwMode("Telephonic");
		intvwmrpo.save(intvwm);
	}
	
	
	
}}

