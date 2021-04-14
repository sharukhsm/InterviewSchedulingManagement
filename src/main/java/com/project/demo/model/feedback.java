package com.project.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class feedback {
	@Id
	private String speedOfService;
	private String helpFullness;
	private String experience;
	public String getSpeedOfService() {
		return speedOfService;
	}
	public void setSpeedOfService(String speedOfService) {
		this.speedOfService = speedOfService;
	}
	public String getHelpFullness() {
		return helpFullness;
	}
	public void setHelpFullness(String helpFullness) {
		this.helpFullness = helpFullness;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	@Override
	public String toString() {
		return "feedback [speedOfService=" + speedOfService + ", helpFullness=" + helpFullness + ", experience="
				+ experience + "]";
	}

}
