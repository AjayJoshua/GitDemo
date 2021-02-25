package com.cts.p027.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
public class Employer {
	private int id;
	private String jobdescription;
	private String skillset;
	private String role;
	private float experience;
	private int numberofresources;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date expecteddoj;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getJobdescription() {
		return jobdescription;
	}
	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}
	public String getSkillset() {
		return skillset;
	}
	public void setSkillset(String skillset) {
		this.skillset = skillset;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public float getExperience() {
		return experience;
	}
	public void setExperience(float experience) {
		this.experience = experience;
	}
	public int getNumberofresources() {
		return numberofresources;
	}
	public void setNumberofresources(int numberofresources) {
		this.numberofresources = numberofresources;
	}
	public Date getExpecteddoj() {
		return expecteddoj;
	}
	public void setExpecteddoj(Date expecteddoj) {
		this.expecteddoj = expecteddoj;
	}
	@Override
	public String toString() {
		return "Employer [id=" + id + ", jobdescription=" + jobdescription + ", skillset=" + skillset + ", role=" + role
				+ ", experience=" + experience + ", numberofresources=" + numberofresources + ", expecteddoj="
				+ expecteddoj + "]";
	}
	


}
