package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class adminInterviewMode {
	@Id
	private String vacancy;
	private String experience;
	private String intvwMode;
	public String getVacancy() {
		return vacancy;
	}
	public void setVacancy(String vacancy) {
		this.vacancy = vacancy;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getIntvwMode() {
		return intvwMode;
	}
	public void setIntvwMode(String intvwMode) {
		this.intvwMode = intvwMode;
	}
	
		
	

}
