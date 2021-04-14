package com.project.demo.model;
import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Hradd {

	//primary key 
	@Id
	private int hrid;
	private int vacanci;
	private  int experience;
	private String mode;
	private String lastdate;
	private String domain;
	public int getHrid() {
		return hrid;
	}
	public void setHrid(int hrid) {
		this.hrid = hrid;
	}
	public int getVacanci() {
		return vacanci;
	}
	public void setVacanci(int vacanci) {
		this.vacanci = vacanci;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;}

	
	public String getMode() {
		return mode;
	}
	public void setMode(String mode) {
		
		this.mode = mode;
		
	}

@Override
public String toString() {
	return "Hradd [hrid=" + hrid + ", vacanci=" + vacanci + ", experience=" + experience + "]";
}
	
	
	public void modeof(int experience) {
		if(experience <2) {
			setMode("written");
			
		}
		else if(experience>2 && experience<6) {
			setMode("personal interview");
			
		}
		else
			setMode("telephonic");
	}
	public String getLastdate() {
		return lastdate;
	}
	public void setLastdate(String lastdate) {
		this.lastdate = lastdate;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}

}
