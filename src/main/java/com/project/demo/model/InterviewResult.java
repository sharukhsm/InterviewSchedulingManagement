package com.project.demo.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="interview")
public class InterviewResult {
	
	@Id
	private String requirementId;
	
	private String marks;
	
	private String timeOfJoining;
	
    private String ranks;
	
    private String result;
	public String getRequirementId() {
		return requirementId;
	}
	public void setRequirementId(String requirementId) {
		this.requirementId = requirementId;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}
	public String getTimeOfJoining() {
		return timeOfJoining;
	}
	public void setTimeOfJoining(String timeOfJoining) {
		this.timeOfJoining = timeOfJoining;
	}
	public String getRanks() {
		return ranks;
	}
	public void setRanks(String ranks) {
		this.ranks = ranks;
	}
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	@Override
	public String toString() {
		return "InterviewResult [requirementId=" + requirementId + ", marks=" + marks + ", timeOfJoining="
				+ timeOfJoining + ", ranks=" + ranks + ", result=" + result + "]";
	}
	
    
}
